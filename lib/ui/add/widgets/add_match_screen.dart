import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:doublehead/routing/routes.dart';
import 'package:doublehead/ui/add/controller/add_match_controller.dart';
import 'package:doublehead/ui/add/controller/add_player_controller.dart';
import 'package:doublehead/ui/add/widgets/components/search_player_modal.dart';
import 'package:doublehead/ui/shared/app_sub_page.dart';
import 'package:doublehead/ui/shared/ui_card.dart';
import 'package:doublehead/ui/shared/ui_carded_list.dart';
import 'package:doublehead/ui/shared/ui_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AddMatchScreen extends ConsumerStatefulWidget {
  const AddMatchScreen({super.key});

  @override
  ConsumerState createState() => _AddMatchScreenState();
}

class _AddMatchScreenState extends ConsumerState<AddMatchScreen> {
  String inputTitle = "";
  String inputDescription = "";

  void _createMatch() async {
    final notifier = ref.read(addMatchControllerProvider.notifier);

    final redirect = await notifier.addMatch(inputTitle, inputDescription);
    if (redirect && context.mounted) {
      context.go(Routes.home);
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(addMatchControllerProvider);
    final notifier = ref.read(addMatchControllerProvider.notifier);
    return AppSubPage(
      title: "Add Player",
      child: ListView(
        padding: EdgeInsets.all(8),
        children: [
          UiText.title("Title"),
          const SizedBox(height: 8),
          AdaptiveTextField(
            style: TextStyle(fontSize: 18),
            cupertinoDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: CupertinoColors.white,
            ),
            padding: EdgeInsets.all(16),
            placeholder: 'Doublehead',
            onChanged: (value) {
              setState(() {
                inputTitle = value;
              });
            },
          ),
          const SizedBox(height: 16),
          UiText.title("Description (Optional)"),
          const SizedBox(height: 8),
          AdaptiveTextField(
            style: TextStyle(fontSize: 18),
            cupertinoDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: CupertinoColors.white,
            ),
            padding: EdgeInsets.all(16),
            maxLines: 4,
            placeholder: 'We ate some good cheese with some wine.',
            onChanged: (value) {
              setState(() {
                inputDescription = value;
              });
            },
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UiText.title("Players"),
                  UiText.subtitle("You can always add more players."),
                ],
              ),
              SizedBox(
                height: 40,
                width: 40,
                child: AdaptiveFloatingActionButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) => SearchPlayerModal(),
                    );
                  },
                  elevation: 8,
                  child: Icon(Icons.add),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          if (state.players.isEmpty)
            UiCard(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 16, bottom: 16),
                child: UiText.caption("You need to add player to your match."),
              ),
            ),
          if (state.players.isNotEmpty)
            UiCardedList(
              items: state.players
                  .map((p) => UiCardedListItem(title: p.name))
                  .toList(),
            ),

          const SizedBox(height: 16),

          const SizedBox(height: 16),
          AdaptiveButton(
            onPressed: _createMatch,
            label: "Add",
            enabled: inputTitle.isNotEmpty && state.players.isNotEmpty,
          ),
        ],
      ),
    );
  }
}
