// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostEventDoRevertResponsePropertiesRevertBookmark {const PostEventDoRevertResponsePropertiesRevertBookmark({required this.type});

factory PostEventDoRevertResponsePropertiesRevertBookmark.fromJson(Map<String, dynamic> json) { return PostEventDoRevertResponsePropertiesRevertBookmark(
  type: json['type'] as String,
); }

final String type;

Map<String, dynamic> toJson() { return {
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
PostEventDoRevertResponsePropertiesRevertBookmark copyWith({String? type}) { return PostEventDoRevertResponsePropertiesRevertBookmark(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostEventDoRevertResponsePropertiesRevertBookmark &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'PostEventDoRevertResponsePropertiesRevertBookmark(type: $type)'; } 
 }
