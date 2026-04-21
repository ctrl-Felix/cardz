// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_match_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AddMatchController)
final addMatchControllerProvider = AddMatchControllerProvider._();

final class AddMatchControllerProvider
    extends $NotifierProvider<AddMatchController, AddMatchState> {
  AddMatchControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addMatchControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addMatchControllerHash();

  @$internal
  @override
  AddMatchController create() => AddMatchController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AddMatchState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AddMatchState>(value),
    );
  }
}

String _$addMatchControllerHash() =>
    r'914e5afa5c39b91de13654030abf312f637265ee';

abstract class _$AddMatchController extends $Notifier<AddMatchState> {
  AddMatchState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AddMatchState, AddMatchState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AddMatchState, AddMatchState>,
              AddMatchState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
