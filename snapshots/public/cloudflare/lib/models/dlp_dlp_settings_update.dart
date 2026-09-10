// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_payload_log_setting_update.dart';/// Request model for updating DLP account-level settings.
/// All fields are optional. Missing fields behave differently for PUT vs PATCH:
/// - PUT: missing fields reset to initial (unconfigured) values.
/// - PATCH: missing fields keep existing values.
@immutable final class DlpDlpSettingsUpdate {const DlpDlpSettingsUpdate({this.aiContextAnalysis = const Omittable.absent(), this.ocr = const Omittable.absent(), this.payloadLogging, });

factory DlpDlpSettingsUpdate.fromJson(Map<String, dynamic> json) {return DlpDlpSettingsUpdate(
  aiContextAnalysis: json.containsKey('ai_context_analysis') ? Omittable(json['ai_context_analysis'] as bool?) : const Omittable.absent(),
  ocr: json.containsKey('ocr') ? Omittable(json['ocr'] as bool?) : const Omittable.absent(),
  payloadLogging: json['payload_logging'] != null ? DlpPayloadLogSettingUpdate.fromJson(json['payload_logging'] as Map<String, dynamic>) : null,
);}

/// Whether AI context analysis is enabled at the account level.
final Omittable<bool?> aiContextAnalysis;

/// Whether OCR is enabled at the account level.
final Omittable<bool?> ocr;

final DlpPayloadLogSettingUpdate? payloadLogging;

/// The value with the schema default applied when absent.
bool? get aiContextAnalysisOrDefault {return aiContextAnalysis.valueOr(false);}
/// The value with the schema default applied when absent.
bool? get ocrOrDefault {return ocr.valueOr(false);}
Map<String, dynamic> toJson() {return {
  if (aiContextAnalysis.isPresent) 'ai_context_analysis': aiContextAnalysis.value,
  if (ocr.isPresent) 'ocr': ocr.value,
  if (payloadLogging != null) 'payload_logging': payloadLogging?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'ai_context_analysis', 'ocr', 'payload_logging'}.contains(key));}
DlpDlpSettingsUpdate copyWith({Omittable<bool?>? aiContextAnalysis, Omittable<bool?>? ocr, DlpPayloadLogSettingUpdate? Function()? payloadLogging, }) {return DlpDlpSettingsUpdate(
  aiContextAnalysis: aiContextAnalysis ?? this.aiContextAnalysis,
  ocr: ocr ?? this.ocr,
  payloadLogging: payloadLogging != null ? payloadLogging() : this.payloadLogging,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is DlpDlpSettingsUpdate &&
          aiContextAnalysis == other.aiContextAnalysis &&
          ocr == other.ocr &&
          payloadLogging == other.payloadLogging;}
@override int get hashCode {return Object.hash(aiContextAnalysis, ocr, payloadLogging);}
@override String toString() {return 'DlpDlpSettingsUpdate(aiContextAnalysis: $aiContextAnalysis, ocr: $ocr, payloadLogging: $payloadLogging)';}
}
