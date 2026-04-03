// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Type of source
@immutable final class MqEventSourceWorkersBuildsWorkerType {const MqEventSourceWorkersBuildsWorkerType._(this.value);

factory MqEventSourceWorkersBuildsWorkerType.fromJson(String json) { return switch (json) {
  'workersBuilds.worker' => workersBuildsWorker,
  _ => MqEventSourceWorkersBuildsWorkerType._(json),
}; }

static const MqEventSourceWorkersBuildsWorkerType workersBuildsWorker = MqEventSourceWorkersBuildsWorkerType._('workersBuilds.worker');

static const List<MqEventSourceWorkersBuildsWorkerType> values = [workersBuildsWorker];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MqEventSourceWorkersBuildsWorkerType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MqEventSourceWorkersBuildsWorkerType($value)'; } 
 }
@immutable final class MqEventSourceWorkersBuildsWorker {const MqEventSourceWorkersBuildsWorker({this.type, this.workerName, });

factory MqEventSourceWorkersBuildsWorker.fromJson(Map<String, dynamic> json) { return MqEventSourceWorkersBuildsWorker(
  type: json['type'] != null ? MqEventSourceWorkersBuildsWorkerType.fromJson(json['type'] as String) : null,
  workerName: json['worker_name'] as String?,
); }

/// Type of source
final MqEventSourceWorkersBuildsWorkerType? type;

/// Name of the worker
final String? workerName;

Map<String, dynamic> toJson() { return {
  if (type != null) 'type': type?.toJson(),
  'worker_name': ?workerName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'type', 'worker_name'}.contains(key)); } 
MqEventSourceWorkersBuildsWorker copyWith({MqEventSourceWorkersBuildsWorkerType Function()? type, String Function()? workerName, }) { return MqEventSourceWorkersBuildsWorker(
  type: type != null ? type() : this.type,
  workerName: workerName != null ? workerName() : this.workerName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MqEventSourceWorkersBuildsWorker &&
          type == other.type &&
          workerName == other.workerName; } 
@override int get hashCode { return Object.hash(type, workerName); } 
@override String toString() { return 'MqEventSourceWorkersBuildsWorker(type: $type, workerName: $workerName)'; } 
 }
