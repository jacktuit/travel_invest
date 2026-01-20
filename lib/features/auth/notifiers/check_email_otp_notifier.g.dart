// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_email_otp_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CheckEmailOtpNotifier)
final checkEmailOtpProvider = CheckEmailOtpNotifierProvider._();

final class CheckEmailOtpNotifierProvider
    extends $AsyncNotifierProvider<CheckEmailOtpNotifier, String?> {
  CheckEmailOtpNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'checkEmailOtpProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$checkEmailOtpNotifierHash();

  @$internal
  @override
  CheckEmailOtpNotifier create() => CheckEmailOtpNotifier();
}

String _$checkEmailOtpNotifierHash() =>
    r'c6f21eb2db127506765c3e25ac81d7ff69cd1c9c';

abstract class _$CheckEmailOtpNotifier extends $AsyncNotifier<String?> {
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
