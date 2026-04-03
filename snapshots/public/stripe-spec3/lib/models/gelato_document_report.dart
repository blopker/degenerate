// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'address.dart';import 'gelato_data_document_report_date_of_birth.dart';import 'gelato_data_document_report_expiration_date.dart';import 'gelato_data_document_report_issued_date.dart';import 'gelato_document_report_error.dart';/// Sex of the person in the document.
@immutable final class GelatoDocumentReportSex {const GelatoDocumentReportSex._(this.value);

factory GelatoDocumentReportSex.fromJson(String json) { return switch (json) {
  '[redacted]' => redacted,
  'female' => female,
  'male' => male,
  'unknown' => unknown,
  _ => GelatoDocumentReportSex._(json),
}; }

static const GelatoDocumentReportSex redacted = GelatoDocumentReportSex._('[redacted]');

static const GelatoDocumentReportSex female = GelatoDocumentReportSex._('female');

static const GelatoDocumentReportSex male = GelatoDocumentReportSex._('male');

static const GelatoDocumentReportSex unknown = GelatoDocumentReportSex._('unknown');

static const List<GelatoDocumentReportSex> values = [redacted, female, male, unknown];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GelatoDocumentReportSex && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GelatoDocumentReportSex($value)'; } 
 }
/// Status of this `document` check.
@immutable final class GelatoDocumentReportStatus {const GelatoDocumentReportStatus._(this.value);

factory GelatoDocumentReportStatus.fromJson(String json) { return switch (json) {
  'unverified' => unverified,
  'verified' => verified,
  _ => GelatoDocumentReportStatus._(json),
}; }

static const GelatoDocumentReportStatus unverified = GelatoDocumentReportStatus._('unverified');

static const GelatoDocumentReportStatus verified = GelatoDocumentReportStatus._('verified');

static const List<GelatoDocumentReportStatus> values = [unverified, verified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GelatoDocumentReportStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GelatoDocumentReportStatus($value)'; } 
 }
/// Type of the document.
@immutable final class GelatoDocumentReportType {const GelatoDocumentReportType._(this.value);

factory GelatoDocumentReportType.fromJson(String json) { return switch (json) {
  'driving_license' => drivingLicense,
  'id_card' => idCard,
  'passport' => passport,
  _ => GelatoDocumentReportType._(json),
}; }

static const GelatoDocumentReportType drivingLicense = GelatoDocumentReportType._('driving_license');

static const GelatoDocumentReportType idCard = GelatoDocumentReportType._('id_card');

static const GelatoDocumentReportType passport = GelatoDocumentReportType._('passport');

static const List<GelatoDocumentReportType> values = [drivingLicense, idCard, passport];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GelatoDocumentReportType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GelatoDocumentReportType($value)'; } 
 }
/// Result from a document check
@immutable final class GelatoDocumentReport {const GelatoDocumentReport({required this.status, this.address, this.dob, this.error, this.expirationDate, this.files, this.firstName, this.issuedDate, this.issuingCountry, this.lastName, this.number, this.sex, this.type, this.unparsedPlaceOfBirth, this.unparsedSex, });

factory GelatoDocumentReport.fromJson(Map<String, dynamic> json) { return GelatoDocumentReport(
  address: json['address'] != null ? Address.fromJson(json['address'] as Map<String, dynamic>) : null,
  dob: json['dob'] != null ? GelatoDataDocumentReportDateOfBirth.fromJson(json['dob'] as Map<String, dynamic>) : null,
  error: json['error'] != null ? GelatoDocumentReportError.fromJson(json['error'] as Map<String, dynamic>) : null,
  expirationDate: json['expiration_date'] != null ? GelatoDataDocumentReportExpirationDate.fromJson(json['expiration_date'] as Map<String, dynamic>) : null,
  files: (json['files'] as List<dynamic>?)?.map((e) => e as String).toList(),
  firstName: json['first_name'] as String?,
  issuedDate: json['issued_date'] != null ? GelatoDataDocumentReportIssuedDate.fromJson(json['issued_date'] as Map<String, dynamic>) : null,
  issuingCountry: json['issuing_country'] as String?,
  lastName: json['last_name'] as String?,
  number: json['number'] as String?,
  sex: json['sex'] != null ? GelatoDocumentReportSex.fromJson(json['sex'] as String) : null,
  status: GelatoDocumentReportStatus.fromJson(json['status'] as String),
  type: json['type'] != null ? GelatoDocumentReportType.fromJson(json['type'] as String) : null,
  unparsedPlaceOfBirth: json['unparsed_place_of_birth'] as String?,
  unparsedSex: json['unparsed_sex'] as String?,
); }

/// Address as it appears in the document.
final Address? address;

/// Date of birth as it appears in the document.
final GelatoDataDocumentReportDateOfBirth? dob;

/// Details on the verification error. Present when status is `unverified`.
final GelatoDocumentReportError? error;

/// Expiration date of the document.
final GelatoDataDocumentReportExpirationDate? expirationDate;

/// Array of [File](https://docs.stripe.com/api/files) ids containing images for this document.
final List<String>? files;

/// First name as it appears in the document.
final String? firstName;

/// Issued date of the document.
final GelatoDataDocumentReportIssuedDate? issuedDate;

/// Issuing country of the document.
final String? issuingCountry;

/// Last name as it appears in the document.
final String? lastName;

/// Document ID number.
final String? number;

/// Sex of the person in the document.
final GelatoDocumentReportSex? sex;

/// Status of this `document` check.
final GelatoDocumentReportStatus status;

/// Type of the document.
final GelatoDocumentReportType? type;

/// Place of birth as it appears in the document.
final String? unparsedPlaceOfBirth;

/// Sex as it appears in the document.
final String? unparsedSex;

Map<String, dynamic> toJson() { return {
  if (address != null) 'address': address?.toJson(),
  if (dob != null) 'dob': dob?.toJson(),
  if (error != null) 'error': error?.toJson(),
  if (expirationDate != null) 'expiration_date': expirationDate?.toJson(),
  'files': ?files,
  'first_name': ?firstName,
  if (issuedDate != null) 'issued_date': issuedDate?.toJson(),
  'issuing_country': ?issuingCountry,
  'last_name': ?lastName,
  'number': ?number,
  if (sex != null) 'sex': sex?.toJson(),
  'status': status.toJson(),
  if (type != null) 'type': type?.toJson(),
  'unparsed_place_of_birth': ?unparsedPlaceOfBirth,
  'unparsed_sex': ?unparsedSex,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('status'); } 
GelatoDocumentReport copyWith({Address? Function()? address, GelatoDataDocumentReportDateOfBirth? Function()? dob, GelatoDocumentReportError? Function()? error, GelatoDataDocumentReportExpirationDate? Function()? expirationDate, List<String>? Function()? files, String? Function()? firstName, GelatoDataDocumentReportIssuedDate? Function()? issuedDate, String? Function()? issuingCountry, String? Function()? lastName, String? Function()? number, GelatoDocumentReportSex? Function()? sex, GelatoDocumentReportStatus? status, GelatoDocumentReportType? Function()? type, String? Function()? unparsedPlaceOfBirth, String? Function()? unparsedSex, }) { return GelatoDocumentReport(
  address: address != null ? address() : this.address,
  dob: dob != null ? dob() : this.dob,
  error: error != null ? error() : this.error,
  expirationDate: expirationDate != null ? expirationDate() : this.expirationDate,
  files: files != null ? files() : this.files,
  firstName: firstName != null ? firstName() : this.firstName,
  issuedDate: issuedDate != null ? issuedDate() : this.issuedDate,
  issuingCountry: issuingCountry != null ? issuingCountry() : this.issuingCountry,
  lastName: lastName != null ? lastName() : this.lastName,
  number: number != null ? number() : this.number,
  sex: sex != null ? sex() : this.sex,
  status: status ?? this.status,
  type: type != null ? type() : this.type,
  unparsedPlaceOfBirth: unparsedPlaceOfBirth != null ? unparsedPlaceOfBirth() : this.unparsedPlaceOfBirth,
  unparsedSex: unparsedSex != null ? unparsedSex() : this.unparsedSex,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GelatoDocumentReport &&
          address == other.address &&
          dob == other.dob &&
          error == other.error &&
          expirationDate == other.expirationDate &&
          listEquals(files, other.files) &&
          firstName == other.firstName &&
          issuedDate == other.issuedDate &&
          issuingCountry == other.issuingCountry &&
          lastName == other.lastName &&
          number == other.number &&
          sex == other.sex &&
          status == other.status &&
          type == other.type &&
          unparsedPlaceOfBirth == other.unparsedPlaceOfBirth &&
          unparsedSex == other.unparsedSex; } 
@override int get hashCode { return Object.hash(address, dob, error, expirationDate, Object.hashAll(files ?? const []), firstName, issuedDate, issuingCountry, lastName, number, sex, status, type, unparsedPlaceOfBirth, unparsedSex); } 
@override String toString() { return 'GelatoDocumentReport(address: $address, dob: $dob, error: $error, expirationDate: $expirationDate, files: $files, firstName: $firstName, issuedDate: $issuedDate, issuingCountry: $issuingCountry, lastName: $lastName, number: $number, sex: $sex, status: $status, type: $type, unparsedPlaceOfBirth: $unparsedPlaceOfBirth, unparsedSex: $unparsedSex)'; } 
 }
