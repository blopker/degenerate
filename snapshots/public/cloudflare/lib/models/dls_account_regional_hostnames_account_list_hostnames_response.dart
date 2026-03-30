// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dls_regional_hostname_response.dart';final class DlsAccountRegionalHostnamesAccountListHostnamesResponse {const DlsAccountRegionalHostnamesAccountListHostnamesResponse({this.result});

factory DlsAccountRegionalHostnamesAccountListHostnamesResponse.fromJson(Map<String, dynamic> json) { return DlsAccountRegionalHostnamesAccountListHostnamesResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => DlsRegionalHostnameResponse.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<DlsRegionalHostnameResponse>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlsAccountRegionalHostnamesAccountListHostnamesResponse copyWith({List<DlsRegionalHostnameResponse> Function()? result}) { return DlsAccountRegionalHostnamesAccountListHostnamesResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlsAccountRegionalHostnamesAccountListHostnamesResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'DlsAccountRegionalHostnamesAccountListHostnamesResponse(result: $result)'; } 
 }
