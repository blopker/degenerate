// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_dlp_settings.dart';@immutable final class DlpSettingsGetResponse {const DlpSettingsGetResponse({this.result});

factory DlpSettingsGetResponse.fromJson(Map<String, dynamic> json) { return DlpSettingsGetResponse(
  result: json['result'] != null ? DlpDlpSettings.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DlpDlpSettings? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpSettingsGetResponse copyWith({DlpDlpSettings Function()? result}) { return DlpSettingsGetResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpSettingsGetResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpSettingsGetResponse(result: $result)'; } 
 }
