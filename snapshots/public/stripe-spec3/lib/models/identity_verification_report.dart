// GENERATED CODE - DO NOT MODIFY BY HAND

import 'gelato_document_report.dart';import 'gelato_email_report.dart';import 'gelato_id_number_report.dart';import 'gelato_phone_report.dart';import 'gelato_selfie_report.dart';import 'gelato_verification_report_options.dart';/// String representing the object's type. Objects of the same type share the same value.
final class IdentityVerificationReportObject {const IdentityVerificationReportObject._(this.value);

factory IdentityVerificationReportObject.fromJson(String json) { return switch (json) {
  'identity.verification_report' => identityVerificationReport,
  _ => IdentityVerificationReportObject._(json),
}; }

static const IdentityVerificationReportObject identityVerificationReport = IdentityVerificationReportObject._('identity.verification_report');

static const List<IdentityVerificationReportObject> values = [identityVerificationReport];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IdentityVerificationReportObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IdentityVerificationReportObject($value)'; } 
 }
/// Type of report.
final class IdentityVerificationReportType {const IdentityVerificationReportType._(this.value);

factory IdentityVerificationReportType.fromJson(String json) { return switch (json) {
  'document' => document,
  'id_number' => idNumber,
  'verification_flow' => verificationFlow,
  _ => IdentityVerificationReportType._(json),
}; }

static const IdentityVerificationReportType document = IdentityVerificationReportType._('document');

static const IdentityVerificationReportType idNumber = IdentityVerificationReportType._('id_number');

static const IdentityVerificationReportType verificationFlow = IdentityVerificationReportType._('verification_flow');

static const List<IdentityVerificationReportType> values = [document, idNumber, verificationFlow];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IdentityVerificationReportType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IdentityVerificationReportType($value)'; } 
 }
/// A VerificationReport is the result of an attempt to collect and verify data from a user.
/// The collection of verification checks performed is determined from the `type` and `options`
/// parameters used. You can find the result of each verification check performed in the
/// appropriate sub-resource: `document`, `id_number`, `selfie`.
/// 
/// Each VerificationReport contains a copy of any data collected by the user as well as
/// reference IDs which can be used to access collected images through the [FileUpload](https://docs.stripe.com/api/files)
/// API. To configure and create VerificationReports, use the
/// [VerificationSession](https://docs.stripe.com/api/identity/verification_sessions) API.
/// 
/// Related guide: [Accessing verification results](https://docs.stripe.com/identity/verification-sessions#results).
final class IdentityVerificationReport {const IdentityVerificationReport({this.clientReferenceId, required this.created, this.document, this.email, required this.id, this.idNumber, required this.livemode, required this.object, this.options, this.phone, this.selfie, required this.type, this.verificationFlow, this.verificationSession, });

factory IdentityVerificationReport.fromJson(Map<String, dynamic> json) { return IdentityVerificationReport(
  clientReferenceId: json['client_reference_id'] as String?,
  created: (json['created'] as num).toInt(),
  document: json['document'] != null ? GelatoDocumentReport.fromJson(json['document'] as Map<String, dynamic>) : null,
  email: json['email'] != null ? GelatoEmailReport.fromJson(json['email'] as Map<String, dynamic>) : null,
  id: json['id'] as String,
  idNumber: json['id_number'] != null ? GelatoIdNumberReport.fromJson(json['id_number'] as Map<String, dynamic>) : null,
  livemode: json['livemode'] as bool,
  object: IdentityVerificationReportObject.fromJson(json['object'] as String),
  options: json['options'] != null ? GelatoVerificationReportOptions.fromJson(json['options'] as Map<String, dynamic>) : null,
  phone: json['phone'] != null ? GelatoPhoneReport.fromJson(json['phone'] as Map<String, dynamic>) : null,
  selfie: json['selfie'] != null ? GelatoSelfieReport.fromJson(json['selfie'] as Map<String, dynamic>) : null,
  type: IdentityVerificationReportType.fromJson(json['type'] as String),
  verificationFlow: json['verification_flow'] as String?,
  verificationSession: json['verification_session'] as String?,
); }

/// A string to reference this user. This can be a customer ID, a session ID, or similar, and can be used to reconcile this verification with your internal systems.
final String? clientReferenceId;

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int created;

final GelatoDocumentReport? document;

final GelatoEmailReport? email;

/// Unique identifier for the object.
final String id;

final GelatoIdNumberReport? idNumber;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// String representing the object's type. Objects of the same type share the same value.
final IdentityVerificationReportObject object;

final GelatoVerificationReportOptions? options;

final GelatoPhoneReport? phone;

final GelatoSelfieReport? selfie;

/// Type of report.
final IdentityVerificationReportType type;

/// The configuration token of a verification flow from the dashboard.
final String? verificationFlow;

/// ID of the VerificationSession that created this report.
final String? verificationSession;

Map<String, dynamic> toJson() { return {
  'client_reference_id': ?clientReferenceId,
  'created': created,
  if (document != null) 'document': document?.toJson(),
  if (email != null) 'email': email?.toJson(),
  'id': id,
  if (idNumber != null) 'id_number': idNumber?.toJson(),
  'livemode': livemode,
  'object': object.toJson(),
  if (options != null) 'options': options?.toJson(),
  if (phone != null) 'phone': phone?.toJson(),
  if (selfie != null) 'selfie': selfie?.toJson(),
  'type': type.toJson(),
  'verification_flow': ?verificationFlow,
  'verification_session': ?verificationSession,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created') && json['created'] is num &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('object') &&
      json.containsKey('type'); } 
IdentityVerificationReport copyWith({String? Function()? clientReferenceId, int? created, GelatoDocumentReport Function()? document, GelatoEmailReport Function()? email, String? id, GelatoIdNumberReport Function()? idNumber, bool? livemode, IdentityVerificationReportObject? object, GelatoVerificationReportOptions Function()? options, GelatoPhoneReport Function()? phone, GelatoSelfieReport Function()? selfie, IdentityVerificationReportType? type, String Function()? verificationFlow, String? Function()? verificationSession, }) { return IdentityVerificationReport(
  clientReferenceId: clientReferenceId != null ? clientReferenceId() : this.clientReferenceId,
  created: created ?? this.created,
  document: document != null ? document() : this.document,
  email: email != null ? email() : this.email,
  id: id ?? this.id,
  idNumber: idNumber != null ? idNumber() : this.idNumber,
  livemode: livemode ?? this.livemode,
  object: object ?? this.object,
  options: options != null ? options() : this.options,
  phone: phone != null ? phone() : this.phone,
  selfie: selfie != null ? selfie() : this.selfie,
  type: type ?? this.type,
  verificationFlow: verificationFlow != null ? verificationFlow() : this.verificationFlow,
  verificationSession: verificationSession != null ? verificationSession() : this.verificationSession,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IdentityVerificationReport &&
          clientReferenceId == other.clientReferenceId &&
          created == other.created &&
          document == other.document &&
          email == other.email &&
          id == other.id &&
          idNumber == other.idNumber &&
          livemode == other.livemode &&
          object == other.object &&
          options == other.options &&
          phone == other.phone &&
          selfie == other.selfie &&
          type == other.type &&
          verificationFlow == other.verificationFlow &&
          verificationSession == other.verificationSession; } 
@override int get hashCode { return Object.hash(clientReferenceId, created, document, email, id, idNumber, livemode, object, options, phone, selfie, type, verificationFlow, verificationSession); } 
@override String toString() { return 'IdentityVerificationReport(clientReferenceId: $clientReferenceId, created: $created, document: $document, email: $email, id: $id, idNumber: $idNumber, livemode: $livemode, object: $object, options: $options, phone: $phone, selfie: $selfie, type: $type, verificationFlow: $verificationFlow, verificationSession: $verificationSession)'; } 
 }
