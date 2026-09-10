// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';
@immutable
final class ResponseCommon75Result {
  const ResponseCommon75Result({this.mapStringdynamic = const Omittable.absent(),
this.listMapStringdynamic = const Omittable.absent(),
this.stringOrNull = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ResponseCommon75Result._({required this.rawValue, required this.mapStringdynamic,
required this.listMapStringdynamic,
required this.stringOrNull,});
  factory ResponseCommon75Result.fromJson(Object? json) => ResponseCommon75Result._(
    rawValue: Omittable(json),
    mapStringdynamic: parseAnyOfVariant<Map<String, dynamic>>(json, (value) => value! as Map<String, dynamic>),
listMapStringdynamic: parseAnyOfVariant<List<Map<String, dynamic>>>(json, (value) => (value! as List<dynamic>).map((e) => e as Map<String, dynamic>).toList()),
stringOrNull: parseAnyOfVariant<String?>(json, (value) => value as String?),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, dynamic>> mapStringdynamic;
final Omittable<List<Map<String, dynamic>>> listMapStringdynamic;
final Omittable<String?> stringOrNull;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || mapStringdynamic.isPresent || listMapStringdynamic.isPresent || stringOrNull.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringdynamic.isPresent) mapStringdynamic.value,
if (listMapStringdynamic.isPresent) listMapStringdynamic.value?.map((e) => e).toList(),
if (stringOrNull.isPresent) stringOrNull.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ResponseCommon75Result && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ResponseCommon75Result(${toJson()})';
}
