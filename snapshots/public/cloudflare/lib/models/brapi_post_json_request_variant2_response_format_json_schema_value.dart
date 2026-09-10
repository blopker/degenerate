// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';
@immutable
final class BrapiPostJsonRequestVariant2ResponseFormatJsonSchemaValue {
  const BrapiPostJsonRequestVariant2ResponseFormatJsonSchemaValue({this.string = const Omittable.absent(),
this.$double = const Omittable.absent(),
this.$bool = const Omittable.absent(),
this.mapStringdynamic = const Omittable.absent(),
this.listString = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const BrapiPostJsonRequestVariant2ResponseFormatJsonSchemaValue._({required this.rawValue, required this.string,
required this.$double,
required this.$bool,
required this.mapStringdynamic,
required this.listString,});
  factory BrapiPostJsonRequestVariant2ResponseFormatJsonSchemaValue.fromJson(Object? json) => BrapiPostJsonRequestVariant2ResponseFormatJsonSchemaValue._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
$double: parseAnyOfVariant<double>(json, (value) => (value! as num).toDouble()),
$bool: parseAnyOfVariant<bool>(json, (value) => value! as bool),
mapStringdynamic: parseAnyOfVariant<Map<String, dynamic>>(json, (value) => value! as Map<String, dynamic>),
listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<double> $double;
final Omittable<bool> $bool;
final Omittable<Map<String, dynamic>> mapStringdynamic;
final Omittable<List<String>> listString;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || $double.isPresent || $bool.isPresent || mapStringdynamic.isPresent || listString.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if ($double.isPresent) $double.value,
if ($bool.isPresent) $bool.value,
if (mapStringdynamic.isPresent) mapStringdynamic.value,
if (listString.isPresent) listString.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is BrapiPostJsonRequestVariant2ResponseFormatJsonSchemaValue && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'BrapiPostJsonRequestVariant2ResponseFormatJsonSchemaValue(${toJson()})';
}
