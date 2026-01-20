// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_notifiers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(LoginNotifiers)
final loginNotifiersProvider = LoginNotifiersProvider._();

final class LoginNotifiersProvider
    extends $AsyncNotifierProvider<LoginNotifiers, String?> {
  LoginNotifiersProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginNotifiersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginNotifiersHash();

  @$internal
  @override
  LoginNotifiers create() => LoginNotifiers();
}

String _$loginNotifiersHash() => r'0cea345252aec072f60427ec4f19cdd5c5419fea';

abstract class _$LoginNotifiers extends $AsyncNotifier<String?> {
  FutureOr<String?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<String?>, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<String?>, String?>,
              AsyncValue<String?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
