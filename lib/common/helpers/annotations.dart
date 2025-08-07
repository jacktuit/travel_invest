import 'package:freezed_annotation/freezed_annotation.dart';

const myJson = JsonSerializable(explicitToJson: true);

const myFreezed = Freezed(
  fromJson: true,
  toJson: true,
  addImplicitFinal: true,
  copyWith: true,
  toStringOverride: true,
  equal: false,
  genericArgumentFactories: false,
  makeCollectionsUnmodifiable: false,
  when: FreezedWhenOptions(when: false, maybeWhen: false, whenOrNull: false),
  map: FreezedMapOptions(map: false, maybeMap: false, mapOrNull: false),
);
