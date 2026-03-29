// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cloudforce_one_requests_message_content.dart';final class CloudforceOneRequestsRequestMessageEdit {const CloudforceOneRequestsRequestMessageEdit({this.content});

factory CloudforceOneRequestsRequestMessageEdit.fromJson(Map<String, dynamic> json) { return CloudforceOneRequestsRequestMessageEdit(
  content: json['content'] != null ? CloudforceOneRequestsMessageContent.fromJson(json['content'] as String) : null,
); }

/// Content of message.
final CloudforceOneRequestsMessageContent? content;

Map<String, dynamic> toJson() { return {
  if (content != null) 'content': content?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'content'}.contains(key)); } 
CloudforceOneRequestsRequestMessageEdit copyWith({CloudforceOneRequestsMessageContent Function()? content}) { return CloudforceOneRequestsRequestMessageEdit(
  content: content != null ? content() : this.content,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CloudforceOneRequestsRequestMessageEdit &&
          content == other.content; } 
@override int get hashCode { return content.hashCode; } 
@override String toString() { return 'CloudforceOneRequestsRequestMessageEdit(content: $content)'; } 
 }
