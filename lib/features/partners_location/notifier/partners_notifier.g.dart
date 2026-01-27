// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partners_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PartnersNotifier)
final partnersProvider = PartnersNotifierProvider._();

final class PartnersNotifierProvider
    extends $AsyncNotifierProvider<PartnersNotifier, PartnersResponse> {
  PartnersNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'partnersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$partnersNotifierHash();

  @$internal
  @override
  PartnersNotifier create() => PartnersNotifier();
}

String _$partnersNotifierHash() => r'c7dadddf8024d67ba43fce7d2c165c26711b20a7';

abstract class _$PartnersNotifier extends $AsyncNotifier<PartnersResponse> {
  FutureOr<PartnersResponse> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<PartnersResponse>, PartnersResponse>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<PartnersResponse>, PartnersResponse>,
              AsyncValue<PartnersResponse>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(PartnersFilter)
final partnersFilterProvider = PartnersFilterProvider._();

final class PartnersFilterProvider
    extends
        $NotifierProvider<
          PartnersFilter,
          ({PlaceCategory category, String query})
        > {
  PartnersFilterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'partnersFilterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$partnersFilterHash();

  @$internal
  @override
  PartnersFilter create() => PartnersFilter();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(({PlaceCategory category, String query}) value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<({PlaceCategory category, String query})>(value),
    );
  }
}

String _$partnersFilterHash() => r'92ac1af7bc1d618e2c9b61d98fc3f7679b247f7b';

abstract class _$PartnersFilter
    extends $Notifier<({PlaceCategory category, String query})> {
  ({PlaceCategory category, String query}) build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              ({PlaceCategory category, String query}),
              ({PlaceCategory category, String query})
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                ({PlaceCategory category, String query}),
                ({PlaceCategory category, String query})
              >,
              ({PlaceCategory category, String query}),
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(filteredPartners)
final filteredPartnersProvider = FilteredPartnersProvider._();

final class FilteredPartnersProvider
    extends
        $FunctionalProvider<
          Map<PlaceCategory, List<dynamic>>,
          Map<PlaceCategory, List<dynamic>>,
          Map<PlaceCategory, List<dynamic>>
        >
    with $Provider<Map<PlaceCategory, List<dynamic>>> {
  FilteredPartnersProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'filteredPartnersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$filteredPartnersHash();

  @$internal
  @override
  $ProviderElement<Map<PlaceCategory, List<dynamic>>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  Map<PlaceCategory, List<dynamic>> create(Ref ref) {
    return filteredPartners(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Map<PlaceCategory, List<dynamic>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Map<PlaceCategory, List<dynamic>>>(
        value,
      ),
    );
  }
}

String _$filteredPartnersHash() => r'30eecde099bd305ba7b612c9047a41bb6b22bc81';
