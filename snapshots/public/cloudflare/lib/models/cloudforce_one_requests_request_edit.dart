// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cloudforce_one_requests_request_content.dart';import 'cloudforce_one_requests_request_summary.dart';import 'cloudforce_one_requests_request_type.dart';import 'cloudforce_one_requests_tlp.dart';final class CloudforceOneRequestsRequestEdit {const CloudforceOneRequestsRequestEdit({this.content, this.priority, this.requestType, this.summary, this.tlp, });

factory CloudforceOneRequestsRequestEdit.fromJson(Map<String, dynamic> json) { return CloudforceOneRequestsRequestEdit(
  content: json['content'] != null ? CloudforceOneRequestsRequestContent.fromJson(json['content'] as String) : null,
  priority: json['priority'] as String?,
  requestType: json['request_type'] != null ? CloudforceOneRequestsRequestType.fromJson(json['request_type'] as String) : null,
  summary: json['summary'] != null ? CloudforceOneRequestsRequestSummary.fromJson(json['summary'] as String) : null,
  tlp: json['tlp'] != null ? CloudforceOneRequestsTlp.fromJson(json['tlp'] as String) : null,
); }

/// Request content.
final CloudforceOneRequestsRequestContent? content;

/// Priority for analyzing the request.
final String? priority;

final CloudforceOneRequestsRequestType? requestType;

final CloudforceOneRequestsRequestSummary? summary;

final CloudforceOneRequestsTlp? tlp;

Map<String, dynamic> toJson() { return {
  if (content != null) 'content': content?.toJson(),
  'priority': ?priority,
  if (requestType != null) 'request_type': requestType?.toJson(),
  if (summary != null) 'summary': summary?.toJson(),
  if (tlp != null) 'tlp': tlp?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
CloudforceOneRequestsRequestEdit copyWith({CloudforceOneRequestsRequestContent Function()? content, String Function()? priority, CloudforceOneRequestsRequestType Function()? requestType, CloudforceOneRequestsRequestSummary Function()? summary, CloudforceOneRequestsTlp Function()? tlp, }) { return CloudforceOneRequestsRequestEdit(
  content: content != null ? content() : this.content,
  priority: priority != null ? priority() : this.priority,
  requestType: requestType != null ? requestType() : this.requestType,
  summary: summary != null ? summary() : this.summary,
  tlp: tlp != null ? tlp() : this.tlp,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CloudforceOneRequestsRequestEdit &&
          content == other.content &&
          priority == other.priority &&
          requestType == other.requestType &&
          summary == other.summary &&
          tlp == other.tlp; } 
@override int get hashCode { return Object.hash(content, priority, requestType, summary, tlp); } 
@override String toString() { return 'CloudforceOneRequestsRequestEdit(content: $content, priority: $priority, requestType: $requestType, summary: $summary, tlp: $tlp)'; } 
 }
