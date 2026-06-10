// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_fallbackorigin.dart';import 'tls_certificates_and_hostnames_messages2.dart';@immutable final class TlsCertificatesAndHostnamesFallbackOriginResponse {const TlsCertificatesAndHostnamesFallbackOriginResponse({required this.errors, required this.messages, required this.success, this.result, });

factory TlsCertificatesAndHostnamesFallbackOriginResponse.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesFallbackOriginResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => TlsCertificatesAndHostnamesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => TlsCertificatesAndHostnamesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? TlsCertificatesAndHostnamesFallbackorigin.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<TlsCertificatesAndHostnamesMessages2> errors;

final List<TlsCertificatesAndHostnamesMessages2> messages;

/// Whether the API call was successful.
final bool success;

final TlsCertificatesAndHostnamesFallbackorigin? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
TlsCertificatesAndHostnamesFallbackOriginResponse copyWith({List<TlsCertificatesAndHostnamesMessages2>? errors, List<TlsCertificatesAndHostnamesMessages2>? messages, bool? success, TlsCertificatesAndHostnamesFallbackorigin Function()? result, }) { return TlsCertificatesAndHostnamesFallbackOriginResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesFallbackOriginResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'TlsCertificatesAndHostnamesFallbackOriginResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
