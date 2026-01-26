import 'package:freezed_annotation/freezed_annotation.dart';

import '../notifier/partners_notifier.dart';

part 'partners_model.freezed.dart';
part 'partners_model.g.dart';

@freezed
abstract class PlaceModel with _$PlaceModel {
  const factory PlaceModel({
    required String id,
    required String name,
    required String location,
    required String distance,
    String? discount,
    required List<String> imageUrls,
    @Default(false) bool isFavorite,
  }) = _PlaceModel;

  factory PlaceModel.fromJson(Map<String, dynamic> json) =>
      _$PlaceModelFromJson(json);
}

class PlaceFilter {
  final String query;
  final PlaceCategory? category;

  PlaceFilter({this.query = '', this.category});

  PlaceFilter copyWith({String? query, PlaceCategory? category, bool clearCategory = false}) {
    return PlaceFilter(
      query: query ?? this.query,
      category: clearCategory ? null : (category ?? this.category),
    );
  }
}