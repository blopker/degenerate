// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';
@immutable
final class GetEventListGetSearchValue {
  const GetEventListGetSearchValue({this.string = const Omittable.absent(),
this.$double = const Omittable.absent(),
this.listdynamic = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetEventListGetSearchValue._({required this.rawValue, required this.string,
required this.$double,
required this.listdynamic,});
  factory GetEventListGetSearchValue.fromJson(Object? json) => GetEventListGetSearchValue._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
$double: parseAnyOfVariant<double>(json, (value) => (value! as num).toDouble()),
listdynamic: parseAnyOfVariant<List<dynamic>>(json, (value) => (value! as List<dynamic>).map((e) => e).toList()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<double> $double;
final Omittable<List<dynamic>> listdynamic;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || $double.isPresent || listdynamic.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if ($double.isPresent) $double.value,
if (listdynamic.isPresent) listdynamic.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetEventListGetSearchValue && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetEventListGetSearchValue(${toJson()})';
}
