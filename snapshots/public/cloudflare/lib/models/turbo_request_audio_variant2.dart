// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class TurboRequestAudioVariant2 {const TurboRequestAudioVariant2({this.body, this.contentType, });

factory TurboRequestAudioVariant2.fromJson(Map<String, dynamic> json) { return TurboRequestAudioVariant2(
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
TurboRequestAudioVariant2 copyWith({Map<String, dynamic> Function()? body, String Function()? contentType, }) { return TurboRequestAudioVariant2(
  body: body != null ? body() : this.body,
  contentType: contentType != null ? contentType() : this.contentType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TurboRequestAudioVariant2 &&
          body == other.body &&
          contentType == other.contentType; } 
@override int get hashCode { return Object.hash(body, contentType); } 
@override String toString() { return 'TurboRequestAudioVariant2(body: $body, contentType: $contentType)'; } 
 }
