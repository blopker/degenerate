// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cloudforce_one_requests_request_content.dart';import 'cloudforce_one_requests_request_readable_id.dart';import 'cloudforce_one_requests_request_status.dart';import 'cloudforce_one_requests_request_summary.dart';import 'cloudforce_one_requests_request_type.dart';import 'cloudforce_one_requests_time.dart';import 'cloudforce_one_requests_tlp.dart';import 'cloudforce_one_requests_uuid.dart';final class CloudforceOneRequestsRequestItem {const CloudforceOneRequestsRequestItem({this.completed, required this.content, required this.created, required this.id, this.messageTokens, required this.priority, this.readableId, required this.request, this.status, required this.summary, required this.tlp, this.tokens, required this.updated, });

factory CloudforceOneRequestsRequestItem.fromJson(Map<String, dynamic> json) { return CloudforceOneRequestsRequestItem(
  completed: json['completed'] != null ? CloudforceOneRequestsTime.fromJson(json['completed'] as String) : null,
  content: CloudforceOneRequestsRequestContent.fromJson(json['content'] as String),
  created: CloudforceOneRequestsTime.fromJson(json['created'] as String),
  id: CloudforceOneRequestsUuid.fromJson(json['id'] as String),
  messageTokens: json['message_tokens'] != null ? (json['message_tokens'] as num).toInt() : null,
  priority: CloudforceOneRequestsTime.fromJson(json['priority'] as String),
  readableId: json['readable_id'] != null ? CloudforceOneRequestsRequestReadableId.fromJson(json['readable_id'] as String) : null,
  request: CloudforceOneRequestsRequestType.fromJson(json['request'] as String),
  status: json['status'] != null ? CloudforceOneRequestsRequestStatus.fromJson(json['status'] as String) : null,
  summary: CloudforceOneRequestsRequestSummary.fromJson(json['summary'] as String),
  tlp: CloudforceOneRequestsTlp.fromJson(json['tlp'] as String),
  tokens: json['tokens'] != null ? (json['tokens'] as num).toInt() : null,
  updated: CloudforceOneRequestsTime.fromJson(json['updated'] as String),
); }

final CloudforceOneRequestsTime? completed;

/// Request content.
final CloudforceOneRequestsRequestContent content;

final CloudforceOneRequestsTime created;

final CloudforceOneRequestsUuid id;

/// Tokens for the request messages.
final int? messageTokens;

final CloudforceOneRequestsTime priority;

final CloudforceOneRequestsRequestReadableId? readableId;

final CloudforceOneRequestsRequestType request;

final CloudforceOneRequestsRequestStatus? status;

final CloudforceOneRequestsRequestSummary summary;

final CloudforceOneRequestsTlp tlp;

/// Tokens for the request.
final int? tokens;

final CloudforceOneRequestsTime updated;

Map<String, dynamic> toJson() { return {
  if (completed != null) 'completed': completed?.toJson(),
  'content': content.toJson(),
  'created': created.toJson(),
  'id': id.toJson(),
  'message_tokens': ?messageTokens,
  'priority': priority.toJson(),
  if (readableId != null) 'readable_id': readableId?.toJson(),
  'request': request.toJson(),
  if (status != null) 'status': status?.toJson(),
  'summary': summary.toJson(),
  'tlp': tlp.toJson(),
  'tokens': ?tokens,
  'updated': updated.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('content') &&
      json.containsKey('created') &&
      json.containsKey('id') &&
      json.containsKey('priority') &&
      json.containsKey('request') &&
      json.containsKey('summary') &&
      json.containsKey('tlp') &&
      json.containsKey('updated'); } 
CloudforceOneRequestsRequestItem copyWith({CloudforceOneRequestsTime Function()? completed, CloudforceOneRequestsRequestContent? content, CloudforceOneRequestsTime? created, CloudforceOneRequestsUuid? id, int Function()? messageTokens, CloudforceOneRequestsTime? priority, CloudforceOneRequestsRequestReadableId Function()? readableId, CloudforceOneRequestsRequestType? request, CloudforceOneRequestsRequestStatus Function()? status, CloudforceOneRequestsRequestSummary? summary, CloudforceOneRequestsTlp? tlp, int Function()? tokens, CloudforceOneRequestsTime? updated, }) { return CloudforceOneRequestsRequestItem(
  completed: completed != null ? completed() : this.completed,
  content: content ?? this.content,
  created: created ?? this.created,
  id: id ?? this.id,
  messageTokens: messageTokens != null ? messageTokens() : this.messageTokens,
  priority: priority ?? this.priority,
  readableId: readableId != null ? readableId() : this.readableId,
  request: request ?? this.request,
  status: status != null ? status() : this.status,
  summary: summary ?? this.summary,
  tlp: tlp ?? this.tlp,
  tokens: tokens != null ? tokens() : this.tokens,
  updated: updated ?? this.updated,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CloudforceOneRequestsRequestItem &&
          completed == other.completed &&
          content == other.content &&
          created == other.created &&
          id == other.id &&
          messageTokens == other.messageTokens &&
          priority == other.priority &&
          readableId == other.readableId &&
          request == other.request &&
          status == other.status &&
          summary == other.summary &&
          tlp == other.tlp &&
          tokens == other.tokens &&
          updated == other.updated; } 
@override int get hashCode { return Object.hash(completed, content, created, id, messageTokens, priority, readableId, request, status, summary, tlp, tokens, updated); } 
@override String toString() { return 'CloudforceOneRequestsRequestItem(completed: $completed, content: $content, created: $created, id: $id, messageTokens: $messageTokens, priority: $priority, readableId: $readableId, request: $request, status: $status, summary: $summary, tlp: $tlp, tokens: $tokens, updated: $updated)'; } 
 }
