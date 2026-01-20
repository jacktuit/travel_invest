// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SignUpNotifiers)
final signUpNotifiersProvider = SignUpNotifiersProvider._();

final class SignUpNotifiersProvider
    extends $AsyncNotifierProvider<SignUpNotifiers, String?> {
  SignUpNotifiersProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'signUpNotifiersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$signUpNotifiersHash();

  @$internal
  @override
  SignUpNotifiers create() => SignUpNotifiers();
}

String _$signUpNotifiersHash() => r'21448d0f7ac754574a77326adfa91ea8c4aa9d8b';

abstract class _$SignUpNotifiers extends $AsyncNotifier<String?> {
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
