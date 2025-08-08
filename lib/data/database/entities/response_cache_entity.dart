import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_cache_entity.freezed.dart';
part 'response_cache_entity.g.dart';

@freezed
abstract class ResponseCacheEntity with _$ResponseCacheEntity {
  const ResponseCacheEntity._();

  const factory ResponseCacheEntity({
    required String url,
    int? withAuth,
    String? json,
  }) = _ResponseCacheEntity;

  factory ResponseCacheEntity.fromJson(Map<String, dynamic> json) =>
      _$ResponseCacheEntityFromJson(json);
}
