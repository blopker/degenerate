// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The response to show when the block is applied.
@immutable final class RulesetsBlockRuleActionParametersResponse {const RulesetsBlockRuleActionParametersResponse({required this.content, required this.contentType, required this.statusCode, });

factory RulesetsBlockRuleActionParametersResponse.fromJson(Map<String, dynamic> json) { return RulesetsBlockRuleActionParametersResponse(
  content: json['content'] as String,
  contentType: json['content_type'] as String,
  statusCode: (json['status_code'] as num).toInt(),
); }

/// The content to return.
final String content;

/// The type of the content to return.
final String contentType;

/// The status code to return.
final int statusCode;

Map<String, dynamic> toJson() { return {
  'content': content,
  'content_type': contentType,
  'status_code': statusCode,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('content') && json['content'] is String &&
      json.containsKey('content_type') && json['content_type'] is String &&
      json.containsKey('status_code') && json['status_code'] is num; } 
RulesetsBlockRuleActionParametersResponse copyWith({String? content, String? contentType, int? statusCode, }) { return RulesetsBlockRuleActionParametersResponse(
  content: content ?? this.content,
  contentType: contentType ?? this.contentType,
  statusCode: statusCode ?? this.statusCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsBlockRuleActionParametersResponse &&
          content == other.content &&
          contentType == other.contentType &&
          statusCode == other.statusCode; } 
@override int get hashCode { return Object.hash(content, contentType, statusCode); } 
@override String toString() { return 'RulesetsBlockRuleActionParametersResponse(content: $content, contentType: $contentType, statusCode: $statusCode)'; } 
 }
