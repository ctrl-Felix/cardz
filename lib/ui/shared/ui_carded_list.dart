import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:doublehead/ui/shared/ui_card.dart';
import 'package:doublehead/ui/shared/ui_text.dart';
import 'package:flutter/cupertino.dart';

class UiCardedListItem {
  final String title;
  final String? subtitle;
  final Widget? trailing;
  final Widget? leading;

  UiCardedListItem({
    required this.title,
    this.subtitle,
    this.trailing,
    this.leading,
  });
}

class UiCardedList extends StatelessWidget {
  List<UiCardedListItem> items;

  UiCardedList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return UiCard(
      disablePadding: true,
      child: Column(
        children: items.indexed.map((record) {
          final (index, item) = record;
          return AdaptiveListTile(
            title: UiText.heading(item.title),
            subtitle: item.subtitle != null ? Text(item.subtitle!) : null,
            trailing: item.trailing,
            leading: item.leading,
            showDivider: index != items.length - 1,
          );
        }).toList(),
      ),
    );
  }
}
