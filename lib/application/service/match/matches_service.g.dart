// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matches_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MatchesService)
final matchesServiceProvider = MatchesServiceProvider._();

final class MatchesServiceProvider
    extends $NotifierProvider<MatchesService, MatchesServiceState> {
  MatchesServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'matchesServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$matchesServiceHash();

  @$internal
  @override
  MatchesService create() => MatchesService();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MatchesServiceState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MatchesServiceState>(value),
    );
  }
}

String _$matchesServiceHash() => r'88f3e8f01eb7da107288dc2cd12603b36d8fb5e0';

abstract class _$MatchesService extends $Notifier<MatchesServiceState> {
  MatchesServiceState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<MatchesServiceState, MatchesServiceState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<MatchesServiceState, MatchesServiceState>,
              MatchesServiceState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
