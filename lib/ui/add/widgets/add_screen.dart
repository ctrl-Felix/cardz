import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:doublehead/routing/routes.dart';
import 'package:doublehead/ui/shared/app_sub_page.dart';
import 'package:doublehead/ui/shared/ui_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AddScreen extends ConsumerWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppSubPage(
      title: 'Add',
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: UiCard(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AdaptiveListTile(
                title: Text("New Player"),
                subtitle: Text("Add a new player."),
                trailing: Icon(CupertinoIcons.chevron_right),
                onTap: () {
                  context.push(Routes.addPlayer);
                },
              ),
              AdaptiveListTile(
                title: Text("New Match"),
                subtitle: Text("Create a new match and have fun!"),
                trailing: Icon(CupertinoIcons.chevron_right),
                showDivider: false,
                onTap: () {
                  context.push(Routes.addMatch);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
