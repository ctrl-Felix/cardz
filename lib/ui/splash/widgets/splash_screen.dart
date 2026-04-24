import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:cardcrew/routing/routes.dart';
import 'package:cardcrew/ui/splash/controller/splash_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../shared/ui_app_sub_page.dart';
import '../../shared/ui_text.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  late TextEditingController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(splashControllerProvider.notifier).setup();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(splashControllerProvider);
    final notifier = ref.read(splashControllerProvider.notifier);

    ref.listen(splashControllerProvider, (_, n) {
      if (n.nextAction == NextActionType.completed) {
        context.go(Routes.home);
      }
    });

    if (state.nextAction == NextActionType.wait) {
      return AdaptiveScaffold(body: Center(child: SizedBox(height: 5)));
    }

    return UiAppSubPage(
      title: "Welcome",
      child: ListView(
        children: [
          UiText.title("What's your name?"),
          const SizedBox(height: 8),
          AdaptiveTextField(
            style: TextStyle(fontSize: 18),
            cupertinoDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: CupertinoColors.white,
            ),
            padding: EdgeInsets.all(16),
            placeholder: 'New Name',
            controller: _controller,
          ),
          const SizedBox(height: 8),
          AdaptiveButton(
            onPressed: () {
              notifier.createOwner(_controller.text);
              _controller.clear();
            },
            label: "Let's go!",
            minSize: Size(double.infinity, 0),
          ),
        ],
      ),
    );
  }
}
