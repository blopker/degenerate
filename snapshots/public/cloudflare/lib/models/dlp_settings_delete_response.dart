// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_dlp_settings.dart';@immutable final class DlpSettingsDeleteResponse {const DlpSettingsDeleteResponse({this.result});

factory DlpSettingsDeleteResponse.fromJson(Map<String, dynamic> json) { return DlpSettingsDeleteResponse(
  result: json['result'] != null ? DlpDlpSettings.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DlpDlpSettings? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpSettingsDeleteResponse copyWith({DlpDlpSettings Function()? result}) { return DlpSettingsDeleteResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpSettingsDeleteResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpSettingsDeleteResponse(result: $result)'; } 
 }
