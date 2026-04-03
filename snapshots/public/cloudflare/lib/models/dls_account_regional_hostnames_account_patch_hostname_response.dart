// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dls_messages2.dart';import 'dls_regional_hostname_response.dart';@immutable final class DlsAccountRegionalHostnamesAccountPatchHostnameResponse {const DlsAccountRegionalHostnamesAccountPatchHostnameResponse({required this.errors, required this.messages, required this.success, this.result, });

factory DlsAccountRegionalHostnamesAccountPatchHostnameResponse.fromJson(Map<String, dynamic> json) { return DlsAccountRegionalHostnamesAccountPatchHostnameResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => DlsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => DlsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? DlsRegionalHostnameResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<DlsMessages2> errors;

final List<DlsMessages2> messages;

/// Whether the API call was successful.
final bool success;

final DlsRegionalHostnameResponse? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
DlsAccountRegionalHostnamesAccountPatchHostnameResponse copyWith({List<DlsMessages2>? errors, List<DlsMessages2>? messages, bool? success, DlsRegionalHostnameResponse Function()? result, }) { return DlsAccountRegionalHostnamesAccountPatchHostnameResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlsAccountRegionalHostnamesAccountPatchHostnameResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'DlsAccountRegionalHostnamesAccountPatchHostnameResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
