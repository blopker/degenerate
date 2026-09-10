// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_observability_telemetry_eventworkers_variant1_event_value_variant4_value_variant4_value.dart';
@immutable
final class WorkersObservabilityTelemetryEvent$workersVariant1EventValueVariant4Value {
  const WorkersObservabilityTelemetryEvent$workersVariant1EventValueVariant4Value({this.string = const Omittable.absent(),
this.$double = const Omittable.absent(),
this.$bool = const Omittable.absent(),
this.mapStringWorkersObservabilityTelemetryEvent$workersVariant1EventValueVariant4ValueVariant4Value = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const WorkersObservabilityTelemetryEvent$workersVariant1EventValueVariant4Value._({required this.rawValue, required this.string,
required this.$double,
required this.$bool,
required this.mapStringWorkersObservabilityTelemetryEvent$workersVariant1EventValueVariant4ValueVariant4Value,});
  factory WorkersObservabilityTelemetryEvent$workersVariant1EventValueVariant4Value.fromJson(Object? json) => WorkersObservabilityTelemetryEvent$workersVariant1EventValueVariant4Value._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
$double: parseAnyOfVariant<double>(json, (value) => (value! as num).toDouble()),
$bool: parseAnyOfVariant<bool>(json, (value) => value! as bool),
mapStringWorkersObservabilityTelemetryEvent$workersVariant1EventValueVariant4ValueVariant4Value: parseAnyOfVariant<Map<String, WorkersObservabilityTelemetryEvent$workersVariant1EventValueVariant4ValueVariant4Value>>(json, (value) => (value! as Map<String, dynamic>).map((k, v) => MapEntry(k, WorkersObservabilityTelemetryEvent$workersVariant1EventValueVariant4ValueVariant4Value.fromJson(v)))),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<double> $double;
final Omittable<bool> $bool;
final Omittable<Map<String, WorkersObservabilityTelemetryEvent$workersVariant1EventValueVariant4ValueVariant4Value>> mapStringWorkersObservabilityTelemetryEvent$workersVariant1EventValueVariant4ValueVariant4Value;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || $double.isPresent || $bool.isPresent || mapStringWorkersObservabilityTelemetryEvent$workersVariant1EventValueVariant4ValueVariant4Value.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if ($double.isPresent) $double.value,
if ($bool.isPresent) $bool.value,
if (mapStringWorkersObservabilityTelemetryEvent$workersVariant1EventValueVariant4ValueVariant4Value.isPresent) mapStringWorkersObservabilityTelemetryEvent$workersVariant1EventValueVariant4ValueVariant4Value.value?.map((k, v) => MapEntry(k, v.toJson())),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is WorkersObservabilityTelemetryEvent$workersVariant1EventValueVariant4Value && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'WorkersObservabilityTelemetryEvent\$workersVariant1EventValueVariant4Value(${toJson()})';
}
