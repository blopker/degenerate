// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Event represents a single event to a watched resource.
@immutable final class WatchEvent {const WatchEvent({required this.object, this.type = '', });

factory WatchEvent.fromJson(Map<String, dynamic> json) { return WatchEvent(
  object: json['object'] as Map<String, dynamic>,
  type: json['type'] as String,
); }

/// Object is:
///  * If Type is Added or Modified: the new state of the object.
///  * If Type is Deleted: the state of the object immediately before deletion.
///  * If Type is Error: *Status is recommended; other types may make sense
///    depending on context.
final Map<String,dynamic> object;

final String type;

Map<String, dynamic> toJson() { return {
  'object': object,
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('object') &&
      json.containsKey('type') && json['type'] is String; } 
WatchEvent copyWith({Map<String,dynamic>? object, String? type, }) { return WatchEvent(
  object: object ?? this.object,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WatchEvent &&
          object == other.object &&
          type == other.type; } 
@override int get hashCode { return Object.hash(object, type); } 
@override String toString() { return 'WatchEvent(object: $object, type: $type)'; } 
 }
