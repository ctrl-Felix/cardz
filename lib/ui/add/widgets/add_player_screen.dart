import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:cardcrew/routing/routes.dart';
import 'package:cardcrew/ui/add/controller/add_player_controller.dart';
import 'package:cardcrew/ui/shared/ui_app_sub_page.dart';
import 'package:cardcrew/ui/shared/ui_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AddPlayerScreen extends ConsumerStatefulWidget {
  const AddPlayerScreen({super.key});

  @override
  ConsumerState createState() => _AddPlayerScreenState();
}

class _AddPlayerScreenState extends ConsumerState<AddPlayerScreen> {
  String inputName = "";

  @override
  Widget build(BuildContext context) {
    final notifier = ref.read(addPlayerControllerProvider.notifier);
    final state = ref.watch(addPlayerControllerProvider);

    return UiAppSubPage(
      title: "Add Player",
      child: ListView(
        padding: EdgeInsets.all(8),
        children: [
          UiText.title("Name"),
          const SizedBox(height: 8),
          AdaptiveTextField(
            style: TextStyle(fontSize: 18),
            cupertinoDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: CupertinoColors.white,
            ),
            padding: EdgeInsets.all(16),
            placeholder: 'John Doe',
            onChanged: (value) {
              setState(() {
                inputName = value;
              });
            },
          ),
          const SizedBox(height: 16),
          AdaptiveButton(
            onPressed: () async {
              if (await notifier.addPlayer(inputName) && context.mounted) {
                context.go(Routes.players);
              }
            },
            label: "Add",
            enabled: inputName.isNotEmpty,
          ),
        ],
      ),
    );
  }
}
