// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_security_attachment.dart';import 'email_security_disposition_label.dart';import 'email_security_get_message_detections_response_result_sender_info.dart';import 'email_security_get_message_detections_response_result_validation.dart';import 'email_security_link.dart';import 'email_security_message_header.dart';import 'email_security_threat_category.dart';final class EmailSecurityGetMessageDetectionsResponseResult {const EmailSecurityGetMessageDetectionsResponseResult({required this.action, required this.attachments, this.finalDisposition, required this.headers, required this.links, required this.senderInfo, required this.threatCategories, required this.validation, });

factory EmailSecurityGetMessageDetectionsResponseResult.fromJson(Map<String, dynamic> json) { return EmailSecurityGetMessageDetectionsResponseResult(
  action: json['action'] as String,
  attachments: (json['attachments'] as List<dynamic>).map((e) => EmailSecurityAttachment.fromJson(e as Map<String, dynamic>)).toList(),
  finalDisposition: json['final_disposition'] != null ? EmailSecurityDispositionLabel.fromJson(json['final_disposition'] as String) : null,
  headers: (json['headers'] as List<dynamic>).map((e) => EmailSecurityMessageHeader.fromJson(e as Map<String, dynamic>)).toList(),
  links: (json['links'] as List<dynamic>).map((e) => EmailSecurityLink.fromJson(e as Map<String, dynamic>)).toList(),
  senderInfo: EmailSecurityGetMessageDetectionsResponseResultSenderInfo.fromJson(json['sender_info'] as Map<String, dynamic>),
  threatCategories: (json['threat_categories'] as List<dynamic>).map((e) => EmailSecurityThreatCategory.fromJson(e as Map<String, dynamic>)).toList(),
  validation: EmailSecurityGetMessageDetectionsResponseResultValidation.fromJson(json['validation'] as Map<String, dynamic>),
); }

final String action;

final List<EmailSecurityAttachment> attachments;

final EmailSecurityDispositionLabel? finalDisposition;

final List<EmailSecurityMessageHeader> headers;

final List<EmailSecurityLink> links;

final EmailSecurityGetMessageDetectionsResponseResultSenderInfo senderInfo;

final List<EmailSecurityThreatCategory> threatCategories;

final EmailSecurityGetMessageDetectionsResponseResultValidation validation;

Map<String, dynamic> toJson() { return {
  'action': action,
  'attachments': attachments.map((e) => e.toJson()).toList(),
  if (finalDisposition != null) 'final_disposition': finalDisposition?.toJson(),
  'headers': headers.map((e) => e.toJson()).toList(),
  'links': links.map((e) => e.toJson()).toList(),
  'sender_info': senderInfo.toJson(),
  'threat_categories': threatCategories.map((e) => e.toJson()).toList(),
  'validation': validation.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') && json['action'] is String &&
      json.containsKey('attachments') &&
      json.containsKey('headers') &&
      json.containsKey('links') &&
      json.containsKey('sender_info') &&
      json.containsKey('threat_categories') &&
      json.containsKey('validation'); } 
EmailSecurityGetMessageDetectionsResponseResult copyWith({String? action, List<EmailSecurityAttachment>? attachments, EmailSecurityDispositionLabel? Function()? finalDisposition, List<EmailSecurityMessageHeader>? headers, List<EmailSecurityLink>? links, EmailSecurityGetMessageDetectionsResponseResultSenderInfo? senderInfo, List<EmailSecurityThreatCategory>? threatCategories, EmailSecurityGetMessageDetectionsResponseResultValidation? validation, }) { return EmailSecurityGetMessageDetectionsResponseResult(
  action: action ?? this.action,
  attachments: attachments ?? this.attachments,
  finalDisposition: finalDisposition != null ? finalDisposition() : this.finalDisposition,
  headers: headers ?? this.headers,
  links: links ?? this.links,
  senderInfo: senderInfo ?? this.senderInfo,
  threatCategories: threatCategories ?? this.threatCategories,
  validation: validation ?? this.validation,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityGetMessageDetectionsResponseResult &&
          action == other.action &&
          listEquals(attachments, other.attachments) &&
          finalDisposition == other.finalDisposition &&
          listEquals(headers, other.headers) &&
          listEquals(links, other.links) &&
          senderInfo == other.senderInfo &&
          listEquals(threatCategories, other.threatCategories) &&
          validation == other.validation; } 
@override int get hashCode { return Object.hash(action, Object.hashAll(attachments), finalDisposition, Object.hashAll(headers), Object.hashAll(links), senderInfo, Object.hashAll(threatCategories), validation); } 
@override String toString() { return 'EmailSecurityGetMessageDetectionsResponseResult(action: $action, attachments: $attachments, finalDisposition: $finalDisposition, headers: $headers, links: $links, senderInfo: $senderInfo, threatCategories: $threatCategories, validation: $validation)'; } 
 }
