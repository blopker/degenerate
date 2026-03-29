// GENERATED CODE - DO NOT MODIFY BY HAND

final class GistsCreateRequestFilesValue {const GistsCreateRequestFilesValue({required this.content});

factory GistsCreateRequestFilesValue.fromJson(Map<String, dynamic> json) { return GistsCreateRequestFilesValue(
  content: json['content'] as String,
); }

/// Content of the file
final String content;

Map<String, dynamic> toJson() { return {
  'content': content,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('content') && json['content'] is String; } 
GistsCreateRequestFilesValue copyWith({String? content}) { return GistsCreateRequestFilesValue(
  content: content ?? this.content,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GistsCreateRequestFilesValue &&
          content == other.content; } 
@override int get hashCode { return content.hashCode; } 
@override String toString() { return 'GistsCreateRequestFilesValue(content: $content)'; } 
 }
