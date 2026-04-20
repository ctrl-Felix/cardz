import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:doublehead/ui/home/controller/home_controller.dart';
import 'package:doublehead/ui/shared/ui_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../application/service/match/match_service.dart';
import '../../shared/app_app_bar.dart';

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
      ref.read(matchServiceProvider.notifier).loadMatches();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(homeControllerProvider);
    return AdaptiveScaffold(
      appBar: adaptiveAppBar(context),
      body: ListView(
        physics: const ClampingScrollPhysics(),

        padding: const EdgeInsets.all(8),
        children: [
          const SizedBox(height: 120),
          UiText.title("Matches"),
          const SizedBox(height: 8),

          AdaptiveCard(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            elevation: 8, // Android only
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Column(
                children: [
                  ...state.matches.map(
                    (m) => AdaptiveListTile(
                      title: Text(m.title),
                      subtitle: Text(m.startTime.toString()),
                    ),
                  ),
                  AdaptiveListTile(
                    title: Text("Completed Matches"),
                    subtitle: Text(
                      "All your completed Matches can be found here",
                    ),
                    trailing: Icon(Icons.chevron_right),
                    showDivider: false,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
