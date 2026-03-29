// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dlp_payload_log_setting_update.dart';/// Request model for updating DLP account-level settings.
/// All fields are optional. Missing fields behave differently for PUT vs PATCH:
/// - PUT: missing fields reset to initial (unconfigured) values.
/// - PATCH: missing fields keep existing values.
final class DlpDlpSettingsUpdate {const DlpDlpSettingsUpdate({this.aiContextAnalysis = false, this.ocr = false, this.payloadLogging, });

factory DlpDlpSettingsUpdate.fromJson(Map<String, dynamic> json) { return DlpDlpSettingsUpdate(
  aiContextAnalysis: json.containsKey('ai_context_analysis') ? json['ai_context_analysis'] as bool? : false,
  ocr: json.containsKey('ocr') ? json['ocr'] as bool? : false,
  payloadLogging: json['payload_logging'] != null ? DlpPayloadLogSettingUpdate.fromJson(json['payload_logging'] as Map<String, dynamic>) : null,
); }

/// Whether AI context analysis is enabled at the account level.
final bool? aiContextAnalysis;

/// Whether OCR is enabled at the account level.
final bool? ocr;

final DlpPayloadLogSettingUpdate? payloadLogging;

Map<String, dynamic> toJson() { return {
  'ai_context_analysis': ?aiContextAnalysis,
  'ocr': ?ocr,
  if (payloadLogging != null) 'payload_logging': payloadLogging?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
DlpDlpSettingsUpdate copyWith({bool? Function()? aiContextAnalysis, bool? Function()? ocr, DlpPayloadLogSettingUpdate Function()? payloadLogging, }) { return DlpDlpSettingsUpdate(
  aiContextAnalysis: aiContextAnalysis != null ? aiContextAnalysis() : this.aiContextAnalysis,
  ocr: ocr != null ? ocr() : this.ocr,
  payloadLogging: payloadLogging != null ? payloadLogging() : this.payloadLogging,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpDlpSettingsUpdate &&
          aiContextAnalysis == other.aiContextAnalysis &&
          ocr == other.ocr &&
          payloadLogging == other.payloadLogging; } 
@override int get hashCode { return Object.hash(aiContextAnalysis, ocr, payloadLogging); } 
@override String toString() { return 'DlpDlpSettingsUpdate(aiContextAnalysis: $aiContextAnalysis, ocr: $ocr, payloadLogging: $payloadLogging)'; } 
 }
