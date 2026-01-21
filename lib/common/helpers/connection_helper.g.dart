// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connection_helper.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ConnectionHelper)
final connectionHelperProvider = ConnectionHelperProvider._();

final class ConnectionHelperProvider
    extends $NotifierProvider<ConnectionHelper, bool> {
  ConnectionHelperProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'connectionHelperProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$connectionHelperHash();

  @$internal
  @override
  ConnectionHelper create() => ConnectionHelper();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$connectionHelperHash() => r'0523ef4f32af92bcd2d1527cb870790a920fddd3';

abstract class _$ConnectionHelper extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
