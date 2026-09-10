// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'response_common39_result_variant2.dart';
@immutable
final class ResponseCommon39Result {
  const ResponseCommon39Result({this.mapStringdynamic = const Omittable.absent(),
this.listResponseCommon39ResultVariant2 = const Omittable.absent(),
this.string = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ResponseCommon39Result._({required this.rawValue, required this.mapStringdynamic,
required this.listResponseCommon39ResultVariant2,
required this.string,});
  factory ResponseCommon39Result.fromJson(Object? json) => ResponseCommon39Result._(
    rawValue: Omittable(json),
    mapStringdynamic: parseAnyOfVariant<Map<String, dynamic>>(json, (value) => value! as Map<String, dynamic>),
listResponseCommon39ResultVariant2: parseAnyOfVariant<List<ResponseCommon39ResultVariant2>>(json, (value) => (value! as List<dynamic>).map((e) => OneOf2.parse(e, fromA: (v) => v as String, fromB: (v) => v as Map<String, dynamic>,)).toList()),
string: parseAnyOfVariant<String>(json, (value) => value! as String),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, dynamic>> mapStringdynamic;
final Omittable<List<ResponseCommon39ResultVariant2>> listResponseCommon39ResultVariant2;
final Omittable<String> string;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringdynamic.isPresent || listResponseCommon39ResultVariant2.isPresent || string.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringdynamic.isPresent) mapStringdynamic.value,
if (listResponseCommon39ResultVariant2.isPresent) listResponseCommon39ResultVariant2.value?.map((e) => e.toJson()).toList(),
if (string.isPresent) string.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ResponseCommon39Result && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ResponseCommon39Result(${toJson()})';
}
