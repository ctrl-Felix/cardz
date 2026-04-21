// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MatchService)
final matchServiceProvider = MatchServiceFamily._();

final class MatchServiceProvider
    extends $NotifierProvider<MatchService, MatchServiceState> {
  MatchServiceProvider._({
    required MatchServiceFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'matchServiceProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$matchServiceHash();

  @override
  String toString() {
    return r'matchServiceProvider'
        ''
        '($argument)';
  }

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

  @override
  bool operator ==(Object other) {
    return other is MatchServiceProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$matchServiceHash() => r'b3885713679fe51bc79fd37d0dfc479517d5232d';

final class MatchServiceFamily extends $Family
    with
        $ClassFamilyOverride<
          MatchService,
          MatchServiceState,
          MatchServiceState,
          MatchServiceState,
          String
        > {
  MatchServiceFamily._()
    : super(
        retry: null,
        name: r'matchServiceProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  MatchServiceProvider call(String matchId) =>
      MatchServiceProvider._(argument: matchId, from: this);

  @override
  String toString() => r'matchServiceProvider';
}

abstract class _$MatchService extends $Notifier<MatchServiceState> {
  late final _$args = ref.$arg as String;
  String get matchId => _$args;

  MatchServiceState build(String matchId);
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
    element.handleCreate(ref, () => build(_$args));
  }
}
