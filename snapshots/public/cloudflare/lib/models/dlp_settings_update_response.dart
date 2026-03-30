// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dlp_dlp_settings.dart';final class DlpSettingsUpdateResponse {const DlpSettingsUpdateResponse({this.result});

factory DlpSettingsUpdateResponse.fromJson(Map<String, dynamic> json) { return DlpSettingsUpdateResponse(
  result: json['result'] != null ? DlpDlpSettings.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DlpDlpSettings? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpSettingsUpdateResponse copyWith({DlpDlpSettings Function()? result}) { return DlpSettingsUpdateResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpSettingsUpdateResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpSettingsUpdateResponse(result: $result)'; } 
 }
