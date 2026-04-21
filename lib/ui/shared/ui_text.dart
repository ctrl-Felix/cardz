import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UiText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  const UiText(
    this.text, {
    super.key,
    this.style,
    this.textAlign,
    this.maxLines,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    final resolvedStyle = Platform.isIOS
        ? CupertinoTheme.of(context).textTheme.textStyle.merge(style)
        : Theme.of(context).textTheme.bodyMedium?.merge(style) ??
              const TextStyle();

    return Text(
      text,
      style: resolvedStyle,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  // Named constructors for common text styles
  static Widget title(String text, {Key? key, TextAlign? textAlign}) {
    return _StyledUiText(
      text,
      key: key,
      textAlign: textAlign,
      resolver: (context) => Platform.isIOS
          ? CupertinoTheme.of(context).textTheme.textStyle.copyWith(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            )
          : Theme.of(context).textTheme.titleLarge!,
    );
  }

  static Widget subtitle(
    String text, {
    Key? key,
    TextAlign? textAlign,
    Color? color,
  }) {
    return _StyledUiText(
      text,
      key: key,
      textAlign: textAlign,
      resolver: (context) => Platform.isIOS
          ? CupertinoTheme.of(context).textTheme.textStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w300,
              color: color,
            )
          : Theme.of(context).textTheme.titleSmall!,
    );
  }

  // Smaller than title but also bold
  static Widget heading(
    String text, {
    Key? key,
    TextAlign? textAlign,
    Color? color,
  }) {
    return _StyledUiText(
      text,
      key: key,
      textAlign: textAlign,
      resolver: (context) => Platform.isIOS
          ? CupertinoTheme.of(context).textTheme.textStyle.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: color,
            )
          : Theme.of(context).textTheme.titleLarge!,
    );
  }

  // Title used in List Item
  static Widget listTitle(
    String text, {
    Key? key,
    TextAlign? textAlign,
    Color? color,
  }) {
    return _StyledUiText(
      text,
      key: key,
      textAlign: textAlign,
      resolver: (context) => Platform.isIOS
          ? CupertinoTheme.of(
              context,
            ).textTheme.textStyle.copyWith(color: color)
          : Theme.of(context).textTheme.titleLarge!,
    );
  }

  static Widget body(String text, {Key? key, TextAlign? textAlign}) {
    return _StyledUiText(
      text,
      key: key,
      textAlign: textAlign,
      resolver: (context) => Platform.isIOS
          ? CupertinoTheme.of(
              context,
            ).textTheme.textStyle.copyWith(fontSize: 16)
          : Theme.of(context).textTheme.bodyMedium!,
    );
  }

  static Widget bodyLight(String text, {Key? key, TextAlign? textAlign}) {
    return _StyledUiText(
      text,
      key: key,
      textAlign: textAlign,
      resolver: (context) => Platform.isIOS
          ? CupertinoTheme.of(context).textTheme.textStyle.copyWith(
              fontSize: 16,
              color: CupertinoColors.secondaryLabel,
            )
          : Theme.of(context).textTheme.bodyMedium!,
    );
  }

  static Widget sectionHeader(String text, {Key? key}) {
    return _StyledUiText(
      text,
      key: key,
      resolver: (context) => Platform.isIOS
          ? CupertinoTheme.of(context).textTheme.textStyle.copyWith(
              fontSize: 13,
              color: CupertinoColors.secondaryLabel,
            )
          : Theme.of(context).textTheme.titleMedium!,
      transform: (s) => Platform.isIOS ? s.toUpperCase() : s,
    );
  }
}

class _StyledUiText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  final TextStyle Function(BuildContext context) resolver;
  final String Function(String)? transform;

  const _StyledUiText(
    this.text, {
    super.key,
    this.textAlign,
    required this.resolver,
    this.transform,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      transform?.call(text) ?? text,
      style: resolver(context),
      textAlign: textAlign,
    );
  }
}
