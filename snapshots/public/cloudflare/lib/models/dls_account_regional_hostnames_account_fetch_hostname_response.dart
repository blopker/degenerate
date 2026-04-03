// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dls_regional_hostname_response.dart';@immutable final class DlsAccountRegionalHostnamesAccountFetchHostnameResponse {const DlsAccountRegionalHostnamesAccountFetchHostnameResponse({this.result});

factory DlsAccountRegionalHostnamesAccountFetchHostnameResponse.fromJson(Map<String, dynamic> json) { return DlsAccountRegionalHostnamesAccountFetchHostnameResponse(
  result: json['result'] != null ? DlsRegionalHostnameResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DlsRegionalHostnameResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlsAccountRegionalHostnamesAccountFetchHostnameResponse copyWith({DlsRegionalHostnameResponse Function()? result}) { return DlsAccountRegionalHostnamesAccountFetchHostnameResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlsAccountRegionalHostnamesAccountFetchHostnameResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlsAccountRegionalHostnamesAccountFetchHostnameResponse(result: $result)'; } 
 }
