// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_security_disposition_label.dart';@immutable final class EmailSecurityGetMessageResponseResultFindings {const EmailSecurityGetMessageResponseResultFindings({this.attachment = const Omittable.absent(), this.detail = const Omittable.absent(), this.detection = const Omittable.absent(), this.field = const Omittable.absent(), this.name = const Omittable.absent(), this.portion = const Omittable.absent(), this.reason = const Omittable.absent(), this.score = const Omittable.absent(), this.value = const Omittable.absent(), });

factory EmailSecurityGetMessageResponseResultFindings.fromJson(Map<String, dynamic> json) { return EmailSecurityGetMessageResponseResultFindings(
  attachment: json.containsKey('attachment') ? Omittable(json['attachment'] as String?) : const Omittable.absent(),
  detail: json.containsKey('detail') ? Omittable(json['detail'] as String?) : const Omittable.absent(),
  detection: json.containsKey('detection') ? Omittable(json['detection'] != null ? EmailSecurityDispositionLabel.fromJson(json['detection'] as String) : null) : const Omittable.absent(),
  field: json.containsKey('field') ? Omittable(json['field'] as String?) : const Omittable.absent(),
  name: json.containsKey('name') ? Omittable(json['name'] as String?) : const Omittable.absent(),
  portion: json.containsKey('portion') ? Omittable(json['portion'] as String?) : const Omittable.absent(),
  reason: json.containsKey('reason') ? Omittable(json['reason'] as String?) : const Omittable.absent(),
  score: json.containsKey('score') ? Omittable(json['score'] != null ? (json['score'] as num).toDouble() : null) : const Omittable.absent(),
  value: json.containsKey('value') ? Omittable(json['value'] as String?) : const Omittable.absent(),
); }

final Omittable<String?> attachment;

final Omittable<String?> detail;

final Omittable<EmailSecurityDispositionLabel?> detection;

final Omittable<String?> field;

final Omittable<String?> name;

final Omittable<String?> portion;

final Omittable<String?> reason;

final Omittable<double?> score;

final Omittable<String?> value;

Map<String, dynamic> toJson() { return {
  if (attachment.isPresent) 'attachment': attachment.value,
  if (detail.isPresent) 'detail': detail.value,
  if (detection.isPresent) 'detection': detection.value?.toJson(),
  if (field.isPresent) 'field': field.value,
  if (name.isPresent) 'name': name.value,
  if (portion.isPresent) 'portion': portion.value,
  if (reason.isPresent) 'reason': reason.value,
  if (score.isPresent) 'score': score.value,
  if (value.isPresent) 'value': value.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'attachment', 'detail', 'detection', 'field', 'name', 'portion', 'reason', 'score', 'value'}.contains(key)); } 
EmailSecurityGetMessageResponseResultFindings copyWith({Omittable<String?>? attachment, Omittable<String?>? detail, Omittable<EmailSecurityDispositionLabel?>? detection, Omittable<String?>? field, Omittable<String?>? name, Omittable<String?>? portion, Omittable<String?>? reason, Omittable<double?>? score, Omittable<String?>? value, }) { return EmailSecurityGetMessageResponseResultFindings(
  attachment: attachment ?? this.attachment,
  detail: detail ?? this.detail,
  detection: detection ?? this.detection,
  field: field ?? this.field,
  name: name ?? this.name,
  portion: portion ?? this.portion,
  reason: reason ?? this.reason,
  score: score ?? this.score,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityGetMessageResponseResultFindings &&
          attachment == other.attachment &&
          detail == other.detail &&
          detection == other.detection &&
          field == other.field &&
          name == other.name &&
          portion == other.portion &&
          reason == other.reason &&
          score == other.score &&
          value == other.value; } 
@override int get hashCode { return Object.hash(attachment, detail, detection, field, name, portion, reason, score, value); } 
@override String toString() { return 'EmailSecurityGetMessageResponseResultFindings(attachment: $attachment, detail: $detail, detection: $detection, field: $field, name: $name, portion: $portion, reason: $reason, score: $score, value: $value)'; } 
 }
