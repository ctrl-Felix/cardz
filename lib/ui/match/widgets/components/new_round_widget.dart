import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../application/service/match/match_service.dart';
import '../../../../domain/participant/participant.dart';
import '../../../shared/ui_carded_list.dart';
import '../../controller/match_controller.dart';

class NewRoundWidget extends ConsumerStatefulWidget {
  final String matchId;
  const NewRoundWidget({super.key, required this.matchId});

  @override
  ConsumerState createState() => _NewRoundWidgetState();
}

class _NewRoundWidgetState extends ConsumerState<NewRoundWidget> {
  Map<String, TextEditingController> _controllers = {};

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _controllers = {
          for (Participant participant
              in ref.read(matchServiceProvider(widget.matchId)).participants)
            participant.player.id: TextEditingController(),
        };
      });
    });
  }

  void _createNewRound() {
    final controllerNotifier = ref.read(
      matchControllerProvider(widget.matchId).notifier,
    );
    final serviceState = ref.read(matchServiceProvider(widget.matchId));

    final scores = {
      for (final participant in serviceState.activeParticipants)
        participant.player.id:
            int.tryParse(_controllers[participant.player.id]!.text) ?? 0,
    };
    controllerNotifier.addMatchRound(scores);
    _controllers.forEach((_, c) => c.clear());
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(matchServiceProvider(widget.matchId));

    return Column(
      children: [
        UiCardedList(
          items: state.activeParticipants
              .map(
                (p) => UiCardedListItem(
                  title: p.player.name,
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
                                  int.tryParse(
                                    _controllers[p.player.id]!.text,
                                  ) ??
                                  0;

                              _controllers[p.player.id]!.text =
                                  (currentScore - 1).toString();
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
                              controller: _controllers[p.player.id],
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
                                  int.tryParse(
                                    _controllers[p.player.id]!.text,
                                  ) ??
                                  0;

                              _controllers[p.player.id]!.text =
                                  (currentScore + 1).toString();
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
      ],
    );
  }
}
