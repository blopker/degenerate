// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_hostname_aop_response_collection_result_info.dart';import 'tls_certificates_and_hostnames_hostname_authenticated_origin_pull.dart';import 'tls_certificates_and_hostnames_messages2.dart';@immutable final class TlsCertificatesAndHostnamesHostnameAopResponseCollection {const TlsCertificatesAndHostnamesHostnameAopResponseCollection({required this.errors, required this.messages, required this.success, this.resultInfo, this.result, });

factory TlsCertificatesAndHostnamesHostnameAopResponseCollection.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesHostnameAopResponseCollection(
  errors: (json['errors'] as List<dynamic>).map((e) => TlsCertificatesAndHostnamesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => TlsCertificatesAndHostnamesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? TlsCertificatesAndHostnamesHostnameAopResponseCollectionResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: (json['result'] as List<dynamic>?)?.map((e) => TlsCertificatesAndHostnamesHostnameAuthenticatedOriginPull.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<TlsCertificatesAndHostnamesMessages2> errors;

final List<TlsCertificatesAndHostnamesMessages2> messages;

/// Whether the API call was successful.
final bool success;

final TlsCertificatesAndHostnamesHostnameAopResponseCollectionResultInfo? resultInfo;

final List<TlsCertificatesAndHostnamesHostnameAuthenticatedOriginPull>? result;

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
TlsCertificatesAndHostnamesHostnameAopResponseCollection copyWith({List<TlsCertificatesAndHostnamesMessages2>? errors, List<TlsCertificatesAndHostnamesMessages2>? messages, bool? success, TlsCertificatesAndHostnamesHostnameAopResponseCollectionResultInfo Function()? resultInfo, List<TlsCertificatesAndHostnamesHostnameAuthenticatedOriginPull> Function()? result, }) { return TlsCertificatesAndHostnamesHostnameAopResponseCollection(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesHostnameAopResponseCollection &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'TlsCertificatesAndHostnamesHostnameAopResponseCollection(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
