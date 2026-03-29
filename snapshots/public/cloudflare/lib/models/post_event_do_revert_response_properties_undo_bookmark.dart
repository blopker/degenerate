// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostEventDoRevertResponsePropertiesUndoBookmark {const PostEventDoRevertResponsePropertiesUndoBookmark({required this.type});

factory PostEventDoRevertResponsePropertiesUndoBookmark.fromJson(Map<String, dynamic> json) { return PostEventDoRevertResponsePropertiesUndoBookmark(
  type: json['type'] as String,
); }

final String type;

Map<String, dynamic> toJson() { return {
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
PostEventDoRevertResponsePropertiesUndoBookmark copyWith({String? type}) { return PostEventDoRevertResponsePropertiesUndoBookmark(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostEventDoRevertResponsePropertiesUndoBookmark &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'PostEventDoRevertResponsePropertiesUndoBookmark(type: $type)'; } 
 }
