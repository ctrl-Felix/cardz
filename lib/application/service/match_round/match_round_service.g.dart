// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_round_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MatchRoundService)
final matchRoundServiceProvider = MatchRoundServiceFamily._();

final class MatchRoundServiceProvider
    extends $NotifierProvider<MatchRoundService, MatchRoundServiceState> {
  MatchRoundServiceProvider._({
    required MatchRoundServiceFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'matchRoundServiceProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$matchRoundServiceHash();

  @override
  String toString() {
    return r'matchRoundServiceProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  MatchRoundService create() => MatchRoundService();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MatchRoundServiceState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MatchRoundServiceState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MatchRoundServiceProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$matchRoundServiceHash() => r'349524715c3da54b146373a23354fdd95e6de9e6';

final class MatchRoundServiceFamily extends $Family
    with
        $ClassFamilyOverride<
          MatchRoundService,
          MatchRoundServiceState,
          MatchRoundServiceState,
          MatchRoundServiceState,
          String
        > {
  MatchRoundServiceFamily._()
    : super(
        retry: null,
        name: r'matchRoundServiceProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  MatchRoundServiceProvider call(String matchId) =>
      MatchRoundServiceProvider._(argument: matchId, from: this);

  @override
  String toString() => r'matchRoundServiceProvider';
}

abstract class _$MatchRoundService extends $Notifier<MatchRoundServiceState> {
  late final _$args = ref.$arg as String;
  String get matchId => _$args;

  MatchRoundServiceState build(String matchId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<MatchRoundServiceState, MatchRoundServiceState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<MatchRoundServiceState, MatchRoundServiceState>,
              MatchRoundServiceState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
