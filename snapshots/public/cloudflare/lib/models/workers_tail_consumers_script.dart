// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// A reference to a script that will consume logs from the attached Worker.
@immutable final class WorkersTailConsumersScript {const WorkersTailConsumersScript({required this.service, this.environment, this.namespace, });

factory WorkersTailConsumersScript.fromJson(Map<String, dynamic> json) { return WorkersTailConsumersScript(
  environment: json['environment'] as String?,
  namespace: json['namespace'] as String?,
  service: json['service'] as String,
); }

/// Optional environment if the Worker utilizes one.
final String? environment;

/// Optional dispatch namespace the script belongs to.
final String? namespace;

/// Name of Worker that is to be the consumer.
final String service;

Map<String, dynamic> toJson() { return {
  'environment': ?environment,
  'namespace': ?namespace,
  'service': service,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('service') && json['service'] is String; } 
WorkersTailConsumersScript copyWith({String Function()? environment, String Function()? namespace, String? service, }) { return WorkersTailConsumersScript(
  environment: environment != null ? environment() : this.environment,
  namespace: namespace != null ? namespace() : this.namespace,
  service: service ?? this.service,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersTailConsumersScript &&
          environment == other.environment &&
          namespace == other.namespace &&
          service == other.service; } 
@override int get hashCode { return Object.hash(environment, namespace, service); } 
@override String toString() { return 'WorkersTailConsumersScript(environment: $environment, namespace: $namespace, service: $service)'; } 
 }
