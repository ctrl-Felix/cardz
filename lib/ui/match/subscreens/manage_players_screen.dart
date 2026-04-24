import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:cardcrew/application/service/match/match_service.dart';
import 'package:cardcrew/application/service/player/player_service.dart';
import 'package:cardcrew/domain/participant/participant.dart';
import 'package:cardcrew/ui/match/controller/match_controller.dart';
import 'package:cardcrew/ui/shared/ui_app_sub_page.dart';
import 'package:cardcrew/ui/shared/ui_card.dart';
import 'package:cardcrew/ui/shared/ui_carded_list.dart';
import 'package:cardcrew/ui/shared/ui_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/player/player.dart';

class ManagePlayersScreen extends ConsumerStatefulWidget {
  final String matchId;
  const ManagePlayersScreen({super.key, required this.matchId});

  @override
  ConsumerState createState() => _ManagePlayersScreenState();
}

class _ManagePlayersScreenState extends ConsumerState<ManagePlayersScreen> {
  String userSearchTerm = "";
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(matchServiceProvider(widget.matchId).notifier).load();
      ref.read(playerServiceProvider.notifier).loadPlayers();
    });
  }

  void _toggleParticipantVisibility(Participant p) {
    final notifier = ref.read(matchServiceProvider(widget.matchId).notifier);
    notifier.changePlayerVisibility(p.player.id, !p.isHidden);
  }

  void _deleteParticipant(Participant p) {
    if (p.isDeletable) {
      final notifier = ref.read(matchServiceProvider(widget.matchId).notifier);
      notifier.removeParticipant(p);
    }
  }

  void _addParticipant(Player p) {
    final notifier = ref.read(matchServiceProvider(widget.matchId).notifier);
    notifier.addParticipant(p);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(matchServiceProvider(widget.matchId));
    final playersNotifier = ref.read(playerServiceProvider.notifier);
    final playersState = ref.read(playerServiceProvider);
    final filteredPlayers = playersNotifier.filteredPlayersList(userSearchTerm);
    final playersinMatch = state.players;
    return UiAppSubPage(
      title: "Manage Players",
      child: ListView(
        children: [
          UiText.title("Info"),
          const SizedBox(height: 8),
          UiCard(
            child: UiText.body(
              "You can add players at any time. Once a player participated in a round you can't remove him anymore. You can hide players at any time and they won't show up when adding new rounds.",
            ),
          ),
          const SizedBox(height: 8),

          UiText.title("Players"),
          const SizedBox(height: 8),
          UiCardedList(
            items: state.participants.map((p) {
              IconData icon;
              VoidCallback onTap;
              Color? textColor;
              Color? iconColor;

              if (p.isDeletable) {
                icon = CupertinoIcons.trash;
                onTap = () => _deleteParticipant(p);
                iconColor = CupertinoColors.destructiveRed;
              } else if (p.isHidden) {
                icon = CupertinoIcons.eye_slash;
                textColor = CupertinoColors.inactiveGray;
                onTap = () => _toggleParticipantVisibility(p);
              } else {
                icon = CupertinoIcons.eye;
                onTap = () => _toggleParticipantVisibility(p);
              }

              return UiCardedListItem(
                title: p.player.name,
                color: textColor,
                trailing: AdaptiveButton.icon(
                  onPressed: onTap,
                  icon: icon,
                  iconColor: iconColor,
                  style: AdaptiveButtonStyle.plain,
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 8),
          UiText.title("Add Players"),
          const SizedBox(height: 8),
          if (playersState.players.length != playersinMatch.length) ...[
            AdaptiveTextField(
              style: TextStyle(fontSize: 18),
              cupertinoDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: CupertinoColors.white,
              ),
              padding: EdgeInsets.all(16),
              placeholder: 'Search Player....',
              onChanged: (value) {
                setState(() {
                  userSearchTerm = value;
                });
              },
            ),
            const SizedBox(height: 16),
            if (filteredPlayers.isNotEmpty)
              UiCardedList(
                items: filteredPlayers
                    .where((p) => !playersinMatch.contains(p))
                    .map(
                      (p) => UiCardedListItem(
                        title: p.name,
                        trailing: AdaptiveButton.icon(
                          onPressed: () {
                            _addParticipant(p);
                          },
                          icon: CupertinoIcons.add,
                          style: AdaptiveButtonStyle.plain,
                        ),
                      ),
                    )
                    .toList(),
              ),

            if (filteredPlayers.isEmpty)
              UiCard(child: UiText.body("No players matching your search")),
          ],
          if (playersState.players.length == playersinMatch.length)
            UiCard(
              child: UiText.body("You already added all players to this match"),
            ),
        ],
      ),
    );
  }
}
