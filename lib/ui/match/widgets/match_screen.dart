import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:doublehead/application/service/match/matches_service.dart';
import 'package:doublehead/application/service/match_round/match_round_service.dart';
import 'package:doublehead/ui/match/controller/match_controller.dart';
import 'package:doublehead/ui/match/widgets/components/rounds_score_table.dart';
import 'package:doublehead/ui/shared/ui_app_sub_page.dart';
import 'package:doublehead/ui/shared/ui_card.dart';
import 'package:doublehead/ui/shared/ui_carded_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:logger/logger.dart';

import '../../../domain/player/player.dart';
import '../../shared/ui_text.dart';

class MatchScreen extends ConsumerStatefulWidget {
  final String matchId;

  const MatchScreen({super.key, required this.matchId});

  @override
  ConsumerState createState() => _MatchScreenState();
}

class _MatchScreenState extends ConsumerState<MatchScreen> {
  int _overviewTab = 0;
  int _managementTab = 0;

  Map<String, TextEditingController> _controllers = {};
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref.read(matchRoundServiceProvider(widget.matchId).notifier).load();
      setState(() {
        _controllers = {
          for (Player participant
              in ref
                  .read(matchRoundServiceProvider(widget.matchId))
                  .participants)
            participant.id: TextEditingController(),
        };
      });
    });
  }

  void _createNewRound() {
    final controllerNotifier = ref.read(
      matchControllerProvider(widget.matchId).notifier,
    );

    controllerNotifier.addMatchRound(
      _controllers.map(
        (pid, controller) => MapEntry(pid, int.tryParse(controller.text) ?? 0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(matchRoundServiceProvider(widget.matchId));
    final controllerState = ref.watch(matchControllerProvider(widget.matchId));

    if (state.isLoading ||
        state.match == null ||
        (state.participants.length != _controllers.length)) {
      return AdaptiveScaffold(
        appBar: AdaptiveAppBar(title: "Match"),
        body: Center(
          child: LoadingAnimationWidget.hexagonDots(
            color: CupertinoColors.white,
            size: 200,
          ),
        ),
      );
    }

    return UiAppSubPage(
      title: "Match",
      child: ListView(
        children: [
          UiText.title("Overview"),
          const SizedBox(height: 8),
          AdaptiveSegmentedControl(
            labels: ['Leaderboard', 'Rounds'],
            selectedIndex: 0,
            onValueChanged: (index) {
              setState(() {
                _overviewTab = index;
              });
            },
          ),
          const SizedBox(height: 8),
          if (_overviewTab == 0)
            UiCardedList(
              items: state.leaderboard
                  .map(
                    (l) => UiCardedListItem(
                      title: l.player.name,
                      leading: UiText.subtitle("${l.rank.toString()}."),
                      trailing: UiText.subtitle(l.score.toString()),
                    ),
                  )
                  .toList(),
            ),
          if (_overviewTab == 1)
            UiCard(child: RoundsScoreTable(matchId: widget.matchId)),
          const SizedBox(height: 8),
          UiText.title("New Round"),

          const SizedBox(height: 8),

          UiCardedList(
            items: state.participants
                .map(
                  (p) => UiCardedListItem(
                    title: p.name,
                    trailing: SizedBox(
                      width: 120,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 32,
                            height: 32,
                            child: AdaptiveButton.icon(
                              style: AdaptiveButtonStyle.bordered,
                              onPressed: () {
                                int? currentScore =
                                    int.tryParse(_controllers[p.id]!.text) ?? 0;

                                _controllers[p.id]!.text = (currentScore - 1)
                                    .toString();
                              },
                              icon: Icons.remove,
                            ),
                          ),
                          const SizedBox(width: 2),

                          Container(
                            width: 48,
                            height: 36,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade400),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsetsGeometry.only(left: 1),
                              child: AdaptiveTextField(
                                textAlign: TextAlign.center,
                                placeholder: "0",
                                keyboardType: TextInputType.number,
                                controller: _controllers[p.id],
                              ),
                            ),
                          ),
                          const SizedBox(width: 2),

                          SizedBox(
                            width: 32,
                            height: 32,
                            child: AdaptiveButton.icon(
                              style: AdaptiveButtonStyle.bordered,
                              onPressed: () {
                                int? currentScore =
                                    int.tryParse(_controllers[p.id]!.text) ?? 0;

                                _controllers[p.id]!.text = (currentScore + 1)
                                    .toString();
                              },
                              icon: Icons.add,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 8),
          AdaptiveButton(onPressed: _createNewRound, label: "Add"),
          const SizedBox(height: 8),
          UiText.title("Actions"),
          const SizedBox(height: 8),
          UiCardedList(
            items: [
              UiCardedListItem(
                title: "Manage players",
                subtitle: "Add players or mark users as inactive",
              ),
              UiCardedListItem(
                title: "Complete Match",
                subtitle:
                    "Once you are done complete the match to calculate the final stats",
              ),
              UiCardedListItem(
                title: "Delete Match",
                subtitle:
                    "You can delete the match. If you decide to do so keep in mind, that it's not recoverable",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
