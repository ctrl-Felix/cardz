import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:doublehead/application/service/matches/matches_service.dart';
import 'package:doublehead/application/service/match/match_service.dart';
import 'package:doublehead/domain/match/match.dart';
import 'package:doublehead/domain/participant/participant.dart';
import 'package:doublehead/routing/routes.dart';
import 'package:doublehead/ui/match/controller/match_controller.dart';
import 'package:doublehead/ui/match/widgets/components/leaderboard_widget.dart';
import 'package:doublehead/ui/match/widgets/components/new_round_widget.dart';
import 'package:doublehead/ui/match/widgets/components/rounds_score_table.dart';
import 'package:doublehead/ui/shared/ui_app_sub_page.dart';
import 'package:doublehead/ui/shared/ui_card.dart';
import 'package:doublehead/ui/shared/ui_carded_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
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

  Map<String, TextEditingController> _controllers = {};
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref.read(matchServiceProvider(widget.matchId).notifier).load();
    });
  }

  void _showCompleteMatchAlert() {
    final notifier = ref.read(matchServiceProvider(widget.matchId).notifier);
    AdaptiveAlertDialog.show(
      context: context,
      title: 'Complete Match',
      message:
          "By confirming you will complete this match. You won't be able to modify scores after completing the match.",
      icon: '',
      actions: [
        AlertAction(
          title: 'Cancel',
          style: AlertActionStyle.cancel,
          onPressed: () {},
        ),
        AlertAction(
          title: 'Confirm',
          style: AlertActionStyle.primary,
          onPressed: () {
            notifier.completeMatch();
          },
        ),
      ],
    );
  }

  void _showDeleteMatchAlert() {
    final notifier = ref.read(matchServiceProvider(widget.matchId).notifier);
    AdaptiveAlertDialog.show(
      context: context,
      title: 'Delete Match',
      message:
          "By confirming you will delete this match. THIS ACTION IS NOT REVERSIBLE. You will loose all entered data.",
      icon: '',
      actions: [
        AlertAction(
          title: 'Cancel',
          style: AlertActionStyle.cancel,
          onPressed: () {},
        ),
        AlertAction(
          title: 'Delete',
          style: AlertActionStyle.cancel,
          onPressed: () {
            notifier.deleteMatch();
            context.go(Routes.home);
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(matchServiceProvider(widget.matchId));

    if (state.isLoading || state.match == null || false) {
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
            selectedIndex: _overviewTab,
            onValueChanged: (index) {
              setState(() {
                _overviewTab = index;
              });
            },
          ),
          const SizedBox(height: 8),
          UiCardedList(
            items: [
              UiCardedListItem(
                title: "Manage players",
                subtitle: "Add players or mark users as inactive",
                color: CupertinoColors.systemBlue,
                onTap: () {
                  context.push(Routes.matchManagePlayersPath(widget.matchId));
                },
              ),
            ],
          ),
          if (_overviewTab == 0) LeaderboardWidget(matchId: widget.matchId),

          if (_overviewTab == 1)
            UiCard(child: RoundsScoreTable(matchId: widget.matchId)),
          const SizedBox(height: 8),

          const SizedBox(height: 8),
          if (state.match!.status == MATCHSTATUS.ONGOING) ...[
            UiText.title("New Round"),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: NewRoundWidget(matchId: widget.matchId),
            ),
          ],

          if (state.match!.status == MATCHSTATUS.ONGOING) ...[
            UiText.title("Actions"),
            UiCardedList(
              items: [
                UiCardedListItem(
                  title: "Manage players",
                  subtitle: "Add players or mark users as inactive",
                  color: CupertinoColors.systemBlue,
                  onTap: () {
                    context.push(Routes.matchManagePlayersPath(widget.matchId));
                  },
                ),
                UiCardedListItem(
                  title: "Complete Match",
                  subtitle:
                      "Once you are done complete the match to calculate the final stats",
                  color: CupertinoColors.systemGreen,
                  onTap: _showCompleteMatchAlert,
                ),
              ],
            ),
            const SizedBox(height: 8),
            UiText.title("Danger Zone"),
            const SizedBox(height: 8),
            UiCardedList(
              items: [
                UiCardedListItem(
                  title: "Delete Match",
                  subtitle:
                      "You can delete the match. If you decide to do so keep in mind, that it's not recoverable",
                  onTap: _showDeleteMatchAlert,
                  color: CupertinoColors.systemRed,
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
