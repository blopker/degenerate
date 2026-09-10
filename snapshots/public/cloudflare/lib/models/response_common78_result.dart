// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Provides the API response.
@immutable
final class ResponseCommon78Result {
  const ResponseCommon78Result({this.mapStringdynamic = const Omittable.absent(),
this.listdynamic = const Omittable.absent(),
this.string = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ResponseCommon78Result._({required this.rawValue, required this.mapStringdynamic,
required this.listdynamic,
required this.string,});
  factory ResponseCommon78Result.fromJson(Object? json) => ResponseCommon78Result._(
    rawValue: Omittable(json),
    mapStringdynamic: parseAnyOfVariant<Map<String, dynamic>>(json, (value) => value! as Map<String, dynamic>),
listdynamic: parseAnyOfVariant<List<dynamic>>(json, (value) => (value! as List<dynamic>).map((e) => e).toList()),
string: parseAnyOfVariant<String>(json, (value) => value! as String),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, dynamic>> mapStringdynamic;
final Omittable<List<dynamic>> listdynamic;
final Omittable<String> string;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringdynamic.isPresent || listdynamic.isPresent || string.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringdynamic.isPresent) mapStringdynamic.value,
if (listdynamic.isPresent) listdynamic.value,
if (string.isPresent) string.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ResponseCommon78Result && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ResponseCommon78Result(${toJson()})';
}
