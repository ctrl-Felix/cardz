// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_player_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AddPlayerController)
final addPlayerControllerProvider = AddPlayerControllerProvider._();

final class AddPlayerControllerProvider
    extends $NotifierProvider<AddPlayerController, AddPlayerState> {
  AddPlayerControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addPlayerControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addPlayerControllerHash();

  @$internal
  @override
  AddPlayerController create() => AddPlayerController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AddPlayerState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AddPlayerState>(value),
    );
  }
}

String _$addPlayerControllerHash() =>
    r'a50072489cf74e94a1e530d7367c2bb380370d80';

abstract class _$AddPlayerController extends $Notifier<AddPlayerState> {
  AddPlayerState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AddPlayerState, AddPlayerState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AddPlayerState, AddPlayerState>,
              AddPlayerState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
