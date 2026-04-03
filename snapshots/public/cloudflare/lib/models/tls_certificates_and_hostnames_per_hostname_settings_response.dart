// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_setting_object.dart';@immutable final class TlsCertificatesAndHostnamesPerHostnameSettingsResponse {const TlsCertificatesAndHostnamesPerHostnameSettingsResponse({this.result});

factory TlsCertificatesAndHostnamesPerHostnameSettingsResponse.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesPerHostnameSettingsResponse(
  result: json['result'] != null ? TlsCertificatesAndHostnamesSettingObject.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TlsCertificatesAndHostnamesSettingObject? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TlsCertificatesAndHostnamesPerHostnameSettingsResponse copyWith({TlsCertificatesAndHostnamesSettingObject Function()? result}) { return TlsCertificatesAndHostnamesPerHostnameSettingsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesPerHostnameSettingsResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesPerHostnameSettingsResponse(result: $result)'; } 
 }
