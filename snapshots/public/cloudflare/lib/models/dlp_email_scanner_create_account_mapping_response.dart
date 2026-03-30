// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dlp_addin_account_mapping.dart';final class DlpEmailScannerCreateAccountMappingResponse {const DlpEmailScannerCreateAccountMappingResponse({this.result});

factory DlpEmailScannerCreateAccountMappingResponse.fromJson(Map<String, dynamic> json) { return DlpEmailScannerCreateAccountMappingResponse(
  result: json['result'] != null ? DlpAddinAccountMapping.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DlpAddinAccountMapping? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpEmailScannerCreateAccountMappingResponse copyWith({DlpAddinAccountMapping Function()? result}) { return DlpEmailScannerCreateAccountMappingResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpEmailScannerCreateAccountMappingResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpEmailScannerCreateAccountMappingResponse(result: $result)'; } 
 }
