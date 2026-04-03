// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'gelato_data_id_number_report_date.dart';import 'gelato_id_number_report_error.dart';/// Type of ID number.
@immutable final class GelatoIdNumberReportIdNumberType {const GelatoIdNumberReportIdNumberType._(this.value);

factory GelatoIdNumberReportIdNumberType.fromJson(String json) { return switch (json) {
  'br_cpf' => brCpf,
  'sg_nric' => sgNric,
  'us_ssn' => usSsn,
  _ => GelatoIdNumberReportIdNumberType._(json),
}; }

static const GelatoIdNumberReportIdNumberType brCpf = GelatoIdNumberReportIdNumberType._('br_cpf');

static const GelatoIdNumberReportIdNumberType sgNric = GelatoIdNumberReportIdNumberType._('sg_nric');

static const GelatoIdNumberReportIdNumberType usSsn = GelatoIdNumberReportIdNumberType._('us_ssn');

static const List<GelatoIdNumberReportIdNumberType> values = [brCpf, sgNric, usSsn];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GelatoIdNumberReportIdNumberType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GelatoIdNumberReportIdNumberType($value)'; } 
 }
/// Status of this `id_number` check.
@immutable final class GelatoIdNumberReportStatus {const GelatoIdNumberReportStatus._(this.value);

factory GelatoIdNumberReportStatus.fromJson(String json) { return switch (json) {
  'unverified' => unverified,
  'verified' => verified,
  _ => GelatoIdNumberReportStatus._(json),
}; }

static const GelatoIdNumberReportStatus unverified = GelatoIdNumberReportStatus._('unverified');

static const GelatoIdNumberReportStatus verified = GelatoIdNumberReportStatus._('verified');

static const List<GelatoIdNumberReportStatus> values = [unverified, verified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GelatoIdNumberReportStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GelatoIdNumberReportStatus($value)'; } 
 }
/// Result from an id_number check
@immutable final class GelatoIdNumberReport {const GelatoIdNumberReport({required this.status, this.dob, this.error, this.firstName, this.idNumber, this.idNumberType, this.lastName, });

factory GelatoIdNumberReport.fromJson(Map<String, dynamic> json) { return GelatoIdNumberReport(
  dob: json['dob'] != null ? GelatoDataIdNumberReportDate.fromJson(json['dob'] as Map<String, dynamic>) : null,
  error: json['error'] != null ? GelatoIdNumberReportError.fromJson(json['error'] as Map<String, dynamic>) : null,
  firstName: json['first_name'] as String?,
  idNumber: json['id_number'] as String?,
  idNumberType: json['id_number_type'] != null ? GelatoIdNumberReportIdNumberType.fromJson(json['id_number_type'] as String) : null,
  lastName: json['last_name'] as String?,
  status: GelatoIdNumberReportStatus.fromJson(json['status'] as String),
); }

/// Date of birth.
final GelatoDataIdNumberReportDate? dob;

/// Details on the verification error. Present when status is `unverified`.
final GelatoIdNumberReportError? error;

/// First name.
final String? firstName;

/// ID number. When `id_number_type` is `us_ssn`, only the last 4 digits are present.
final String? idNumber;

/// Type of ID number.
final GelatoIdNumberReportIdNumberType? idNumberType;

/// Last name.
final String? lastName;

/// Status of this `id_number` check.
final GelatoIdNumberReportStatus status;

Map<String, dynamic> toJson() { return {
  if (dob != null) 'dob': dob?.toJson(),
  if (error != null) 'error': error?.toJson(),
  'first_name': ?firstName,
  'id_number': ?idNumber,
  if (idNumberType != null) 'id_number_type': idNumberType?.toJson(),
  'last_name': ?lastName,
  'status': status.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('status'); } 
GelatoIdNumberReport copyWith({GelatoDataIdNumberReportDate? Function()? dob, GelatoIdNumberReportError? Function()? error, String? Function()? firstName, String? Function()? idNumber, GelatoIdNumberReportIdNumberType? Function()? idNumberType, String? Function()? lastName, GelatoIdNumberReportStatus? status, }) { return GelatoIdNumberReport(
  dob: dob != null ? dob() : this.dob,
  error: error != null ? error() : this.error,
  firstName: firstName != null ? firstName() : this.firstName,
  idNumber: idNumber != null ? idNumber() : this.idNumber,
  idNumberType: idNumberType != null ? idNumberType() : this.idNumberType,
  lastName: lastName != null ? lastName() : this.lastName,
  status: status ?? this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GelatoIdNumberReport &&
          dob == other.dob &&
          error == other.error &&
          firstName == other.firstName &&
          idNumber == other.idNumber &&
          idNumberType == other.idNumberType &&
          lastName == other.lastName &&
          status == other.status; } 
@override int get hashCode { return Object.hash(dob, error, firstName, idNumber, idNumberType, lastName, status); } 
@override String toString() { return 'GelatoIdNumberReport(dob: $dob, error: $error, firstName: $firstName, idNumber: $idNumber, idNumberType: $idNumberType, lastName: $lastName, status: $status)'; } 
 }
