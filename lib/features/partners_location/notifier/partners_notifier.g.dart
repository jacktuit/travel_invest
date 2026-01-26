// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partners_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PlaceNotifier)
final placeProvider = PlaceNotifierProvider._();

final class PlaceNotifierProvider
    extends $NotifierProvider<PlaceNotifier, PlaceState> {
  PlaceNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'placeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$placeNotifierHash();

  @$internal
  @override
  PlaceNotifier create() => PlaceNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PlaceState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PlaceState>(value),
    );
  }
}

String _$placeNotifierHash() => r'83938cbdf05e2a73c016e35667a38d6c4331c5b1';

abstract class _$PlaceNotifier extends $Notifier<PlaceState> {
  PlaceState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<PlaceState, PlaceState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PlaceState, PlaceState>,
              PlaceState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
