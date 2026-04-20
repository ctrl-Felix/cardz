// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MatchService)
final matchServiceProvider = MatchServiceProvider._();

final class MatchServiceProvider
    extends $NotifierProvider<MatchService, MatchServiceState> {
  MatchServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'matchServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$matchServiceHash();

  @$internal
  @override
  MatchService create() => MatchService();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MatchServiceState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MatchServiceState>(value),
    );
  }
}

String _$matchServiceHash() => r'2b645b7b3542378b7ae372deaf9bf561fb7db5cb';

abstract class _$MatchService extends $Notifier<MatchServiceState> {
  MatchServiceState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<MatchServiceState, MatchServiceState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<MatchServiceState, MatchServiceState>,
              MatchServiceState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
