// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tls_certificates_and_hostnames_setting_object_delete.dart';final class TlsCertificatesAndHostnamesPerHostnameSettingsResponseDelete {const TlsCertificatesAndHostnamesPerHostnameSettingsResponseDelete({this.result});

factory TlsCertificatesAndHostnamesPerHostnameSettingsResponseDelete.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesPerHostnameSettingsResponseDelete(
  result: json['result'] != null ? TlsCertificatesAndHostnamesSettingObjectDelete.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TlsCertificatesAndHostnamesSettingObjectDelete? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TlsCertificatesAndHostnamesPerHostnameSettingsResponseDelete copyWith({TlsCertificatesAndHostnamesSettingObjectDelete Function()? result}) { return TlsCertificatesAndHostnamesPerHostnameSettingsResponseDelete(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesPerHostnameSettingsResponseDelete &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesPerHostnameSettingsResponseDelete(result: $result)'; } 
 }
