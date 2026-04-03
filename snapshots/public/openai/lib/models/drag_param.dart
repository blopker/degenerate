// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'coord_param.dart';/// A drag action.
@immutable final class DragParam {const DragParam({required this.path, this.type = 'drag', });

factory DragParam.fromJson(Map<String, dynamic> json) { return DragParam(
  type: json['type'] as String,
  path: (json['path'] as List<dynamic>).map((e) => CoordParam.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Specifies the event type. For a drag action, this property is always set to `drag`.
final String type;

/// An array of coordinates representing the path of the drag action. Coordinates will appear as an array of objects, eg
/// ```text
/// [
///   { x: 100, y: 200 },
///   { x: 200, y: 300 }
/// ]
/// ```text
final List<CoordParam> path;

Map<String, dynamic> toJson() { return {
  'type': type,
  'path': path.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String &&
      json.containsKey('path'); } 
DragParam copyWith({String? type, List<CoordParam>? path, }) { return DragParam(
  type: type ?? this.type,
  path: path ?? this.path,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DragParam &&
          type == other.type &&
          listEquals(path, other.path); } 
@override int get hashCode { return Object.hash(type, Object.hashAll(path)); } 
@override String toString() { return 'DragParam(type: $type, path: $path)'; } 
 }
