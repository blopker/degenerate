// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'datacenters2.dart';import 'messages42.dart';import 'query_response.dart';@immutable final class ColoResponse {const ColoResponse({required this.errors, required this.messages, required this.result, required this.success, this.query, });

factory ColoResponse.fromJson(Map<String, dynamic> json) { return ColoResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => Messages42.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => Messages42.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as List<dynamic>).map((e) => Datacenters2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  query: json['query'] != null ? QueryResponse.fromJson(json['query'] as Map<String, dynamic>) : null,
); }

final List<Messages42> errors;

final List<Messages42> messages;

final List<Datacenters2> result;

/// Whether the API call was successful
final bool success;

final QueryResponse? query;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': result.map((e) => e.toJson()).toList(),
  'success': success,
  if (query != null) 'query': query?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
ColoResponse copyWith({List<Messages42>? errors, List<Messages42>? messages, List<Datacenters2>? result, bool? success, QueryResponse Function()? query, }) { return ColoResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
  query: query != null ? query() : this.query,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ColoResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          listEquals(result, other.result) &&
          success == other.success &&
          query == other.query; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), Object.hashAll(result), success, query); } 
@override String toString() { return 'ColoResponse(errors: $errors, messages: $messages, result: $result, success: $success, query: $query)'; } 
 }
