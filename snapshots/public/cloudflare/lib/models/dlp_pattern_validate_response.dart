// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dlp_regex_validation_result.dart';final class DlpPatternValidateResponse {const DlpPatternValidateResponse({this.result});

factory DlpPatternValidateResponse.fromJson(Map<String, dynamic> json) { return DlpPatternValidateResponse(
  result: json['result'] != null ? DlpRegexValidationResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DlpRegexValidationResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpPatternValidateResponse copyWith({DlpRegexValidationResult Function()? result}) { return DlpPatternValidateResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpPatternValidateResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpPatternValidateResponse(result: $result)'; } 
 }
