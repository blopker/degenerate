// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WorkersWorkerRequestTailConsumers {const WorkersWorkerRequestTailConsumers({required this.name});

factory WorkersWorkerRequestTailConsumers.fromJson(Map<String, dynamic> json) { return WorkersWorkerRequestTailConsumers(
  name: json['name'] as String,
); }

/// Name of the consumer Worker.
final String name;

Map<String, dynamic> toJson() { return {
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
WorkersWorkerRequestTailConsumers copyWith({String? name}) { return WorkersWorkerRequestTailConsumers(
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersWorkerRequestTailConsumers &&
          name == other.name; } 
@override int get hashCode { return name.hashCode; } 
@override String toString() { return 'WorkersWorkerRequestTailConsumers(name: $name)'; } 
 }
