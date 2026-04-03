// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zaraz_messages2.dart';import 'zaraz_zaraz_config_history_response_result_value.dart';@immutable final class ZarazZarazConfigHistoryResponse {const ZarazZarazConfigHistoryResponse({required this.errors, required this.messages, required this.success, required this.result, });

factory ZarazZarazConfigHistoryResponse.fromJson(Map<String, dynamic> json) { return ZarazZarazConfigHistoryResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => ZarazMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ZarazMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: (json['result'] as Map<String, dynamic>).map((k, v) => MapEntry(k, ZarazZarazConfigHistoryResponseResultValue.fromJson(v as Map<String, dynamic>))),
); }

final List<ZarazMessages2> errors;

final List<ZarazMessages2> messages;

/// Whether the API call was successful
final bool success;

/// Object where keys are numericc onfiguration IDs
final Map<String,ZarazZarazConfigHistoryResponseResultValue?> result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'result': result.map((k, v) => MapEntry(k, v?.toJson())),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result'); } 
ZarazZarazConfigHistoryResponse copyWith({List<ZarazMessages2>? errors, List<ZarazMessages2>? messages, bool? success, Map<String,ZarazZarazConfigHistoryResponseResultValue?>? result, }) { return ZarazZarazConfigHistoryResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZarazZarazConfigHistoryResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'ZarazZarazConfigHistoryResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
