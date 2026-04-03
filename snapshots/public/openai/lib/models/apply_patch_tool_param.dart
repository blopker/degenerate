// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Allows the assistant to create, delete, or update files using unified diffs.
@immutable final class ApplyPatchToolParam {const ApplyPatchToolParam({this.type = 'apply_patch'});

factory ApplyPatchToolParam.fromJson(Map<String, dynamic> json) { return ApplyPatchToolParam(
  type: json['type'] as String,
); }

/// The type of the tool. Always `apply_patch`.
final String type;

Map<String, dynamic> toJson() { return {
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
ApplyPatchToolParam copyWith({String? type}) { return ApplyPatchToolParam(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ApplyPatchToolParam &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'ApplyPatchToolParam(type: $type)'; } 
 }
