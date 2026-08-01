// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_security_validation_status.dart';@immutable final class EmailSecurityGetMessageDetectionsResponseResultValidation {const EmailSecurityGetMessageDetectionsResponseResultValidation({this.comment = const Omittable.absent(), this.dkim = const Omittable.absent(), this.dmarc = const Omittable.absent(), this.spf = const Omittable.absent(), });

factory EmailSecurityGetMessageDetectionsResponseResultValidation.fromJson(Map<String, dynamic> json) { return EmailSecurityGetMessageDetectionsResponseResultValidation(
  comment: json.containsKey('comment') ? Omittable(json['comment'] as String?) : const Omittable.absent(),
  dkim: json.containsKey('dkim') ? Omittable(json['dkim'] != null ? EmailSecurityValidationStatus.fromJson(json['dkim'] as String) : null) : const Omittable.absent(),
  dmarc: json.containsKey('dmarc') ? Omittable(json['dmarc'] != null ? EmailSecurityValidationStatus.fromJson(json['dmarc'] as String) : null) : const Omittable.absent(),
  spf: json.containsKey('spf') ? Omittable(json['spf'] != null ? EmailSecurityValidationStatus.fromJson(json['spf'] as String) : null) : const Omittable.absent(),
); }

final Omittable<String?> comment;

final Omittable<EmailSecurityValidationStatus?> dkim;

final Omittable<EmailSecurityValidationStatus?> dmarc;

final Omittable<EmailSecurityValidationStatus?> spf;

Map<String, dynamic> toJson() { return {
  if (comment.isPresent) 'comment': comment.value,
  if (dkim.isPresent) 'dkim': dkim.value?.toJson(),
  if (dmarc.isPresent) 'dmarc': dmarc.value?.toJson(),
  if (spf.isPresent) 'spf': spf.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'comment', 'dkim', 'dmarc', 'spf'}.contains(key)); } 
EmailSecurityGetMessageDetectionsResponseResultValidation copyWith({Omittable<String?>? comment, Omittable<EmailSecurityValidationStatus?>? dkim, Omittable<EmailSecurityValidationStatus?>? dmarc, Omittable<EmailSecurityValidationStatus?>? spf, }) { return EmailSecurityGetMessageDetectionsResponseResultValidation(
  comment: comment ?? this.comment,
  dkim: dkim ?? this.dkim,
  dmarc: dmarc ?? this.dmarc,
  spf: spf ?? this.spf,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityGetMessageDetectionsResponseResultValidation &&
          comment == other.comment &&
          dkim == other.dkim &&
          dmarc == other.dmarc &&
          spf == other.spf; } 
@override int get hashCode { return Object.hash(comment, dkim, dmarc, spf); } 
@override String toString() { return 'EmailSecurityGetMessageDetectionsResponseResultValidation(comment: $comment, dkim: $dkim, dmarc: $dmarc, spf: $spf)'; } 
 }
