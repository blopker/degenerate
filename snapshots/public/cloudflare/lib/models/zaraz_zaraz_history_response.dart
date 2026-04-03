// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zaraz_messages2.dart';import 'zaraz_zaraz_history_response_result.dart';@immutable final class ZarazZarazHistoryResponse {const ZarazZarazHistoryResponse({required this.errors, required this.messages, required this.success, required this.result, });

factory ZarazZarazHistoryResponse.fromJson(Map<String, dynamic> json) { return ZarazZarazHistoryResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => ZarazMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ZarazMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: (json['result'] as List<dynamic>).map((e) => ZarazZarazHistoryResponseResult.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<ZarazMessages2> errors;

final List<ZarazMessages2> messages;

/// Whether the API call was successful
final bool success;

final List<ZarazZarazHistoryResponseResult> result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'result': result.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result'); } 
ZarazZarazHistoryResponse copyWith({List<ZarazMessages2>? errors, List<ZarazMessages2>? messages, bool? success, List<ZarazZarazHistoryResponseResult>? result, }) { return ZarazZarazHistoryResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZarazZarazHistoryResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, Object.hashAll(result)); } 
@override String toString() { return 'ZarazZarazHistoryResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
