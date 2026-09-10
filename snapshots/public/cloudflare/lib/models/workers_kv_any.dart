// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';
@immutable
final class WorkersKvAny {
  const WorkersKvAny({this.string = const Omittable.absent(),
this.$double = const Omittable.absent(),
this.$int = const Omittable.absent(),
this.$bool = const Omittable.absent(),
this.mapStringdynamicOrNull = const Omittable.absent(),
this.listWorkersKvAnyOrNull = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const WorkersKvAny._({required this.rawValue, required this.string,
required this.$double,
required this.$int,
required this.$bool,
required this.mapStringdynamicOrNull,
required this.listWorkersKvAnyOrNull,});
  factory WorkersKvAny.fromJson(Object? json) => WorkersKvAny._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
$double: parseAnyOfVariant<double>(json, (value) => (value! as num).toDouble()),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
$bool: parseAnyOfVariant<bool>(json, (value) => value! as bool),
mapStringdynamicOrNull: parseAnyOfVariant<Map<String, dynamic>?>(json, (value) => value as Map<String, dynamic>?),
listWorkersKvAnyOrNull: parseAnyOfVariant<List<WorkersKvAny?>>(json, (value) => (value! as List<dynamic>).map((e) => e == null ? null : WorkersKvAny.fromJson(e)).toList()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<double> $double;
final Omittable<int> $int;
final Omittable<bool> $bool;
final Omittable<Map<String, dynamic>?> mapStringdynamicOrNull;
final Omittable<List<WorkersKvAny?>> listWorkersKvAnyOrNull;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || $double.isPresent || $int.isPresent || $bool.isPresent || mapStringdynamicOrNull.isPresent || listWorkersKvAnyOrNull.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if ($double.isPresent) $double.value,
if ($int.isPresent) $int.value,
if ($bool.isPresent) $bool.value,
if (mapStringdynamicOrNull.isPresent) mapStringdynamicOrNull.value,
if (listWorkersKvAnyOrNull.isPresent) listWorkersKvAnyOrNull.value?.map((e) => e?.toJson()).toList(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is WorkersKvAny && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'WorkersKvAny(${toJson()})';
}
