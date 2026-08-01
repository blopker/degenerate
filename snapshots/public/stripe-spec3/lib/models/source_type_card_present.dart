// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SourceTypeCardPresent {const SourceTypeCardPresent({this.applicationCryptogram, this.applicationPreferredName, this.authorizationCode = const Omittable.absent(), this.authorizationResponseCode, this.brand = const Omittable.absent(), this.country = const Omittable.absent(), this.cvmType, this.dataType = const Omittable.absent(), this.dedicatedFileName, this.emvAuthData, this.evidenceCustomerSignature = const Omittable.absent(), this.evidenceTransactionCertificate = const Omittable.absent(), this.expMonth = const Omittable.absent(), this.expYear = const Omittable.absent(), this.fingerprint, this.funding = const Omittable.absent(), this.last4 = const Omittable.absent(), this.posDeviceId = const Omittable.absent(), this.posEntryMode, this.readMethod = const Omittable.absent(), this.reader = const Omittable.absent(), this.terminalVerificationResults, this.transactionStatusInformation, });

factory SourceTypeCardPresent.fromJson(Map<String, dynamic> json) { return SourceTypeCardPresent(
  applicationCryptogram: json['application_cryptogram'] as String?,
  applicationPreferredName: json['application_preferred_name'] as String?,
  authorizationCode: json.containsKey('authorization_code') ? Omittable(json['authorization_code'] as String?) : const Omittable.absent(),
  authorizationResponseCode: json['authorization_response_code'] as String?,
  brand: json.containsKey('brand') ? Omittable(json['brand'] as String?) : const Omittable.absent(),
  country: json.containsKey('country') ? Omittable(json['country'] as String?) : const Omittable.absent(),
  cvmType: json['cvm_type'] as String?,
  dataType: json.containsKey('data_type') ? Omittable(json['data_type'] as String?) : const Omittable.absent(),
  dedicatedFileName: json['dedicated_file_name'] as String?,
  emvAuthData: json['emv_auth_data'] as String?,
  evidenceCustomerSignature: json.containsKey('evidence_customer_signature') ? Omittable(json['evidence_customer_signature'] as String?) : const Omittable.absent(),
  evidenceTransactionCertificate: json.containsKey('evidence_transaction_certificate') ? Omittable(json['evidence_transaction_certificate'] as String?) : const Omittable.absent(),
  expMonth: json.containsKey('exp_month') ? Omittable(json['exp_month'] != null ? (json['exp_month'] as num).toInt() : null) : const Omittable.absent(),
  expYear: json.containsKey('exp_year') ? Omittable(json['exp_year'] != null ? (json['exp_year'] as num).toInt() : null) : const Omittable.absent(),
  fingerprint: json['fingerprint'] as String?,
  funding: json.containsKey('funding') ? Omittable(json['funding'] as String?) : const Omittable.absent(),
  last4: json.containsKey('last4') ? Omittable(json['last4'] as String?) : const Omittable.absent(),
  posDeviceId: json.containsKey('pos_device_id') ? Omittable(json['pos_device_id'] as String?) : const Omittable.absent(),
  posEntryMode: json['pos_entry_mode'] as String?,
  readMethod: json.containsKey('read_method') ? Omittable(json['read_method'] as String?) : const Omittable.absent(),
  reader: json.containsKey('reader') ? Omittable(json['reader'] as String?) : const Omittable.absent(),
  terminalVerificationResults: json['terminal_verification_results'] as String?,
  transactionStatusInformation: json['transaction_status_information'] as String?,
); }

final String? applicationCryptogram;

final String? applicationPreferredName;

final Omittable<String?> authorizationCode;

final String? authorizationResponseCode;

final Omittable<String?> brand;

final Omittable<String?> country;

final String? cvmType;

final Omittable<String?> dataType;

final String? dedicatedFileName;

final String? emvAuthData;

final Omittable<String?> evidenceCustomerSignature;

final Omittable<String?> evidenceTransactionCertificate;

final Omittable<int?> expMonth;

final Omittable<int?> expYear;

final String? fingerprint;

final Omittable<String?> funding;

final Omittable<String?> last4;

final Omittable<String?> posDeviceId;

final String? posEntryMode;

final Omittable<String?> readMethod;

final Omittable<String?> reader;

final String? terminalVerificationResults;

final String? transactionStatusInformation;

Map<String, dynamic> toJson() { return {
  'application_cryptogram': ?applicationCryptogram,
  'application_preferred_name': ?applicationPreferredName,
  if (authorizationCode.isPresent) 'authorization_code': authorizationCode.value,
  'authorization_response_code': ?authorizationResponseCode,
  if (brand.isPresent) 'brand': brand.value,
  if (country.isPresent) 'country': country.value,
  'cvm_type': ?cvmType,
  if (dataType.isPresent) 'data_type': dataType.value,
  'dedicated_file_name': ?dedicatedFileName,
  'emv_auth_data': ?emvAuthData,
  if (evidenceCustomerSignature.isPresent) 'evidence_customer_signature': evidenceCustomerSignature.value,
  if (evidenceTransactionCertificate.isPresent) 'evidence_transaction_certificate': evidenceTransactionCertificate.value,
  if (expMonth.isPresent) 'exp_month': expMonth.value,
  if (expYear.isPresent) 'exp_year': expYear.value,
  'fingerprint': ?fingerprint,
  if (funding.isPresent) 'funding': funding.value,
  if (last4.isPresent) 'last4': last4.value,
  if (posDeviceId.isPresent) 'pos_device_id': posDeviceId.value,
  'pos_entry_mode': ?posEntryMode,
  if (readMethod.isPresent) 'read_method': readMethod.value,
  if (reader.isPresent) 'reader': reader.value,
  'terminal_verification_results': ?terminalVerificationResults,
  'transaction_status_information': ?transactionStatusInformation,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'application_cryptogram', 'application_preferred_name', 'authorization_code', 'authorization_response_code', 'brand', 'country', 'cvm_type', 'data_type', 'dedicated_file_name', 'emv_auth_data', 'evidence_customer_signature', 'evidence_transaction_certificate', 'exp_month', 'exp_year', 'fingerprint', 'funding', 'last4', 'pos_device_id', 'pos_entry_mode', 'read_method', 'reader', 'terminal_verification_results', 'transaction_status_information'}.contains(key)); } 
SourceTypeCardPresent copyWith({String? Function()? applicationCryptogram, String? Function()? applicationPreferredName, Omittable<String?>? authorizationCode, String? Function()? authorizationResponseCode, Omittable<String?>? brand, Omittable<String?>? country, String? Function()? cvmType, Omittable<String?>? dataType, String? Function()? dedicatedFileName, String? Function()? emvAuthData, Omittable<String?>? evidenceCustomerSignature, Omittable<String?>? evidenceTransactionCertificate, Omittable<int?>? expMonth, Omittable<int?>? expYear, String? Function()? fingerprint, Omittable<String?>? funding, Omittable<String?>? last4, Omittable<String?>? posDeviceId, String? Function()? posEntryMode, Omittable<String?>? readMethod, Omittable<String?>? reader, String? Function()? terminalVerificationResults, String? Function()? transactionStatusInformation, }) { return SourceTypeCardPresent(
  applicationCryptogram: applicationCryptogram != null ? applicationCryptogram() : this.applicationCryptogram,
  applicationPreferredName: applicationPreferredName != null ? applicationPreferredName() : this.applicationPreferredName,
  authorizationCode: authorizationCode ?? this.authorizationCode,
  authorizationResponseCode: authorizationResponseCode != null ? authorizationResponseCode() : this.authorizationResponseCode,
  brand: brand ?? this.brand,
  country: country ?? this.country,
  cvmType: cvmType != null ? cvmType() : this.cvmType,
  dataType: dataType ?? this.dataType,
  dedicatedFileName: dedicatedFileName != null ? dedicatedFileName() : this.dedicatedFileName,
  emvAuthData: emvAuthData != null ? emvAuthData() : this.emvAuthData,
  evidenceCustomerSignature: evidenceCustomerSignature ?? this.evidenceCustomerSignature,
  evidenceTransactionCertificate: evidenceTransactionCertificate ?? this.evidenceTransactionCertificate,
  expMonth: expMonth ?? this.expMonth,
  expYear: expYear ?? this.expYear,
  fingerprint: fingerprint != null ? fingerprint() : this.fingerprint,
  funding: funding ?? this.funding,
  last4: last4 ?? this.last4,
  posDeviceId: posDeviceId ?? this.posDeviceId,
  posEntryMode: posEntryMode != null ? posEntryMode() : this.posEntryMode,
  readMethod: readMethod ?? this.readMethod,
  reader: reader ?? this.reader,
  terminalVerificationResults: terminalVerificationResults != null ? terminalVerificationResults() : this.terminalVerificationResults,
  transactionStatusInformation: transactionStatusInformation != null ? transactionStatusInformation() : this.transactionStatusInformation,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SourceTypeCardPresent &&
          applicationCryptogram == other.applicationCryptogram &&
          applicationPreferredName == other.applicationPreferredName &&
          authorizationCode == other.authorizationCode &&
          authorizationResponseCode == other.authorizationResponseCode &&
          brand == other.brand &&
          country == other.country &&
          cvmType == other.cvmType &&
          dataType == other.dataType &&
          dedicatedFileName == other.dedicatedFileName &&
          emvAuthData == other.emvAuthData &&
          evidenceCustomerSignature == other.evidenceCustomerSignature &&
          evidenceTransactionCertificate == other.evidenceTransactionCertificate &&
          expMonth == other.expMonth &&
          expYear == other.expYear &&
          fingerprint == other.fingerprint &&
          funding == other.funding &&
          last4 == other.last4 &&
          posDeviceId == other.posDeviceId &&
          posEntryMode == other.posEntryMode &&
          readMethod == other.readMethod &&
          reader == other.reader &&
          terminalVerificationResults == other.terminalVerificationResults &&
          transactionStatusInformation == other.transactionStatusInformation; } 
@override int get hashCode { return Object.hashAll([applicationCryptogram, applicationPreferredName, authorizationCode, authorizationResponseCode, brand, country, cvmType, dataType, dedicatedFileName, emvAuthData, evidenceCustomerSignature, evidenceTransactionCertificate, expMonth, expYear, fingerprint, funding, last4, posDeviceId, posEntryMode, readMethod, reader, terminalVerificationResults, transactionStatusInformation]); } 
@override String toString() { return 'SourceTypeCardPresent(applicationCryptogram: $applicationCryptogram, applicationPreferredName: $applicationPreferredName, authorizationCode: $authorizationCode, authorizationResponseCode: $authorizationResponseCode, brand: $brand, country: $country, cvmType: $cvmType, dataType: $dataType, dedicatedFileName: $dedicatedFileName, emvAuthData: $emvAuthData, evidenceCustomerSignature: $evidenceCustomerSignature, evidenceTransactionCertificate: $evidenceTransactionCertificate, expMonth: $expMonth, expYear: $expYear, fingerprint: $fingerprint, funding: $funding, last4: $last4, posDeviceId: $posDeviceId, posEntryMode: $posEntryMode, readMethod: $readMethod, reader: $reader, terminalVerificationResults: $terminalVerificationResults, transactionStatusInformation: $transactionStatusInformation)'; } 
 }
