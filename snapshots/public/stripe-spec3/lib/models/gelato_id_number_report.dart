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
@immutable final class GelatoIdNumberReport {const GelatoIdNumberReport({required this.status, this.dob = const Omittable.absent(), this.error = const Omittable.absent(), this.firstName = const Omittable.absent(), this.idNumber = const Omittable.absent(), this.idNumberType = const Omittable.absent(), this.lastName = const Omittable.absent(), });

factory GelatoIdNumberReport.fromJson(Map<String, dynamic> json) { return GelatoIdNumberReport(
  dob: json.containsKey('dob') ? Omittable(json['dob'] != null ? GelatoDataIdNumberReportDate.fromJson(json['dob'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  error: json.containsKey('error') ? Omittable(json['error'] != null ? GelatoIdNumberReportError.fromJson(json['error'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  firstName: json.containsKey('first_name') ? Omittable(json['first_name'] as String?) : const Omittable.absent(),
  idNumber: json.containsKey('id_number') ? Omittable(json['id_number'] as String?) : const Omittable.absent(),
  idNumberType: json.containsKey('id_number_type') ? Omittable(json['id_number_type'] != null ? GelatoIdNumberReportIdNumberType.fromJson(json['id_number_type'] as String) : null) : const Omittable.absent(),
  lastName: json.containsKey('last_name') ? Omittable(json['last_name'] as String?) : const Omittable.absent(),
  status: GelatoIdNumberReportStatus.fromJson(json['status'] as String),
); }

/// Date of birth.
final Omittable<GelatoDataIdNumberReportDate?> dob;

/// Details on the verification error. Present when status is `unverified`.
final Omittable<GelatoIdNumberReportError?> error;

/// First name.
final Omittable<String?> firstName;

/// ID number. When `id_number_type` is `us_ssn`, only the last 4 digits are present.
final Omittable<String?> idNumber;

/// Type of ID number.
final Omittable<GelatoIdNumberReportIdNumberType?> idNumberType;

/// Last name.
final Omittable<String?> lastName;

/// Status of this `id_number` check.
final GelatoIdNumberReportStatus status;

Map<String, dynamic> toJson() { return {
  if (dob.isPresent) 'dob': dob.value?.toJson(),
  if (error.isPresent) 'error': error.value?.toJson(),
  if (firstName.isPresent) 'first_name': firstName.value,
  if (idNumber.isPresent) 'id_number': idNumber.value,
  if (idNumberType.isPresent) 'id_number_type': idNumberType.value?.toJson(),
  if (lastName.isPresent) 'last_name': lastName.value,
  'status': status.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('status'); } 
GelatoIdNumberReport copyWith({Omittable<GelatoDataIdNumberReportDate?>? dob, Omittable<GelatoIdNumberReportError?>? error, Omittable<String?>? firstName, Omittable<String?>? idNumber, Omittable<GelatoIdNumberReportIdNumberType?>? idNumberType, Omittable<String?>? lastName, GelatoIdNumberReportStatus? status, }) { return GelatoIdNumberReport(
  dob: dob ?? this.dob,
  error: error ?? this.error,
  firstName: firstName ?? this.firstName,
  idNumber: idNumber ?? this.idNumber,
  idNumberType: idNumberType ?? this.idNumberType,
  lastName: lastName ?? this.lastName,
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
