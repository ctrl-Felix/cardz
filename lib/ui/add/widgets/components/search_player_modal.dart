import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:doublehead/application/service/player/player_service.dart';
import 'package:doublehead/ui/add/controller/add_match_controller.dart';
import 'package:doublehead/ui/shared/ui_carded_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../domain/player/player.dart';

class SearchPlayerModal extends ConsumerStatefulWidget {
  const SearchPlayerModal({super.key});

  @override
  ConsumerState createState() => _SearchPlayerModalState();
}

class _SearchPlayerModalState extends ConsumerState<SearchPlayerModal> {
  String searchTerm = "";

  @override
  Widget build(BuildContext context) {
    final players = ref
        .read(playerServiceProvider.notifier)
        .filteredPlayersList(searchTerm);

    final state = ref.watch(addMatchControllerProvider);
    final notifier = ref.read(addMatchControllerProvider.notifier);
    return Padding(
      padding: EdgeInsetsGeometry.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 40,
                child: AdaptiveFloatingActionButton(
                  onPressed: () {
                    context.pop();
                  },
                  elevation: 8,
                  child: Icon(CupertinoIcons.arrow_down_right_arrow_up_left),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
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
                searchTerm = value;
              });
            },
          ),
          const SizedBox(height: 16),
          UiCardedList(
            items: players
                .map(
                  (p) => UiCardedListItem(
                    title: p.name,
                    trailing: AdaptiveCheckbox(
                      value: state.players.contains(p),
                      onChanged: (value) {
                        if (value == true) {
                          notifier.selectPlayer(p);
                        } else {
                          notifier.removePlayer(p);
                        }
                      },
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
