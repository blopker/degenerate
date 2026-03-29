// GENERATED CODE - DO NOT MODIFY BY HAND

import 'workers_binding_kind_dispatch_namespace_outbound.dart';import 'workers_binding_name.dart';final class WorkersBindingKindDispatchNamespace {const WorkersBindingKindDispatchNamespace({required this.name, required this.namespace, this.outbound, required this.type, });

factory WorkersBindingKindDispatchNamespace.fromJson(Map<String, dynamic> json) { return WorkersBindingKindDispatchNamespace(
  name: WorkersBindingName.fromJson(json['name'] as String),
  namespace: json['namespace'] as String,
  outbound: json['outbound'] != null ? WorkersBindingKindDispatchNamespaceOutbound.fromJson(json['outbound'] as Map<String, dynamic>) : null,
  type: json['type'] as String,
); }

final WorkersBindingName name;

/// The name of the dispatch namespace.
final String namespace;

/// Outbound worker.
final WorkersBindingKindDispatchNamespaceOutbound? outbound;

/// The kind of resource that the binding provides.
final String type;

Map<String, dynamic> toJson() { return {
  'name': name.toJson(),
  'namespace': namespace,
  if (outbound != null) 'outbound': outbound?.toJson(),
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') &&
      json.containsKey('namespace') && json['namespace'] is String &&
      json.containsKey('type') && json['type'] is String; } 
WorkersBindingKindDispatchNamespace copyWith({WorkersBindingName? name, String? namespace, WorkersBindingKindDispatchNamespaceOutbound Function()? outbound, String? type, }) { return WorkersBindingKindDispatchNamespace(
  name: name ?? this.name,
  namespace: namespace ?? this.namespace,
  outbound: outbound != null ? outbound() : this.outbound,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersBindingKindDispatchNamespace &&
          name == other.name &&
          namespace == other.namespace &&
          outbound == other.outbound &&
          type == other.type; } 
@override int get hashCode { return Object.hash(name, namespace, outbound, type); } 
@override String toString() { return 'WorkersBindingKindDispatchNamespace(name: $name, namespace: $namespace, outbound: $outbound, type: $type)'; } 
 }
