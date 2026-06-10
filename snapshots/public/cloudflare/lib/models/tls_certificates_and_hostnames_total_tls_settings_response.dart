// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_messages2.dart';import 'tls_certificates_and_hostnames_total_tls_settings_response_result.dart';@immutable final class TlsCertificatesAndHostnamesTotalTlsSettingsResponse {const TlsCertificatesAndHostnamesTotalTlsSettingsResponse({required this.errors, required this.messages, required this.success, this.result, });

factory TlsCertificatesAndHostnamesTotalTlsSettingsResponse.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesTotalTlsSettingsResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => TlsCertificatesAndHostnamesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => TlsCertificatesAndHostnamesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? TlsCertificatesAndHostnamesTotalTlsSettingsResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<TlsCertificatesAndHostnamesMessages2> errors;

final List<TlsCertificatesAndHostnamesMessages2> messages;

/// Whether the API call was successful.
final bool success;

final TlsCertificatesAndHostnamesTotalTlsSettingsResponseResult? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
TlsCertificatesAndHostnamesTotalTlsSettingsResponse copyWith({List<TlsCertificatesAndHostnamesMessages2>? errors, List<TlsCertificatesAndHostnamesMessages2>? messages, bool? success, TlsCertificatesAndHostnamesTotalTlsSettingsResponseResult Function()? result, }) { return TlsCertificatesAndHostnamesTotalTlsSettingsResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesTotalTlsSettingsResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'TlsCertificatesAndHostnamesTotalTlsSettingsResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
