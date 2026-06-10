// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_messages2.dart';/// Specify custom certificate settings for BYO-PKI. This field is deprecated; use `certificate` instead.
@immutable final class ZeroTrustAccountsGetZeroTrustCertificateConfigurationResponse4Xx {const ZeroTrustAccountsGetZeroTrustCertificateConfigurationResponse4Xx({required this.enabled, required this.errors, required this.messages, required this.result, required this.success, this.bindingStatus, this.id, this.updatedAt, });

factory ZeroTrustAccountsGetZeroTrustCertificateConfigurationResponse4Xx.fromJson(Map<String, dynamic> json) { return ZeroTrustAccountsGetZeroTrustCertificateConfigurationResponse4Xx(
  bindingStatus: json['binding_status'] as String?,
  enabled: json['enabled'] as bool?,
  id: json['id'] as String?,
  updatedAt: json['updated_at'] != null ? DateTime.parse(json['updated_at'] as String) : null,
  errors: (json['errors'] as List<dynamic>).map((e) => ZeroTrustGatewayMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ZeroTrustGatewayMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: json['result'] as Map<String, dynamic>?,
  success: json['success'] as bool,
); }

/// Indicate the internal certificate status.
final String? bindingStatus;

/// Specify whether to enable a custom certificate authority for signing Gateway traffic.
final bool? enabled;

/// Specify the UUID of the certificate (ID from MTLS certificate store).
final String? id;

final DateTime? updatedAt;

final List<ZeroTrustGatewayMessages2> errors;

final List<ZeroTrustGatewayMessages2> messages;

final Map<String,dynamic>? result;

/// Indicate whether the API call was successful.
final bool success;

Map<String, dynamic> toJson() { return {
  'binding_status': ?bindingStatus,
  'enabled': ?enabled,
  'id': ?id,
  if (updatedAt != null) 'updated_at': updatedAt?.toIso8601String(),
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': ?result,
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
ZeroTrustAccountsGetZeroTrustCertificateConfigurationResponse4Xx copyWith({String Function()? bindingStatus, bool? Function()? enabled, String Function()? id, DateTime Function()? updatedAt, List<ZeroTrustGatewayMessages2>? errors, List<ZeroTrustGatewayMessages2>? messages, Map<String, dynamic>? Function()? result, bool? success, }) { return ZeroTrustAccountsGetZeroTrustCertificateConfigurationResponse4Xx(
  bindingStatus: bindingStatus != null ? bindingStatus() : this.bindingStatus,
  enabled: enabled != null ? enabled() : this.enabled,
  id: id != null ? id() : this.id,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result != null ? result() : this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustAccountsGetZeroTrustCertificateConfigurationResponse4Xx &&
          bindingStatus == other.bindingStatus &&
          enabled == other.enabled &&
          id == other.id &&
          updatedAt == other.updatedAt &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(bindingStatus, enabled, id, updatedAt, Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'ZeroTrustAccountsGetZeroTrustCertificateConfigurationResponse4Xx(bindingStatus: $bindingStatus, enabled: $enabled, id: $id, updatedAt: $updatedAt, errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
