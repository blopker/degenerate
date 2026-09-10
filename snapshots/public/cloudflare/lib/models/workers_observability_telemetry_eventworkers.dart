// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_observability_telemetry_eventworkers_variant1.dart';import 'workers_observability_telemetry_eventworkers_variant2.dart';/// Cloudflare Workers event information enriches your logs so you can easily identify and debug issues.
@immutable
final class WorkersObservabilityTelemetryEvent$workers {
  const WorkersObservabilityTelemetryEvent$workers({this.workersObservabilityTelemetryEvent$workersVariant1 = const Omittable.absent(),
this.workersObservabilityTelemetryEvent$workersVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const WorkersObservabilityTelemetryEvent$workers._({required this.rawValue, required this.workersObservabilityTelemetryEvent$workersVariant1,
required this.workersObservabilityTelemetryEvent$workersVariant2,});
  factory WorkersObservabilityTelemetryEvent$workers.fromJson(Object? json) => WorkersObservabilityTelemetryEvent$workers._(
    rawValue: Omittable(json),
    workersObservabilityTelemetryEvent$workersVariant1: parseAnyOfVariant<WorkersObservabilityTelemetryEvent$workersVariant1>(json, (value) => WorkersObservabilityTelemetryEvent$workersVariant1.fromJson(value! as Map<String, dynamic>)),
workersObservabilityTelemetryEvent$workersVariant2: parseAnyOfVariant<WorkersObservabilityTelemetryEvent$workersVariant2>(json, (value) => WorkersObservabilityTelemetryEvent$workersVariant2.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<WorkersObservabilityTelemetryEvent$workersVariant1> workersObservabilityTelemetryEvent$workersVariant1;
final Omittable<WorkersObservabilityTelemetryEvent$workersVariant2> workersObservabilityTelemetryEvent$workersVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => workersObservabilityTelemetryEvent$workersVariant1.isPresent || workersObservabilityTelemetryEvent$workersVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (workersObservabilityTelemetryEvent$workersVariant1.isPresent) workersObservabilityTelemetryEvent$workersVariant1.value?.toJson(),
if (workersObservabilityTelemetryEvent$workersVariant2.isPresent) workersObservabilityTelemetryEvent$workersVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is WorkersObservabilityTelemetryEvent$workers && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'WorkersObservabilityTelemetryEvent\$workers(${toJson()})';
}
