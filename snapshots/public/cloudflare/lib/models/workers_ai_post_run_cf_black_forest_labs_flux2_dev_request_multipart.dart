// GENERATED CODE - DO NOT MODIFY BY HAND

final class WorkersAiPostRunCfBlackForestLabsFlux2DevRequestMultipart {const WorkersAiPostRunCfBlackForestLabsFlux2DevRequestMultipart({this.body, this.contentType, });

factory WorkersAiPostRunCfBlackForestLabsFlux2DevRequestMultipart.fromJson(Map<String, dynamic> json) { return WorkersAiPostRunCfBlackForestLabsFlux2DevRequestMultipart(
  body: (json['body'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  contentType: json['contentType'] as String?,
); }

final Map<String,dynamic>? body;

final String? contentType;

Map<String, dynamic> toJson() { return {
  'body': ?body,
  'contentType': ?contentType,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'body', 'contentType'}.contains(key)); } 
WorkersAiPostRunCfBlackForestLabsFlux2DevRequestMultipart copyWith({Map<String, dynamic> Function()? body, String Function()? contentType, }) { return WorkersAiPostRunCfBlackForestLabsFlux2DevRequestMultipart(
  body: body != null ? body() : this.body,
  contentType: contentType != null ? contentType() : this.contentType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersAiPostRunCfBlackForestLabsFlux2DevRequestMultipart &&
          body == other.body &&
          contentType == other.contentType; } 
@override int get hashCode { return Object.hash(body, contentType); } 
@override String toString() { return 'WorkersAiPostRunCfBlackForestLabsFlux2DevRequestMultipart(body: $body, contentType: $contentType)'; } 
 }
