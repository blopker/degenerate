// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_ssl_for_a_zone_list_ssl_configurations_response4xx_result_info.dart';import 'tls_certificates_and_hostnames_messages2.dart';@immutable final class CustomSslForAZoneListSslConfigurationsResponse4xx {const CustomSslForAZoneListSslConfigurationsResponse4xx({required this.errors, required this.messages, required this.success, required this.result, this.resultInfo, });

factory CustomSslForAZoneListSslConfigurationsResponse4xx.fromJson(Map<String, dynamic> json) {return CustomSslForAZoneListSslConfigurationsResponse4xx(
  errors: (json['errors'] as List<dynamic>).map((e) => TlsCertificatesAndHostnamesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => TlsCertificatesAndHostnamesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? CustomSslForAZoneListSslConfigurationsResponse4xxResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: json['result'] as Map<String, dynamic>?,
);}

final List<TlsCertificatesAndHostnamesMessages2> errors;

final List<TlsCertificatesAndHostnamesMessages2> messages;

/// Whether the API call was successful.
final bool success;

final CustomSslForAZoneListSslConfigurationsResponse4xxResultInfo? resultInfo;

final Map<String,dynamic>? result;

Map<String, dynamic> toJson() {return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  'result': result,
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result');}
CustomSslForAZoneListSslConfigurationsResponse4xx copyWith({List<TlsCertificatesAndHostnamesMessages2>? errors, List<TlsCertificatesAndHostnamesMessages2>? messages, bool? success, CustomSslForAZoneListSslConfigurationsResponse4xxResultInfo? Function()? resultInfo, Map<String, dynamic>? Function()? result, }) {return CustomSslForAZoneListSslConfigurationsResponse4xx(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is CustomSslForAZoneListSslConfigurationsResponse4xx &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          result == other.result;}
@override int get hashCode {return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, result);}
@override String toString() {return 'CustomSslForAZoneListSslConfigurationsResponse4xx(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)';}
}
