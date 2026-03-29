// GENERATED CODE - DO NOT MODIFY BY HAND

final class WorkersAiPostRunCfDeepgramNova3RequestAudio {const WorkersAiPostRunCfDeepgramNova3RequestAudio({required this.body, required this.contentType, });

factory WorkersAiPostRunCfDeepgramNova3RequestAudio.fromJson(Map<String, dynamic> json) { return WorkersAiPostRunCfDeepgramNova3RequestAudio(
  body: (json['body'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v)),
  contentType: json['contentType'] as String,
); }

final Map<String,dynamic> body;

final String contentType;

Map<String, dynamic> toJson() { return {
  'body': body,
  'contentType': contentType,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('body') &&
      json.containsKey('contentType') && json['contentType'] is String; } 
WorkersAiPostRunCfDeepgramNova3RequestAudio copyWith({Map<String,dynamic>? body, String? contentType, }) { return WorkersAiPostRunCfDeepgramNova3RequestAudio(
  body: body ?? this.body,
  contentType: contentType ?? this.contentType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersAiPostRunCfDeepgramNova3RequestAudio &&
          body == other.body &&
          contentType == other.contentType; } 
@override int get hashCode { return Object.hash(body, contentType); } 
@override String toString() { return 'WorkersAiPostRunCfDeepgramNova3RequestAudio(body: $body, contentType: $contentType)'; } 
 }
