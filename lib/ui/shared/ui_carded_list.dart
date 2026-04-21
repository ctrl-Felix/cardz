import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:doublehead/ui/shared/ui_card.dart';
import 'package:doublehead/ui/shared/ui_text.dart';
import 'package:flutter/cupertino.dart';

class UiCardedListItem {
  final String title;
  final String? subtitle;
  final Widget? trailing;
  final Widget? leading;
  final Color? color;
  final VoidCallback? onTap;

  UiCardedListItem({
    required this.title,
    this.subtitle,
    this.trailing,
    this.leading,
    this.color,
    this.onTap,
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
            onTap: item.onTap,
            title: UiText.listTitle(item.title, color: item.color),
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
