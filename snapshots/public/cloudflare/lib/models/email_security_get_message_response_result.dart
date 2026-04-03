// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_security_disposition_label.dart';import 'email_security_get_message_response_result_findings.dart';import 'email_security_get_message_response_result_properties.dart';import 'email_security_get_message_response_result_validation.dart';import 'email_security_message_delivery_mode.dart';import 'email_security_postfix_id.dart';@immutable final class EmailSecurityGetMessageResponseResultPostDeliveryOperations {const EmailSecurityGetMessageResponseResultPostDeliveryOperations._(this.value);

factory EmailSecurityGetMessageResponseResultPostDeliveryOperations.fromJson(String json) { return switch (json) {
  'PREVIEW' => preview,
  'QUARANTINE_RELEASE' => quarantineRelease,
  'SUBMISSION' => submission,
  'MOVE' => move,
  _ => EmailSecurityGetMessageResponseResultPostDeliveryOperations._(json),
}; }

static const EmailSecurityGetMessageResponseResultPostDeliveryOperations preview = EmailSecurityGetMessageResponseResultPostDeliveryOperations._('PREVIEW');

static const EmailSecurityGetMessageResponseResultPostDeliveryOperations quarantineRelease = EmailSecurityGetMessageResponseResultPostDeliveryOperations._('QUARANTINE_RELEASE');

static const EmailSecurityGetMessageResponseResultPostDeliveryOperations submission = EmailSecurityGetMessageResponseResultPostDeliveryOperations._('SUBMISSION');

static const EmailSecurityGetMessageResponseResultPostDeliveryOperations move = EmailSecurityGetMessageResponseResultPostDeliveryOperations._('MOVE');

static const List<EmailSecurityGetMessageResponseResultPostDeliveryOperations> values = [preview, quarantineRelease, submission, move];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EmailSecurityGetMessageResponseResultPostDeliveryOperations && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EmailSecurityGetMessageResponseResultPostDeliveryOperations($value)'; } 
 }
@immutable final class EmailSecurityGetMessageResponseResult {const EmailSecurityGetMessageResponseResult({required this.actionLog, required this.clientRecipients, required this.detectionReasons, required this.isPhishSubmission, required this.isQuarantined, required this.postfixId, required this.properties, required this.ts, required this.id, this.alertId, this.deliveryMode, this.edfHash, this.envelopeFrom, this.envelopeTo, this.finalDisposition, this.findings, this.from, this.fromName, this.htmltextStructureHash, this.messageId, this.postDeliveryOperations, this.postfixIdOutbound, this.replyto, this.sentDate, this.subject, this.threatCategories, this.to, this.toName, this.validation, });

factory EmailSecurityGetMessageResponseResult.fromJson(Map<String, dynamic> json) { return EmailSecurityGetMessageResponseResult(
  actionLog: json['action_log'],
  alertId: json['alert_id'] as String?,
  clientRecipients: (json['client_recipients'] as List<dynamic>).map((e) => e as String).toList(),
  deliveryMode: json['delivery_mode'] != null ? EmailSecurityMessageDeliveryMode.fromJson(json['delivery_mode'] as String) : null,
  detectionReasons: (json['detection_reasons'] as List<dynamic>).map((e) => e as String).toList(),
  edfHash: json['edf_hash'] as String?,
  envelopeFrom: json['envelope_from'] as String?,
  envelopeTo: (json['envelope_to'] as List<dynamic>?)?.map((e) => e as String).toList(),
  finalDisposition: json['final_disposition'] != null ? EmailSecurityDispositionLabel.fromJson(json['final_disposition'] as String) : null,
  findings: (json['findings'] as List<dynamic>?)?.map((e) => EmailSecurityGetMessageResponseResultFindings.fromJson(e as Map<String, dynamic>)).toList(),
  from: json['from'] as String?,
  fromName: json['from_name'] as String?,
  htmltextStructureHash: json['htmltext_structure_hash'] as String?,
  isPhishSubmission: json['is_phish_submission'] as bool,
  isQuarantined: json['is_quarantined'] as bool,
  messageId: json['message_id'] as String?,
  postDeliveryOperations: (json['post_delivery_operations'] as List<dynamic>?)?.map((e) => EmailSecurityGetMessageResponseResultPostDeliveryOperations.fromJson(e as String)).toList(),
  postfixId: EmailSecurityPostfixId.fromJson(json['postfix_id'] as String),
  postfixIdOutbound: json['postfix_id_outbound'] as String?,
  properties: EmailSecurityGetMessageResponseResultProperties.fromJson(json['properties'] as Map<String, dynamic>),
  replyto: json['replyto'] as String?,
  sentDate: json['sent_date'] as String?,
  subject: json['subject'] as String?,
  threatCategories: (json['threat_categories'] as List<dynamic>?)?.map((e) => e as String).toList(),
  to: (json['to'] as List<dynamic>?)?.map((e) => e as String).toList(),
  toName: (json['to_name'] as List<dynamic>?)?.map((e) => e as String).toList(),
  ts: json['ts'] as String,
  validation: json['validation'] != null ? EmailSecurityGetMessageResponseResultValidation.fromJson(json['validation'] as Map<String, dynamic>) : null,
  id: json['id'] as String,
); }

final dynamic actionLog;

final String? alertId;

final List<String> clientRecipients;

final EmailSecurityMessageDeliveryMode? deliveryMode;

final List<String> detectionReasons;

final String? edfHash;

final String? envelopeFrom;

final List<String>? envelopeTo;

final EmailSecurityDispositionLabel? finalDisposition;

final List<EmailSecurityGetMessageResponseResultFindings>? findings;

final String? from;

final String? fromName;

final String? htmltextStructureHash;

final bool isPhishSubmission;

final bool isQuarantined;

final String? messageId;

final List<EmailSecurityGetMessageResponseResultPostDeliveryOperations>? postDeliveryOperations;

/// The identifier of the message.
final EmailSecurityPostfixId postfixId;

final String? postfixIdOutbound;

final EmailSecurityGetMessageResponseResultProperties properties;

final String? replyto;

final String? sentDate;

final String? subject;

final List<String>? threatCategories;

final List<String>? to;

final List<String>? toName;

final String ts;

final EmailSecurityGetMessageResponseResultValidation? validation;

final String id;

Map<String, dynamic> toJson() { return {
  'action_log': ?actionLog,
  'alert_id': ?alertId,
  'client_recipients': clientRecipients,
  if (deliveryMode != null) 'delivery_mode': deliveryMode?.toJson(),
  'detection_reasons': detectionReasons,
  'edf_hash': ?edfHash,
  'envelope_from': ?envelopeFrom,
  'envelope_to': ?envelopeTo,
  if (finalDisposition != null) 'final_disposition': finalDisposition?.toJson(),
  if (findings != null) 'findings': findings?.map((e) => e.toJson()).toList(),
  'from': ?from,
  'from_name': ?fromName,
  'htmltext_structure_hash': ?htmltextStructureHash,
  'is_phish_submission': isPhishSubmission,
  'is_quarantined': isQuarantined,
  'message_id': ?messageId,
  if (postDeliveryOperations != null) 'post_delivery_operations': postDeliveryOperations?.map((e) => e.toJson()).toList(),
  'postfix_id': postfixId.toJson(),
  'postfix_id_outbound': ?postfixIdOutbound,
  'properties': properties.toJson(),
  'replyto': ?replyto,
  'sent_date': ?sentDate,
  'subject': ?subject,
  'threat_categories': ?threatCategories,
  'to': ?to,
  'to_name': ?toName,
  'ts': ts,
  if (validation != null) 'validation': validation?.toJson(),
  'id': id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action_log') &&
      json.containsKey('client_recipients') &&
      json.containsKey('detection_reasons') &&
      json.containsKey('is_phish_submission') && json['is_phish_submission'] is bool &&
      json.containsKey('is_quarantined') && json['is_quarantined'] is bool &&
      json.containsKey('postfix_id') &&
      json.containsKey('properties') &&
      json.containsKey('ts') && json['ts'] is String &&
      json.containsKey('id') && json['id'] is String; } 
EmailSecurityGetMessageResponseResult copyWith({dynamic Function()? actionLog, String? Function()? alertId, List<String>? clientRecipients, EmailSecurityMessageDeliveryMode? Function()? deliveryMode, List<String>? detectionReasons, String? Function()? edfHash, String? Function()? envelopeFrom, List<String>? Function()? envelopeTo, EmailSecurityDispositionLabel? Function()? finalDisposition, List<EmailSecurityGetMessageResponseResultFindings>? Function()? findings, String? Function()? from, String? Function()? fromName, String? Function()? htmltextStructureHash, bool? isPhishSubmission, bool? isQuarantined, String? Function()? messageId, List<EmailSecurityGetMessageResponseResultPostDeliveryOperations> Function()? postDeliveryOperations, EmailSecurityPostfixId? postfixId, String? Function()? postfixIdOutbound, EmailSecurityGetMessageResponseResultProperties? properties, String? Function()? replyto, String? Function()? sentDate, String? Function()? subject, List<String>? Function()? threatCategories, List<String>? Function()? to, List<String>? Function()? toName, String? ts, EmailSecurityGetMessageResponseResultValidation? Function()? validation, String? id, }) { return EmailSecurityGetMessageResponseResult(
  actionLog: actionLog != null ? actionLog() : this.actionLog,
  alertId: alertId != null ? alertId() : this.alertId,
  clientRecipients: clientRecipients ?? this.clientRecipients,
  deliveryMode: deliveryMode != null ? deliveryMode() : this.deliveryMode,
  detectionReasons: detectionReasons ?? this.detectionReasons,
  edfHash: edfHash != null ? edfHash() : this.edfHash,
  envelopeFrom: envelopeFrom != null ? envelopeFrom() : this.envelopeFrom,
  envelopeTo: envelopeTo != null ? envelopeTo() : this.envelopeTo,
  finalDisposition: finalDisposition != null ? finalDisposition() : this.finalDisposition,
  findings: findings != null ? findings() : this.findings,
  from: from != null ? from() : this.from,
  fromName: fromName != null ? fromName() : this.fromName,
  htmltextStructureHash: htmltextStructureHash != null ? htmltextStructureHash() : this.htmltextStructureHash,
  isPhishSubmission: isPhishSubmission ?? this.isPhishSubmission,
  isQuarantined: isQuarantined ?? this.isQuarantined,
  messageId: messageId != null ? messageId() : this.messageId,
  postDeliveryOperations: postDeliveryOperations != null ? postDeliveryOperations() : this.postDeliveryOperations,
  postfixId: postfixId ?? this.postfixId,
  postfixIdOutbound: postfixIdOutbound != null ? postfixIdOutbound() : this.postfixIdOutbound,
  properties: properties ?? this.properties,
  replyto: replyto != null ? replyto() : this.replyto,
  sentDate: sentDate != null ? sentDate() : this.sentDate,
  subject: subject != null ? subject() : this.subject,
  threatCategories: threatCategories != null ? threatCategories() : this.threatCategories,
  to: to != null ? to() : this.to,
  toName: toName != null ? toName() : this.toName,
  ts: ts ?? this.ts,
  validation: validation != null ? validation() : this.validation,
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityGetMessageResponseResult &&
          actionLog == other.actionLog &&
          alertId == other.alertId &&
          listEquals(clientRecipients, other.clientRecipients) &&
          deliveryMode == other.deliveryMode &&
          listEquals(detectionReasons, other.detectionReasons) &&
          edfHash == other.edfHash &&
          envelopeFrom == other.envelopeFrom &&
          listEquals(envelopeTo, other.envelopeTo) &&
          finalDisposition == other.finalDisposition &&
          listEquals(findings, other.findings) &&
          from == other.from &&
          fromName == other.fromName &&
          htmltextStructureHash == other.htmltextStructureHash &&
          isPhishSubmission == other.isPhishSubmission &&
          isQuarantined == other.isQuarantined &&
          messageId == other.messageId &&
          listEquals(postDeliveryOperations, other.postDeliveryOperations) &&
          postfixId == other.postfixId &&
          postfixIdOutbound == other.postfixIdOutbound &&
          properties == other.properties &&
          replyto == other.replyto &&
          sentDate == other.sentDate &&
          subject == other.subject &&
          listEquals(threatCategories, other.threatCategories) &&
          listEquals(to, other.to) &&
          listEquals(toName, other.toName) &&
          ts == other.ts &&
          validation == other.validation &&
          id == other.id; } 
@override int get hashCode { return Object.hashAll([actionLog, alertId, Object.hashAll(clientRecipients), deliveryMode, Object.hashAll(detectionReasons), edfHash, envelopeFrom, Object.hashAll(envelopeTo ?? const []), finalDisposition, Object.hashAll(findings ?? const []), from, fromName, htmltextStructureHash, isPhishSubmission, isQuarantined, messageId, Object.hashAll(postDeliveryOperations ?? const []), postfixId, postfixIdOutbound, properties, replyto, sentDate, subject, Object.hashAll(threatCategories ?? const []), Object.hashAll(to ?? const []), Object.hashAll(toName ?? const []), ts, validation, id]); } 
@override String toString() { return 'EmailSecurityGetMessageResponseResult(actionLog: $actionLog, alertId: $alertId, clientRecipients: $clientRecipients, deliveryMode: $deliveryMode, detectionReasons: $detectionReasons, edfHash: $edfHash, envelopeFrom: $envelopeFrom, envelopeTo: $envelopeTo, finalDisposition: $finalDisposition, findings: $findings, from: $from, fromName: $fromName, htmltextStructureHash: $htmltextStructureHash, isPhishSubmission: $isPhishSubmission, isQuarantined: $isQuarantined, messageId: $messageId, postDeliveryOperations: $postDeliveryOperations, postfixId: $postfixId, postfixIdOutbound: $postfixIdOutbound, properties: $properties, replyto: $replyto, sentDate: $sentDate, subject: $subject, threatCategories: $threatCategories, to: $to, toName: $toName, ts: $ts, validation: $validation, id: $id)'; } 
 }
