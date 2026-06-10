// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_schemas_messages2.dart';import 'iam_token_with_value.dart';@immutable final class IamSingleTokenCreateResponse {const IamSingleTokenCreateResponse({required this.errors, required this.messages, required this.success, this.result, });

factory IamSingleTokenCreateResponse.fromJson(Map<String, dynamic> json) { return IamSingleTokenCreateResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => IamSchemasMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => IamSchemasMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? IamTokenWithValue.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<IamSchemasMessages2> errors;

final List<IamSchemasMessages2> messages;

/// Whether the API call was successful.
final bool success;

final IamTokenWithValue? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
IamSingleTokenCreateResponse copyWith({List<IamSchemasMessages2>? errors, List<IamSchemasMessages2>? messages, bool? success, IamTokenWithValue Function()? result, }) { return IamSingleTokenCreateResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamSingleTokenCreateResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'IamSingleTokenCreateResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
