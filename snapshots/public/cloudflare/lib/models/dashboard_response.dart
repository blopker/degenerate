// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dashboard.dart';import 'messages42.dart';import 'query_response.dart';@immutable final class DashboardResponse {const DashboardResponse({required this.errors, required this.messages, required this.result, required this.success, this.query, });

factory DashboardResponse.fromJson(Map<String, dynamic> json) { return DashboardResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => Messages42.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => Messages42.fromJson(e as Map<String, dynamic>)).toList(),
  result: Dashboard.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
  query: json['query'] != null ? QueryResponse.fromJson(json['query'] as Map<String, dynamic>) : null,
); }

final List<Messages42> errors;

final List<Messages42> messages;

final Dashboard result;

/// Whether the API call was successful
final bool success;

final QueryResponse? query;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': result.toJson(),
  'success': success,
  if (query != null) 'query': query?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
DashboardResponse copyWith({List<Messages42>? errors, List<Messages42>? messages, Dashboard? result, bool? success, QueryResponse Function()? query, }) { return DashboardResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
  query: query != null ? query() : this.query,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DashboardResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success &&
          query == other.query; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success, query); } 
@override String toString() { return 'DashboardResponse(errors: $errors, messages: $messages, result: $result, success: $success, query: $query)'; } 
 }
