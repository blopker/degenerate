// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_security_disposition_label.dart';import 'email_security_mailsearch_message_findings.dart';import 'email_security_mailsearch_message_properties.dart';import 'email_security_mailsearch_message_validation.dart';import 'email_security_message_delivery_mode.dart';import 'email_security_postfix_id.dart';@immutable final class EmailSecurityMailsearchMessagePostDeliveryOperations {const EmailSecurityMailsearchMessagePostDeliveryOperations._(this.value);

factory EmailSecurityMailsearchMessagePostDeliveryOperations.fromJson(String json) { return switch (json) {
  'PREVIEW' => preview,
  'QUARANTINE_RELEASE' => quarantineRelease,
  'SUBMISSION' => submission,
  'MOVE' => move,
  _ => EmailSecurityMailsearchMessagePostDeliveryOperations._(json),
}; }

static const EmailSecurityMailsearchMessagePostDeliveryOperations preview = EmailSecurityMailsearchMessagePostDeliveryOperations._('PREVIEW');

static const EmailSecurityMailsearchMessagePostDeliveryOperations quarantineRelease = EmailSecurityMailsearchMessagePostDeliveryOperations._('QUARANTINE_RELEASE');

static const EmailSecurityMailsearchMessagePostDeliveryOperations submission = EmailSecurityMailsearchMessagePostDeliveryOperations._('SUBMISSION');

static const EmailSecurityMailsearchMessagePostDeliveryOperations move = EmailSecurityMailsearchMessagePostDeliveryOperations._('MOVE');

static const List<EmailSecurityMailsearchMessagePostDeliveryOperations> values = [preview, quarantineRelease, submission, move];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EmailSecurityMailsearchMessagePostDeliveryOperations && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EmailSecurityMailsearchMessagePostDeliveryOperations($value)'; } 
 }
@immutable final class EmailSecurityMailsearchMessage {const EmailSecurityMailsearchMessage({required this.actionLog, required this.clientRecipients, required this.detectionReasons, required this.isPhishSubmission, required this.isQuarantined, required this.postfixId, required this.properties, required this.ts, required this.id, this.alertId = const Omittable.absent(), this.deliveryMode = const Omittable.absent(), this.edfHash = const Omittable.absent(), this.envelopeFrom = const Omittable.absent(), this.envelopeTo = const Omittable.absent(), this.finalDisposition = const Omittable.absent(), this.findings = const Omittable.absent(), this.from = const Omittable.absent(), this.fromName = const Omittable.absent(), this.htmltextStructureHash = const Omittable.absent(), this.messageId = const Omittable.absent(), this.postDeliveryOperations, this.postfixIdOutbound = const Omittable.absent(), this.replyto = const Omittable.absent(), this.sentDate = const Omittable.absent(), this.subject = const Omittable.absent(), this.threatCategories = const Omittable.absent(), this.to = const Omittable.absent(), this.toName = const Omittable.absent(), this.validation = const Omittable.absent(), });

factory EmailSecurityMailsearchMessage.fromJson(Map<String, dynamic> json) { return EmailSecurityMailsearchMessage(
  actionLog: json['action_log'],
  alertId: json.containsKey('alert_id') ? Omittable(json['alert_id'] as String?) : const Omittable.absent(),
  clientRecipients: (json['client_recipients'] as List<dynamic>).map((e) => e as String).toList(),
  deliveryMode: json.containsKey('delivery_mode') ? Omittable(json['delivery_mode'] != null ? EmailSecurityMessageDeliveryMode.fromJson(json['delivery_mode'] as String) : null) : const Omittable.absent(),
  detectionReasons: (json['detection_reasons'] as List<dynamic>).map((e) => e as String).toList(),
  edfHash: json.containsKey('edf_hash') ? Omittable(json['edf_hash'] as String?) : const Omittable.absent(),
  envelopeFrom: json.containsKey('envelope_from') ? Omittable(json['envelope_from'] as String?) : const Omittable.absent(),
  envelopeTo: json.containsKey('envelope_to') ? Omittable((json['envelope_to'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
  finalDisposition: json.containsKey('final_disposition') ? Omittable(json['final_disposition'] != null ? EmailSecurityDispositionLabel.fromJson(json['final_disposition'] as String) : null) : const Omittable.absent(),
  findings: json.containsKey('findings') ? Omittable((json['findings'] as List<dynamic>?)?.map((e) => EmailSecurityMailsearchMessageFindings.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  from: json.containsKey('from') ? Omittable(json['from'] as String?) : const Omittable.absent(),
  fromName: json.containsKey('from_name') ? Omittable(json['from_name'] as String?) : const Omittable.absent(),
  htmltextStructureHash: json.containsKey('htmltext_structure_hash') ? Omittable(json['htmltext_structure_hash'] as String?) : const Omittable.absent(),
  isPhishSubmission: json['is_phish_submission'] as bool,
  isQuarantined: json['is_quarantined'] as bool,
  messageId: json.containsKey('message_id') ? Omittable(json['message_id'] as String?) : const Omittable.absent(),
  postDeliveryOperations: (json['post_delivery_operations'] as List<dynamic>?)?.map((e) => EmailSecurityMailsearchMessagePostDeliveryOperations.fromJson(e as String)).toList(),
  postfixId: EmailSecurityPostfixId.fromJson(json['postfix_id'] as String),
  postfixIdOutbound: json.containsKey('postfix_id_outbound') ? Omittable(json['postfix_id_outbound'] as String?) : const Omittable.absent(),
  properties: EmailSecurityMailsearchMessageProperties.fromJson(json['properties'] as Map<String, dynamic>),
  replyto: json.containsKey('replyto') ? Omittable(json['replyto'] as String?) : const Omittable.absent(),
  sentDate: json.containsKey('sent_date') ? Omittable(json['sent_date'] as String?) : const Omittable.absent(),
  subject: json.containsKey('subject') ? Omittable(json['subject'] as String?) : const Omittable.absent(),
  threatCategories: json.containsKey('threat_categories') ? Omittable((json['threat_categories'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
  to: json.containsKey('to') ? Omittable((json['to'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
  toName: json.containsKey('to_name') ? Omittable((json['to_name'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
  ts: json['ts'] as String,
  validation: json.containsKey('validation') ? Omittable(json['validation'] != null ? EmailSecurityMailsearchMessageValidation.fromJson(json['validation'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  id: json['id'] as String,
); }

final dynamic actionLog;

final Omittable<String?> alertId;

final List<String> clientRecipients;

final Omittable<EmailSecurityMessageDeliveryMode?> deliveryMode;

final List<String> detectionReasons;

final Omittable<String?> edfHash;

final Omittable<String?> envelopeFrom;

final Omittable<List<String>?> envelopeTo;

final Omittable<EmailSecurityDispositionLabel?> finalDisposition;

final Omittable<List<EmailSecurityMailsearchMessageFindings>?> findings;

final Omittable<String?> from;

final Omittable<String?> fromName;

final Omittable<String?> htmltextStructureHash;

final bool isPhishSubmission;

final bool isQuarantined;

final Omittable<String?> messageId;

final List<EmailSecurityMailsearchMessagePostDeliveryOperations>? postDeliveryOperations;

final EmailSecurityPostfixId postfixId;

final Omittable<String?> postfixIdOutbound;

final EmailSecurityMailsearchMessageProperties properties;

final Omittable<String?> replyto;

final Omittable<String?> sentDate;

final Omittable<String?> subject;

final Omittable<List<String>?> threatCategories;

final Omittable<List<String>?> to;

final Omittable<List<String>?> toName;

final String ts;

final Omittable<EmailSecurityMailsearchMessageValidation?> validation;

final String id;

Map<String, dynamic> toJson() { return {
  'action_log': actionLog,
  if (alertId.isPresent) 'alert_id': alertId.value,
  'client_recipients': clientRecipients,
  if (deliveryMode.isPresent) 'delivery_mode': deliveryMode.value?.toJson(),
  'detection_reasons': detectionReasons,
  if (edfHash.isPresent) 'edf_hash': edfHash.value,
  if (envelopeFrom.isPresent) 'envelope_from': envelopeFrom.value,
  if (envelopeTo.isPresent) 'envelope_to': envelopeTo.value,
  if (finalDisposition.isPresent) 'final_disposition': finalDisposition.value?.toJson(),
  if (findings.isPresent) 'findings': findings.value?.map((e) => e.toJson()).toList(),
  if (from.isPresent) 'from': from.value,
  if (fromName.isPresent) 'from_name': fromName.value,
  if (htmltextStructureHash.isPresent) 'htmltext_structure_hash': htmltextStructureHash.value,
  'is_phish_submission': isPhishSubmission,
  'is_quarantined': isQuarantined,
  if (messageId.isPresent) 'message_id': messageId.value,
  if (postDeliveryOperations != null) 'post_delivery_operations': postDeliveryOperations?.map((e) => e.toJson()).toList(),
  'postfix_id': postfixId.toJson(),
  if (postfixIdOutbound.isPresent) 'postfix_id_outbound': postfixIdOutbound.value,
  'properties': properties.toJson(),
  if (replyto.isPresent) 'replyto': replyto.value,
  if (sentDate.isPresent) 'sent_date': sentDate.value,
  if (subject.isPresent) 'subject': subject.value,
  if (threatCategories.isPresent) 'threat_categories': threatCategories.value,
  if (to.isPresent) 'to': to.value,
  if (toName.isPresent) 'to_name': toName.value,
  'ts': ts,
  if (validation.isPresent) 'validation': validation.value?.toJson(),
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
EmailSecurityMailsearchMessage copyWith({dynamic Function()? actionLog, Omittable<String?>? alertId, List<String>? clientRecipients, Omittable<EmailSecurityMessageDeliveryMode?>? deliveryMode, List<String>? detectionReasons, Omittable<String?>? edfHash, Omittable<String?>? envelopeFrom, Omittable<List<String>?>? envelopeTo, Omittable<EmailSecurityDispositionLabel?>? finalDisposition, Omittable<List<EmailSecurityMailsearchMessageFindings>?>? findings, Omittable<String?>? from, Omittable<String?>? fromName, Omittable<String?>? htmltextStructureHash, bool? isPhishSubmission, bool? isQuarantined, Omittable<String?>? messageId, List<EmailSecurityMailsearchMessagePostDeliveryOperations>? Function()? postDeliveryOperations, EmailSecurityPostfixId? postfixId, Omittable<String?>? postfixIdOutbound, EmailSecurityMailsearchMessageProperties? properties, Omittable<String?>? replyto, Omittable<String?>? sentDate, Omittable<String?>? subject, Omittable<List<String>?>? threatCategories, Omittable<List<String>?>? to, Omittable<List<String>?>? toName, String? ts, Omittable<EmailSecurityMailsearchMessageValidation?>? validation, String? id, }) { return EmailSecurityMailsearchMessage(
  actionLog: actionLog != null ? actionLog() : this.actionLog,
  alertId: alertId ?? this.alertId,
  clientRecipients: clientRecipients ?? this.clientRecipients,
  deliveryMode: deliveryMode ?? this.deliveryMode,
  detectionReasons: detectionReasons ?? this.detectionReasons,
  edfHash: edfHash ?? this.edfHash,
  envelopeFrom: envelopeFrom ?? this.envelopeFrom,
  envelopeTo: envelopeTo ?? this.envelopeTo,
  finalDisposition: finalDisposition ?? this.finalDisposition,
  findings: findings ?? this.findings,
  from: from ?? this.from,
  fromName: fromName ?? this.fromName,
  htmltextStructureHash: htmltextStructureHash ?? this.htmltextStructureHash,
  isPhishSubmission: isPhishSubmission ?? this.isPhishSubmission,
  isQuarantined: isQuarantined ?? this.isQuarantined,
  messageId: messageId ?? this.messageId,
  postDeliveryOperations: postDeliveryOperations != null ? postDeliveryOperations() : this.postDeliveryOperations,
  postfixId: postfixId ?? this.postfixId,
  postfixIdOutbound: postfixIdOutbound ?? this.postfixIdOutbound,
  properties: properties ?? this.properties,
  replyto: replyto ?? this.replyto,
  sentDate: sentDate ?? this.sentDate,
  subject: subject ?? this.subject,
  threatCategories: threatCategories ?? this.threatCategories,
  to: to ?? this.to,
  toName: toName ?? this.toName,
  ts: ts ?? this.ts,
  validation: validation ?? this.validation,
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityMailsearchMessage &&
          actionLog == other.actionLog &&
          alertId == other.alertId &&
          listEquals(clientRecipients, other.clientRecipients) &&
          deliveryMode == other.deliveryMode &&
          listEquals(detectionReasons, other.detectionReasons) &&
          edfHash == other.edfHash &&
          envelopeFrom == other.envelopeFrom &&
          envelopeTo.isPresent == other.envelopeTo.isPresent &&
          listEquals(envelopeTo.value, other.envelopeTo.value) &&
          finalDisposition == other.finalDisposition &&
          findings.isPresent == other.findings.isPresent &&
          listEquals(findings.value, other.findings.value) &&
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
          threatCategories.isPresent == other.threatCategories.isPresent &&
          listEquals(threatCategories.value, other.threatCategories.value) &&
          to.isPresent == other.to.isPresent &&
          listEquals(to.value, other.to.value) &&
          toName.isPresent == other.toName.isPresent &&
          listEquals(toName.value, other.toName.value) &&
          ts == other.ts &&
          validation == other.validation &&
          id == other.id; } 
@override int get hashCode { return Object.hashAll([actionLog, alertId, Object.hashAll(clientRecipients), deliveryMode, Object.hashAll(detectionReasons), edfHash, envelopeFrom, Object.hashAll(envelopeTo.value ?? const []), finalDisposition, Object.hashAll(findings.value ?? const []), from, fromName, htmltextStructureHash, isPhishSubmission, isQuarantined, messageId, Object.hashAll(postDeliveryOperations ?? const []), postfixId, postfixIdOutbound, properties, replyto, sentDate, subject, Object.hashAll(threatCategories.value ?? const []), Object.hashAll(to.value ?? const []), Object.hashAll(toName.value ?? const []), ts, validation, id]); } 
@override String toString() { return 'EmailSecurityMailsearchMessage(actionLog: $actionLog, alertId: $alertId, clientRecipients: $clientRecipients, deliveryMode: $deliveryMode, detectionReasons: $detectionReasons, edfHash: $edfHash, envelopeFrom: $envelopeFrom, envelopeTo: $envelopeTo, finalDisposition: $finalDisposition, findings: $findings, from: $from, fromName: $fromName, htmltextStructureHash: $htmltextStructureHash, isPhishSubmission: $isPhishSubmission, isQuarantined: $isQuarantined, messageId: $messageId, postDeliveryOperations: $postDeliveryOperations, postfixId: $postfixId, postfixIdOutbound: $postfixIdOutbound, properties: $properties, replyto: $replyto, sentDate: $sentDate, subject: $subject, threatCategories: $threatCategories, to: $to, toName: $toName, ts: $ts, validation: $validation, id: $id)'; } 
 }
