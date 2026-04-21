// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MatchController)
final matchControllerProvider = MatchControllerFamily._();

final class MatchControllerProvider
    extends $NotifierProvider<MatchController, MatchControllerState> {
  MatchControllerProvider._({
    required MatchControllerFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'matchControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$matchControllerHash();

  @override
  String toString() {
    return r'matchControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  MatchController create() => MatchController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MatchControllerState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MatchControllerState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MatchControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$matchControllerHash() => r'7ed59bdf221fa11e8fff4cba7d4384272124b2ac';

final class MatchControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          MatchController,
          MatchControllerState,
          MatchControllerState,
          MatchControllerState,
          String
        > {
  MatchControllerFamily._()
    : super(
        retry: null,
        name: r'matchControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MatchControllerProvider call(String matchId) =>
      MatchControllerProvider._(argument: matchId, from: this);

  @override
  String toString() => r'matchControllerProvider';
}

abstract class _$MatchController extends $Notifier<MatchControllerState> {
  late final _$args = ref.$arg as String;
  String get matchId => _$args;

  MatchControllerState build(String matchId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<MatchControllerState, MatchControllerState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<MatchControllerState, MatchControllerState>,
              MatchControllerState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
