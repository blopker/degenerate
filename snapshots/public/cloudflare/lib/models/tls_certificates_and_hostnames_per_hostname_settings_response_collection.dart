// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_per_hostname_settings_response_collection_result.dart';import 'tls_certificates_and_hostnames_per_hostname_settings_response_collection_result_info.dart';final class TlsCertificatesAndHostnamesPerHostnameSettingsResponseCollection {const TlsCertificatesAndHostnamesPerHostnameSettingsResponseCollection({this.result, this.resultInfo, });

factory TlsCertificatesAndHostnamesPerHostnameSettingsResponseCollection.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesPerHostnameSettingsResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => TlsCertificatesAndHostnamesPerHostnameSettingsResponseCollectionResult.fromJson(e as Map<String, dynamic>)).toList(),
  resultInfo: json['result_info'] != null ? TlsCertificatesAndHostnamesPerHostnameSettingsResponseCollectionResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<TlsCertificatesAndHostnamesPerHostnameSettingsResponseCollectionResult>? result;

final TlsCertificatesAndHostnamesPerHostnameSettingsResponseCollectionResultInfo? resultInfo;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result', 'result_info'}.contains(key)); } 
TlsCertificatesAndHostnamesPerHostnameSettingsResponseCollection copyWith({List<TlsCertificatesAndHostnamesPerHostnameSettingsResponseCollectionResult> Function()? result, TlsCertificatesAndHostnamesPerHostnameSettingsResponseCollectionResultInfo Function()? resultInfo, }) { return TlsCertificatesAndHostnamesPerHostnameSettingsResponseCollection(
  result: result != null ? result() : this.result,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesPerHostnameSettingsResponseCollection &&
          listEquals(result, other.result) &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(result ?? const []), resultInfo); } 
@override String toString() { return 'TlsCertificatesAndHostnamesPerHostnameSettingsResponseCollection(result: $result, resultInfo: $resultInfo)'; } 
 }
