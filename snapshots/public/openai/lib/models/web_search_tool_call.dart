// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'web_search_tool_call_action.dart';/// The status of the web search tool call.
/// 
@immutable final class WebSearchToolCallStatus {const WebSearchToolCallStatus._(this.value);

factory WebSearchToolCallStatus.fromJson(String json) { return switch (json) {
  'in_progress' => inProgress,
  'searching' => searching,
  'completed' => completed,
  'failed' => failed,
  _ => WebSearchToolCallStatus._(json),
}; }

static const WebSearchToolCallStatus inProgress = WebSearchToolCallStatus._('in_progress');

static const WebSearchToolCallStatus searching = WebSearchToolCallStatus._('searching');

static const WebSearchToolCallStatus completed = WebSearchToolCallStatus._('completed');

static const WebSearchToolCallStatus failed = WebSearchToolCallStatus._('failed');

static const List<WebSearchToolCallStatus> values = [inProgress, searching, completed, failed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebSearchToolCallStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebSearchToolCallStatus($value)'; } 
 }
/// The results of a web search tool call. See the
/// [web search guide](/docs/guides/tools-web-search) for more information.
/// 
@immutable final class WebSearchToolCall {const WebSearchToolCall({required this.id, required this.type, required this.status, required this.action, });

factory WebSearchToolCall.fromJson(Map<String, dynamic> json) { return WebSearchToolCall(
  id: json['id'] as String,
  type: json['type'] as String,
  status: WebSearchToolCallStatus.fromJson(json['status'] as String),
  action: WebSearchToolCallAction.fromJson(json['action'] as Map<String, dynamic>),
); }

/// The unique ID of the web search tool call.
/// 
final String id;

/// The type of the web search tool call. Always `web_search_call`.
/// 
final String type;

/// The status of the web search tool call.
/// 
final WebSearchToolCallStatus status;

/// An object describing the specific action taken in this web search call.
/// Includes details on how the model used the web (search, open_page, find_in_page).
/// 
final WebSearchToolCallAction action;

Map<String, dynamic> toJson() { return {
  'id': id,
  'type': type,
  'status': status.toJson(),
  'action': action.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('type') && json['type'] is String &&
      json.containsKey('status') &&
      json.containsKey('action'); } 
WebSearchToolCall copyWith({String? id, String? type, WebSearchToolCallStatus? status, WebSearchToolCallAction? action, }) { return WebSearchToolCall(
  id: id ?? this.id,
  type: type ?? this.type,
  status: status ?? this.status,
  action: action ?? this.action,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebSearchToolCall &&
          id == other.id &&
          type == other.type &&
          status == other.status &&
          action == other.action; } 
@override int get hashCode { return Object.hash(id, type, status, action); } 
@override String toString() { return 'WebSearchToolCall(id: $id, type: $type, status: $status, action: $action)'; } 
 }
