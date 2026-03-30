// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dlp_payload_log_setting.dart';final class DlpPayloadLogGetResponse {const DlpPayloadLogGetResponse({this.result});

factory DlpPayloadLogGetResponse.fromJson(Map<String, dynamic> json) { return DlpPayloadLogGetResponse(
  result: json['result'] != null ? DlpPayloadLogSetting.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DlpPayloadLogSetting? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpPayloadLogGetResponse copyWith({DlpPayloadLogSetting Function()? result}) { return DlpPayloadLogGetResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpPayloadLogGetResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpPayloadLogGetResponse(result: $result)'; } 
 }
