// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_identifier.dart';import 'tls_certificates_and_hostnames_messages2.dart';@immutable final class CustomHostnameForAZoneDeleteCustomHostnameAndAnyIssuedSslCertificatesResponse4Xx {const CustomHostnameForAZoneDeleteCustomHostnameAndAnyIssuedSslCertificatesResponse4Xx({required this.errors, required this.messages, required this.result, required this.success, this.id, });

factory CustomHostnameForAZoneDeleteCustomHostnameAndAnyIssuedSslCertificatesResponse4Xx.fromJson(Map<String, dynamic> json) { return CustomHostnameForAZoneDeleteCustomHostnameAndAnyIssuedSslCertificatesResponse4Xx(
  errors: (json['errors'] as List<dynamic>).map((e) => TlsCertificatesAndHostnamesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => TlsCertificatesAndHostnamesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: json['result'] as Map<String, dynamic>?,
  success: json['success'] as bool,
  id: json['id'] != null ? TlsCertificatesAndHostnamesIdentifier.fromJson(json['id'] as String) : null,
); }

final List<TlsCertificatesAndHostnamesMessages2> errors;

final List<TlsCertificatesAndHostnamesMessages2> messages;

final Map<String,dynamic>? result;

/// Whether the API call was successful.
final bool success;

/// Identifier.
final TlsCertificatesAndHostnamesIdentifier? id;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': ?result,
  'success': success,
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
CustomHostnameForAZoneDeleteCustomHostnameAndAnyIssuedSslCertificatesResponse4Xx copyWith({List<TlsCertificatesAndHostnamesMessages2>? errors, List<TlsCertificatesAndHostnamesMessages2>? messages, Map<String, dynamic>? Function()? result, bool? success, TlsCertificatesAndHostnamesIdentifier Function()? id, }) { return CustomHostnameForAZoneDeleteCustomHostnameAndAnyIssuedSslCertificatesResponse4Xx(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result != null ? result() : this.result,
  success: success ?? this.success,
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomHostnameForAZoneDeleteCustomHostnameAndAnyIssuedSslCertificatesResponse4Xx &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success &&
          id == other.id; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success, id); } 
@override String toString() { return 'CustomHostnameForAZoneDeleteCustomHostnameAndAnyIssuedSslCertificatesResponse4Xx(errors: $errors, messages: $messages, result: $result, success: $success, id: $id)'; } 
 }
