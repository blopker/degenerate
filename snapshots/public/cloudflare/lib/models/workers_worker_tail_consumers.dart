// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WorkersWorkerTailConsumers {const WorkersWorkerTailConsumers({required this.name});

factory WorkersWorkerTailConsumers.fromJson(Map<String, dynamic> json) { return WorkersWorkerTailConsumers(
  name: json['name'] as String,
); }

/// Name of the consumer Worker.
final String name;

Map<String, dynamic> toJson() { return {
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
WorkersWorkerTailConsumers copyWith({String? name}) { return WorkersWorkerTailConsumers(
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersWorkerTailConsumers &&
          name == other.name; } 
@override int get hashCode { return name.hashCode; } 
@override String toString() { return 'WorkersWorkerTailConsumers(name: $name)'; } 
 }
