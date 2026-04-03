// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zaraz_messages2.dart';import 'zaraz_zaraz_config_return.dart';@immutable final class ZarazZarazConfigResponse {const ZarazZarazConfigResponse({required this.errors, required this.messages, required this.success, required this.result, });

factory ZarazZarazConfigResponse.fromJson(Map<String, dynamic> json) { return ZarazZarazConfigResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => ZarazMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ZarazMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: ZarazZarazConfigReturn.fromJson(json['result'] as Map<String, dynamic>),
); }

final List<ZarazMessages2> errors;

final List<ZarazMessages2> messages;

/// Whether the API call was successful
final bool success;

final ZarazZarazConfigReturn result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result'); } 
ZarazZarazConfigResponse copyWith({List<ZarazMessages2>? errors, List<ZarazMessages2>? messages, bool? success, ZarazZarazConfigReturn? result, }) { return ZarazZarazConfigResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZarazZarazConfigResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'ZarazZarazConfigResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
