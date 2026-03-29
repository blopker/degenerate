// GENERATED CODE - DO NOT MODIFY BY HAND

import 'workers_binding_name.dart';final class WorkersBindingKindAnalyticsEngine {const WorkersBindingKindAnalyticsEngine({required this.dataset, required this.name, required this.type, });

factory WorkersBindingKindAnalyticsEngine.fromJson(Map<String, dynamic> json) { return WorkersBindingKindAnalyticsEngine(
  dataset: json['dataset'] as String,
  name: WorkersBindingName.fromJson(json['name'] as String),
  type: json['type'] as String,
); }

/// The name of the dataset to bind to.
final String dataset;

final WorkersBindingName name;

/// The kind of resource that the binding provides.
final String type;

Map<String, dynamic> toJson() { return {
  'dataset': dataset,
  'name': name.toJson(),
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('dataset') && json['dataset'] is String &&
      json.containsKey('name') &&
      json.containsKey('type') && json['type'] is String; } 
WorkersBindingKindAnalyticsEngine copyWith({String? dataset, WorkersBindingName? name, String? type, }) { return WorkersBindingKindAnalyticsEngine(
  dataset: dataset ?? this.dataset,
  name: name ?? this.name,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersBindingKindAnalyticsEngine &&
          dataset == other.dataset &&
          name == other.name &&
          type == other.type; } 
@override int get hashCode { return Object.hash(dataset, name, type); } 
@override String toString() { return 'WorkersBindingKindAnalyticsEngine(dataset: $dataset, name: $name, type: $type)'; } 
 }
