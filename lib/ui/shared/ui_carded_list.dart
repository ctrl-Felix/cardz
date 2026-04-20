import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:doublehead/ui/shared/ui_card.dart';
import 'package:flutter/cupertino.dart';

class UiCardedListItem {
  final String title;
  final String? subtitle;
  final Widget? trailing;
  final IconData? leadingIcon;

  UiCardedListItem({
    required this.title,
    this.subtitle,
    this.trailing,
    this.leadingIcon,
  });
}

class UiCardedList extends StatelessWidget {
  List<UiCardedListItem> items;

  UiCardedList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return UiCard(
      child: Column(
        children: items.indexed.map((record) {
          final (index, item) = record;
          return AdaptiveListTile(
            title: Text(item.title),
            subtitle: item.subtitle != null ? Text(item.subtitle!) : null,
            trailing: item.trailing,
            leading: item.leadingIcon != null ? Icon(item.leadingIcon) : null,
            showDivider: index != items.length - 1,
          );
        }).toList(),
      ),
    );
  }
}
