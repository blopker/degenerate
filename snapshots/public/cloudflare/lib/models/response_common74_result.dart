// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';
@immutable
final class ResponseCommon74Result {
  const ResponseCommon74Result({this.mapStringdynamic = const Omittable.absent(),
this.listMapStringdynamic = const Omittable.absent(),
this.string = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ResponseCommon74Result._({required this.rawValue, required this.mapStringdynamic,
required this.listMapStringdynamic,
required this.string,});
  factory ResponseCommon74Result.fromJson(Object? json) => ResponseCommon74Result._(
    rawValue: Omittable(json),
    mapStringdynamic: parseAnyOfVariant<Map<String, dynamic>>(json, (value) => value! as Map<String, dynamic>),
listMapStringdynamic: parseAnyOfVariant<List<Map<String, dynamic>>>(json, (value) => (value! as List<dynamic>).map((e) => e as Map<String, dynamic>).toList()),
string: parseAnyOfVariant<String>(json, (value) => value! as String),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, dynamic>> mapStringdynamic;
final Omittable<List<Map<String, dynamic>>> listMapStringdynamic;
final Omittable<String> string;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringdynamic.isPresent || listMapStringdynamic.isPresent || string.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringdynamic.isPresent) mapStringdynamic.value,
if (listMapStringdynamic.isPresent) listMapStringdynamic.value?.map((e) => e).toList(),
if (string.isPresent) string.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ResponseCommon74Result && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ResponseCommon74Result(${toJson()})';
}
