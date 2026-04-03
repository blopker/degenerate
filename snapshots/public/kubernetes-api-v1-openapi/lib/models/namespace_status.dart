// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'namespace_condition.dart';/// NamespaceStatus is information about the current status of a Namespace.
@immutable final class NamespaceStatus {const NamespaceStatus({this.conditions, this.phase, });

factory NamespaceStatus.fromJson(Map<String, dynamic> json) { return NamespaceStatus(
  conditions: (json['conditions'] as List<dynamic>?)?.map((e) => NamespaceCondition.fromJson(e as Map<String, dynamic>)).toList(),
  phase: json['phase'] as String?,
); }

/// Represents the latest available observations of a namespace's current state.
final List<NamespaceCondition>? conditions;

/// Phase is the current lifecycle phase of the namespace. More info: https://kubernetes.io/docs/tasks/administer-cluster/namespaces/
final String? phase;

Map<String, dynamic> toJson() { return {
  if (conditions != null) 'conditions': conditions?.map((e) => e.toJson()).toList(),
  'phase': ?phase,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'conditions', 'phase'}.contains(key)); } 
NamespaceStatus copyWith({List<NamespaceCondition> Function()? conditions, String Function()? phase, }) { return NamespaceStatus(
  conditions: conditions != null ? conditions() : this.conditions,
  phase: phase != null ? phase() : this.phase,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is NamespaceStatus &&
          listEquals(conditions, other.conditions) &&
          phase == other.phase; } 
@override int get hashCode { return Object.hash(Object.hashAll(conditions ?? const []), phase); } 
@override String toString() { return 'NamespaceStatus(conditions: $conditions, phase: $phase)'; } 
 }
