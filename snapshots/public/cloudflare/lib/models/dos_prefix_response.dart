// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dos_messages2.dart';import 'dos_prefix.dart';final class DosPrefixResponse {const DosPrefixResponse({required this.errors, required this.messages, required this.success, this.result, });

factory DosPrefixResponse.fromJson(Map<String, dynamic> json) { return DosPrefixResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => DosMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => DosMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? DosPrefix.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<DosMessages2> errors;

final List<DosMessages2> messages;

/// Whether the API call was successful.
final bool success;

final DosPrefix? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
DosPrefixResponse copyWith({List<DosMessages2>? errors, List<DosMessages2>? messages, bool? success, DosPrefix Function()? result, }) { return DosPrefixResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DosPrefixResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'DosPrefixResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
