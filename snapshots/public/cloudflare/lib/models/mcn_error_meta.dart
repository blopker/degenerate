// GENERATED CODE - DO NOT MODIFY BY HAND

final class McnErrorMeta {const McnErrorMeta({this.l10nKey, this.loggableError, this.templateData, this.traceId, });

factory McnErrorMeta.fromJson(Map<String, dynamic> json) { return McnErrorMeta(
  l10nKey: json['l10n_key'] as String?,
  loggableError: json['loggable_error'] as String?,
  templateData: (json['template_data'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  traceId: json['trace_id'] as String?,
); }

final String? l10nKey;

final String? loggableError;

final Map<String,dynamic>? templateData;

final String? traceId;

Map<String, dynamic> toJson() { return {
  'l10n_key': ?l10nKey,
  'loggable_error': ?loggableError,
  'template_data': ?templateData,
  'trace_id': ?traceId,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
McnErrorMeta copyWith({String Function()? l10nKey, String Function()? loggableError, Map<String, dynamic> Function()? templateData, String Function()? traceId, }) { return McnErrorMeta(
  l10nKey: l10nKey != null ? l10nKey() : this.l10nKey,
  loggableError: loggableError != null ? loggableError() : this.loggableError,
  templateData: templateData != null ? templateData() : this.templateData,
  traceId: traceId != null ? traceId() : this.traceId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnErrorMeta &&
          l10nKey == other.l10nKey &&
          loggableError == other.loggableError &&
          templateData == other.templateData &&
          traceId == other.traceId; } 
@override int get hashCode { return Object.hash(l10nKey, loggableError, templateData, traceId); } 
@override String toString() { return 'McnErrorMeta(l10nKey: $l10nKey, loggableError: $loggableError, templateData: $templateData, traceId: $traceId)'; } 
 }
