// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_email_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CheckEmailNotifier)
final checkEmailProvider = CheckEmailNotifierProvider._();

final class CheckEmailNotifierProvider
    extends
        $AsyncNotifierProvider<CheckEmailNotifier, CheckUserEmailResponse?> {
  CheckEmailNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'checkEmailProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$checkEmailNotifierHash();

  @$internal
  @override
  CheckEmailNotifier create() => CheckEmailNotifier();
}

String _$checkEmailNotifierHash() =>
    r'74b21cd617309dd9d233ced7f98506e3a80df652';

abstract class _$CheckEmailNotifier
    extends $AsyncNotifier<CheckUserEmailResponse?> {
  FutureOr<CheckUserEmailResponse?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<CheckUserEmailResponse?>,
              CheckUserEmailResponse?
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<CheckUserEmailResponse?>,
                CheckUserEmailResponse?
              >,
              AsyncValue<CheckUserEmailResponse?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
