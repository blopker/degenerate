// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WorkersBindingKindDispatchNamespaceOutboundParams {const WorkersBindingKindDispatchNamespaceOutboundParams({required this.name});

factory WorkersBindingKindDispatchNamespaceOutboundParams.fromJson(Map<String, dynamic> json) { return WorkersBindingKindDispatchNamespaceOutboundParams(
  name: json['name'] as String,
); }

/// Name of the parameter.
final String name;

Map<String, dynamic> toJson() { return {
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
WorkersBindingKindDispatchNamespaceOutboundParams copyWith({String? name}) { return WorkersBindingKindDispatchNamespaceOutboundParams(
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersBindingKindDispatchNamespaceOutboundParams &&
          name == other.name; } 
@override int get hashCode { return name.hashCode; } 
@override String toString() { return 'WorkersBindingKindDispatchNamespaceOutboundParams(name: $name)'; } 
 }
