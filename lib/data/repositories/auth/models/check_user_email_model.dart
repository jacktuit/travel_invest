import 'package:freezed_annotation/freezed_annotation.dart';
part 'check_user_email_model.freezed.dart';
part 'check_user_email_model.g.dart';
@freezed
abstract class CheckUserEmailResponse with _$CheckUserEmailResponse {
  const CheckUserEmailResponse._();

  const factory CheckUserEmailResponse({
    bool? email,
    int? id,
  }) = _CheckUserEmailResponse;

  factory CheckUserEmailResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckUserEmailResponseFromJson(json);
}
