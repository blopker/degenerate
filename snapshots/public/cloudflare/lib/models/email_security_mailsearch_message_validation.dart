// GENERATED CODE - DO NOT MODIFY BY HAND

import 'email_security_validation_status.dart';final class EmailSecurityMailsearchMessageValidation {const EmailSecurityMailsearchMessageValidation({this.comment, this.dkim, this.dmarc, this.spf, });

factory EmailSecurityMailsearchMessageValidation.fromJson(Map<String, dynamic> json) { return EmailSecurityMailsearchMessageValidation(
  comment: json['comment'] as String?,
  dkim: json['dkim'] != null ? EmailSecurityValidationStatus.fromJson(json['dkim'] as String) : null,
  dmarc: json['dmarc'] != null ? EmailSecurityValidationStatus.fromJson(json['dmarc'] as String) : null,
  spf: json['spf'] != null ? EmailSecurityValidationStatus.fromJson(json['spf'] as String) : null,
); }

final String? comment;

final EmailSecurityValidationStatus? dkim;

final EmailSecurityValidationStatus? dmarc;

final EmailSecurityValidationStatus? spf;

Map<String, dynamic> toJson() { return {
  'comment': ?comment,
  if (dkim != null) 'dkim': dkim?.toJson(),
  if (dmarc != null) 'dmarc': dmarc?.toJson(),
  if (spf != null) 'spf': spf?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'comment', 'dkim', 'dmarc', 'spf'}.contains(key)); } 
EmailSecurityMailsearchMessageValidation copyWith({String? Function()? comment, EmailSecurityValidationStatus? Function()? dkim, EmailSecurityValidationStatus? Function()? dmarc, EmailSecurityValidationStatus? Function()? spf, }) { return EmailSecurityMailsearchMessageValidation(
  comment: comment != null ? comment() : this.comment,
  dkim: dkim != null ? dkim() : this.dkim,
  dmarc: dmarc != null ? dmarc() : this.dmarc,
  spf: spf != null ? spf() : this.spf,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityMailsearchMessageValidation &&
          comment == other.comment &&
          dkim == other.dkim &&
          dmarc == other.dmarc &&
          spf == other.spf; } 
@override int get hashCode { return Object.hash(comment, dkim, dmarc, spf); } 
@override String toString() { return 'EmailSecurityMailsearchMessageValidation(comment: $comment, dkim: $dkim, dmarc: $dmarc, spf: $spf)'; } 
 }
