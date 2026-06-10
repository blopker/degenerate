// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_components_schemas_certificate_object.dart';import 'tls_certificates_and_hostnames_messages2.dart';import 'tls_certificates_and_hostnames_mtls_management_components_schemas_certificate_response_collection_result_info.dart';@immutable final class TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseCollection {const TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseCollection({required this.errors, required this.messages, required this.success, this.resultInfo, this.result, });

factory TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseCollection.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseCollection(
  errors: (json['errors'] as List<dynamic>).map((e) => TlsCertificatesAndHostnamesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => TlsCertificatesAndHostnamesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseCollectionResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: (json['result'] as List<dynamic>?)?.map((e) => TlsCertificatesAndHostnamesComponentsSchemasCertificateObject.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<TlsCertificatesAndHostnamesMessages2> errors;

final List<TlsCertificatesAndHostnamesMessages2> messages;

/// Whether the API call was successful.
final bool success;

final TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseCollectionResultInfo? resultInfo;

final List<TlsCertificatesAndHostnamesComponentsSchemasCertificateObject>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseCollection copyWith({List<TlsCertificatesAndHostnamesMessages2>? errors, List<TlsCertificatesAndHostnamesMessages2>? messages, bool? success, TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseCollectionResultInfo Function()? resultInfo, List<TlsCertificatesAndHostnamesComponentsSchemasCertificateObject> Function()? result, }) { return TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseCollection(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseCollection &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseCollection(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
