// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';
@immutable
final class WorkersObservabilityTelemetryEvent$workersVariant1EventValueVariant4ValueVariant4Value {
  const WorkersObservabilityTelemetryEvent$workersVariant1EventValueVariant4ValueVariant4Value({this.listdynamic = const Omittable.absent(),
this.string = const Omittable.absent(),
this.$double = const Omittable.absent(),
this.$bool = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const WorkersObservabilityTelemetryEvent$workersVariant1EventValueVariant4ValueVariant4Value._({required this.rawValue, required this.listdynamic,
required this.string,
required this.$double,
required this.$bool,});
  factory WorkersObservabilityTelemetryEvent$workersVariant1EventValueVariant4ValueVariant4Value.fromJson(Object? json) => WorkersObservabilityTelemetryEvent$workersVariant1EventValueVariant4ValueVariant4Value._(
    rawValue: Omittable(json),
    listdynamic: parseAnyOfVariant<List<dynamic>>(json, (value) => (value! as List<dynamic>).map((e) => e).toList()),
string: parseAnyOfVariant<String>(json, (value) => value! as String),
$double: parseAnyOfVariant<double>(json, (value) => (value! as num).toDouble()),
$bool: parseAnyOfVariant<bool>(json, (value) => value! as bool),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<dynamic>> listdynamic;
final Omittable<String> string;
final Omittable<double> $double;
final Omittable<bool> $bool;

  /// Whether at least one known variant matched.
  bool get isValid => listdynamic.isPresent || string.isPresent || $double.isPresent || $bool.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listdynamic.isPresent) listdynamic.value,
if (string.isPresent) string.value,
if ($double.isPresent) $double.value,
if ($bool.isPresent) $bool.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is WorkersObservabilityTelemetryEvent$workersVariant1EventValueVariant4ValueVariant4Value && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'WorkersObservabilityTelemetryEvent\$workersVariant1EventValueVariant4ValueVariant4Value(${toJson()})';
}
