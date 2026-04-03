// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostEventDoRevertResponsePropertiesMinutesAgo {const PostEventDoRevertResponsePropertiesMinutesAgo({required this.type});

factory PostEventDoRevertResponsePropertiesMinutesAgo.fromJson(Map<String, dynamic> json) { return PostEventDoRevertResponsePropertiesMinutesAgo(
  type: json['type'] as String,
); }

final String type;

Map<String, dynamic> toJson() { return {
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
PostEventDoRevertResponsePropertiesMinutesAgo copyWith({String? type}) { return PostEventDoRevertResponsePropertiesMinutesAgo(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostEventDoRevertResponsePropertiesMinutesAgo &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'PostEventDoRevertResponsePropertiesMinutesAgo(type: $type)'; } 
 }
