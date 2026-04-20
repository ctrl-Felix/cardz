// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PlayerService)
final playerServiceProvider = PlayerServiceProvider._();

final class PlayerServiceProvider
    extends $NotifierProvider<PlayerService, PlayerServiceState> {
  PlayerServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'playerServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$playerServiceHash();

  @$internal
  @override
  PlayerService create() => PlayerService();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PlayerServiceState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PlayerServiceState>(value),
    );
  }
}

String _$playerServiceHash() => r'cd840198ad467bcf9d167327cd181d4c4976180c';

abstract class _$PlayerService extends $Notifier<PlayerServiceState> {
  PlayerServiceState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<PlayerServiceState, PlayerServiceState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PlayerServiceState, PlayerServiceState>,
              PlayerServiceState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
