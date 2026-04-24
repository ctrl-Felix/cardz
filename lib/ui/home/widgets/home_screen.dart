import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:cardcrew/domain/match/match.dart';
import 'package:cardcrew/routing/routes.dart';
import 'package:cardcrew/ui/home/controller/home_controller.dart';
import 'package:cardcrew/ui/shared/ui_card.dart';
import 'package:cardcrew/ui/shared/ui_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../application/service/matches/matches_service.dart';
import '../../shared/app_app_bar.dart';
import '../../shared/ui_carded_list.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(matchesServiceProvider.notifier).loadMatches();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(matchesServiceProvider);
    return AdaptiveScaffold(
      // appBar: adaptiveAppBar(context),
      body: ListView(
        physics: const ClampingScrollPhysics(),

        padding: const EdgeInsets.all(8),
        children: [
          const SizedBox(height: 120),
          UiText.title("Ongoing Matches"),
          const SizedBox(height: 8),
          if (state.matches
              .where((m) => m.status == MATCHSTATUS.ONGOING)
              .isNotEmpty)
            UiCardedList(
              items: state.matches
                  .where((m) => m.status == MATCHSTATUS.ONGOING)
                  .map(
                    (m) => UiCardedListItem(
                      title: m.title,
                      subtitle: m.startTime.toLocal().toString(),
                      trailing: Icon(CupertinoIcons.chevron_right),
                      onTap: () {
                        context.push(Routes.matchPath(m.matchId));
                      },
                    ),
                  )
                  .toList(),
            ),
          if (state.matches
              .where((m) => m.status == MATCHSTATUS.ONGOING)
              .isEmpty)
            UiCard(child: UiText.bodyLight("You have no ongoing match.")),
          const SizedBox(height: 8),
          UiText.title("Completed Matches"),
          if (state.matches
              .where((m) => m.status == MATCHSTATUS.FINISHED)
              .isNotEmpty)
            UiCardedList(
              items: state.matches
                  .where((m) => m.status == MATCHSTATUS.FINISHED)
                  .map(
                    (m) => UiCardedListItem(
                      title: m.title,
                      subtitle: m.startTime.toString(),
                      trailing: Icon(Icons.chevron_right),
                      onTap: () {
                        context.push(Routes.matchPath(m.matchId));
                      },
                    ),
                  )
                  .toList(),
            ),
          if (state.matches
              .where((m) => m.status == MATCHSTATUS.FINISHED)
              .isEmpty)
            UiCard(child: UiText.bodyLight("You have no completed match yet.")),
        ],
      ),
    );
  }
}
