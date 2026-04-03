// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The code for the type of error.
@immutable final class AccountRequirementsErrorCode {const AccountRequirementsErrorCode._(this.value);

factory AccountRequirementsErrorCode.fromJson(String json) { return switch (json) {
  'external_request' => externalRequest,
  'information_missing' => informationMissing,
  'invalid_address_city_state_postal_code' => invalidAddressCityStatePostalCode,
  'invalid_address_highway_contract_box' => invalidAddressHighwayContractBox,
  'invalid_address_private_mailbox' => invalidAddressPrivateMailbox,
  'invalid_business_profile_name' => invalidBusinessProfileName,
  'invalid_business_profile_name_denylisted' => invalidBusinessProfileNameDenylisted,
  'invalid_company_name_denylisted' => invalidCompanyNameDenylisted,
  'invalid_dob_age_over_maximum' => invalidDobAgeOverMaximum,
  'invalid_dob_age_under_18' => invalidDobAgeUnder18,
  'invalid_dob_age_under_minimum' => invalidDobAgeUnderMinimum,
  'invalid_product_description_length' => invalidProductDescriptionLength,
  'invalid_product_description_url_match' => invalidProductDescriptionUrlMatch,
  'invalid_representative_country' => invalidRepresentativeCountry,
  'invalid_signator' => invalidSignator,
  'invalid_statement_descriptor_business_mismatch' => invalidStatementDescriptorBusinessMismatch,
  'invalid_statement_descriptor_denylisted' => invalidStatementDescriptorDenylisted,
  'invalid_statement_descriptor_length' => invalidStatementDescriptorLength,
  'invalid_statement_descriptor_prefix_denylisted' => invalidStatementDescriptorPrefixDenylisted,
  'invalid_statement_descriptor_prefix_mismatch' => invalidStatementDescriptorPrefixMismatch,
  'invalid_street_address' => invalidStreetAddress,
  'invalid_tax_id' => invalidTaxId,
  'invalid_tax_id_format' => invalidTaxIdFormat,
  'invalid_tos_acceptance' => invalidTosAcceptance,
  'invalid_url_denylisted' => invalidUrlDenylisted,
  'invalid_url_format' => invalidUrlFormat,
  'invalid_url_web_presence_detected' => invalidUrlWebPresenceDetected,
  'invalid_url_website_business_information_mismatch' => invalidUrlWebsiteBusinessInformationMismatch,
  'invalid_url_website_empty' => invalidUrlWebsiteEmpty,
  'invalid_url_website_inaccessible' => invalidUrlWebsiteInaccessible,
  'invalid_url_website_inaccessible_geoblocked' => invalidUrlWebsiteInaccessibleGeoblocked,
  'invalid_url_website_inaccessible_password_protected' => invalidUrlWebsiteInaccessiblePasswordProtected,
  'invalid_url_website_incomplete' => invalidUrlWebsiteIncomplete,
  'invalid_url_website_incomplete_cancellation_policy' => invalidUrlWebsiteIncompleteCancellationPolicy,
  'invalid_url_website_incomplete_customer_service_details' => invalidUrlWebsiteIncompleteCustomerServiceDetails,
  'invalid_url_website_incomplete_legal_restrictions' => invalidUrlWebsiteIncompleteLegalRestrictions,
  'invalid_url_website_incomplete_refund_policy' => invalidUrlWebsiteIncompleteRefundPolicy,
  'invalid_url_website_incomplete_return_policy' => invalidUrlWebsiteIncompleteReturnPolicy,
  'invalid_url_website_incomplete_terms_and_conditions' => invalidUrlWebsiteIncompleteTermsAndConditions,
  'invalid_url_website_incomplete_under_construction' => invalidUrlWebsiteIncompleteUnderConstruction,
  'invalid_url_website_other' => invalidUrlWebsiteOther,
  'invalid_value_other' => invalidValueOther,
  'unsupported_business_type' => unsupportedBusinessType,
  'verification_directors_mismatch' => verificationDirectorsMismatch,
  'verification_document_address_mismatch' => verificationDocumentAddressMismatch,
  'verification_document_address_missing' => verificationDocumentAddressMissing,
  'verification_document_corrupt' => verificationDocumentCorrupt,
  'verification_document_country_not_supported' => verificationDocumentCountryNotSupported,
  'verification_document_directors_mismatch' => verificationDocumentDirectorsMismatch,
  'verification_document_dob_mismatch' => verificationDocumentDobMismatch,
  'verification_document_duplicate_type' => verificationDocumentDuplicateType,
  'verification_document_expired' => verificationDocumentExpired,
  'verification_document_failed_copy' => verificationDocumentFailedCopy,
  'verification_document_failed_greyscale' => verificationDocumentFailedGreyscale,
  'verification_document_failed_other' => verificationDocumentFailedOther,
  'verification_document_failed_test_mode' => verificationDocumentFailedTestMode,
  'verification_document_fraudulent' => verificationDocumentFraudulent,
  'verification_document_id_number_mismatch' => verificationDocumentIdNumberMismatch,
  'verification_document_id_number_missing' => verificationDocumentIdNumberMissing,
  'verification_document_incomplete' => verificationDocumentIncomplete,
  'verification_document_invalid' => verificationDocumentInvalid,
  'verification_document_issue_or_expiry_date_missing' => verificationDocumentIssueOrExpiryDateMissing,
  'verification_document_manipulated' => verificationDocumentManipulated,
  'verification_document_missing_back' => verificationDocumentMissingBack,
  'verification_document_missing_front' => verificationDocumentMissingFront,
  'verification_document_name_mismatch' => verificationDocumentNameMismatch,
  'verification_document_name_missing' => verificationDocumentNameMissing,
  'verification_document_nationality_mismatch' => verificationDocumentNationalityMismatch,
  'verification_document_not_readable' => verificationDocumentNotReadable,
  'verification_document_not_signed' => verificationDocumentNotSigned,
  'verification_document_not_uploaded' => verificationDocumentNotUploaded,
  'verification_document_photo_mismatch' => verificationDocumentPhotoMismatch,
  'verification_document_too_large' => verificationDocumentTooLarge,
  'verification_document_type_not_supported' => verificationDocumentTypeNotSupported,
  'verification_extraneous_directors' => verificationExtraneousDirectors,
  'verification_failed_address_match' => verificationFailedAddressMatch,
  'verification_failed_authorizer_authority' => verificationFailedAuthorizerAuthority,
  'verification_failed_business_iec_number' => verificationFailedBusinessIecNumber,
  'verification_failed_document_match' => verificationFailedDocumentMatch,
  'verification_failed_id_number_match' => verificationFailedIdNumberMatch,
  'verification_failed_keyed_identity' => verificationFailedKeyedIdentity,
  'verification_failed_keyed_match' => verificationFailedKeyedMatch,
  'verification_failed_name_match' => verificationFailedNameMatch,
  'verification_failed_other' => verificationFailedOther,
  'verification_failed_representative_authority' => verificationFailedRepresentativeAuthority,
  'verification_failed_residential_address' => verificationFailedResidentialAddress,
  'verification_failed_tax_id_match' => verificationFailedTaxIdMatch,
  'verification_failed_tax_id_not_issued' => verificationFailedTaxIdNotIssued,
  'verification_legal_entity_structure_mismatch' => verificationLegalEntityStructureMismatch,
  'verification_missing_directors' => verificationMissingDirectors,
  'verification_missing_executives' => verificationMissingExecutives,
  'verification_missing_owners' => verificationMissingOwners,
  'verification_rejected_ownership_exemption_reason' => verificationRejectedOwnershipExemptionReason,
  'verification_requires_additional_memorandum_of_associations' => verificationRequiresAdditionalMemorandumOfAssociations,
  'verification_requires_additional_proof_of_registration' => verificationRequiresAdditionalProofOfRegistration,
  'verification_supportability' => verificationSupportability,
  _ => AccountRequirementsErrorCode._(json),
}; }

static const AccountRequirementsErrorCode externalRequest = AccountRequirementsErrorCode._('external_request');

static const AccountRequirementsErrorCode informationMissing = AccountRequirementsErrorCode._('information_missing');

static const AccountRequirementsErrorCode invalidAddressCityStatePostalCode = AccountRequirementsErrorCode._('invalid_address_city_state_postal_code');

static const AccountRequirementsErrorCode invalidAddressHighwayContractBox = AccountRequirementsErrorCode._('invalid_address_highway_contract_box');

static const AccountRequirementsErrorCode invalidAddressPrivateMailbox = AccountRequirementsErrorCode._('invalid_address_private_mailbox');

static const AccountRequirementsErrorCode invalidBusinessProfileName = AccountRequirementsErrorCode._('invalid_business_profile_name');

static const AccountRequirementsErrorCode invalidBusinessProfileNameDenylisted = AccountRequirementsErrorCode._('invalid_business_profile_name_denylisted');

static const AccountRequirementsErrorCode invalidCompanyNameDenylisted = AccountRequirementsErrorCode._('invalid_company_name_denylisted');

static const AccountRequirementsErrorCode invalidDobAgeOverMaximum = AccountRequirementsErrorCode._('invalid_dob_age_over_maximum');

static const AccountRequirementsErrorCode invalidDobAgeUnder18 = AccountRequirementsErrorCode._('invalid_dob_age_under_18');

static const AccountRequirementsErrorCode invalidDobAgeUnderMinimum = AccountRequirementsErrorCode._('invalid_dob_age_under_minimum');

static const AccountRequirementsErrorCode invalidProductDescriptionLength = AccountRequirementsErrorCode._('invalid_product_description_length');

static const AccountRequirementsErrorCode invalidProductDescriptionUrlMatch = AccountRequirementsErrorCode._('invalid_product_description_url_match');

static const AccountRequirementsErrorCode invalidRepresentativeCountry = AccountRequirementsErrorCode._('invalid_representative_country');

static const AccountRequirementsErrorCode invalidSignator = AccountRequirementsErrorCode._('invalid_signator');

static const AccountRequirementsErrorCode invalidStatementDescriptorBusinessMismatch = AccountRequirementsErrorCode._('invalid_statement_descriptor_business_mismatch');

static const AccountRequirementsErrorCode invalidStatementDescriptorDenylisted = AccountRequirementsErrorCode._('invalid_statement_descriptor_denylisted');

static const AccountRequirementsErrorCode invalidStatementDescriptorLength = AccountRequirementsErrorCode._('invalid_statement_descriptor_length');

static const AccountRequirementsErrorCode invalidStatementDescriptorPrefixDenylisted = AccountRequirementsErrorCode._('invalid_statement_descriptor_prefix_denylisted');

static const AccountRequirementsErrorCode invalidStatementDescriptorPrefixMismatch = AccountRequirementsErrorCode._('invalid_statement_descriptor_prefix_mismatch');

static const AccountRequirementsErrorCode invalidStreetAddress = AccountRequirementsErrorCode._('invalid_street_address');

static const AccountRequirementsErrorCode invalidTaxId = AccountRequirementsErrorCode._('invalid_tax_id');

static const AccountRequirementsErrorCode invalidTaxIdFormat = AccountRequirementsErrorCode._('invalid_tax_id_format');

static const AccountRequirementsErrorCode invalidTosAcceptance = AccountRequirementsErrorCode._('invalid_tos_acceptance');

static const AccountRequirementsErrorCode invalidUrlDenylisted = AccountRequirementsErrorCode._('invalid_url_denylisted');

static const AccountRequirementsErrorCode invalidUrlFormat = AccountRequirementsErrorCode._('invalid_url_format');

static const AccountRequirementsErrorCode invalidUrlWebPresenceDetected = AccountRequirementsErrorCode._('invalid_url_web_presence_detected');

static const AccountRequirementsErrorCode invalidUrlWebsiteBusinessInformationMismatch = AccountRequirementsErrorCode._('invalid_url_website_business_information_mismatch');

static const AccountRequirementsErrorCode invalidUrlWebsiteEmpty = AccountRequirementsErrorCode._('invalid_url_website_empty');

static const AccountRequirementsErrorCode invalidUrlWebsiteInaccessible = AccountRequirementsErrorCode._('invalid_url_website_inaccessible');

static const AccountRequirementsErrorCode invalidUrlWebsiteInaccessibleGeoblocked = AccountRequirementsErrorCode._('invalid_url_website_inaccessible_geoblocked');

static const AccountRequirementsErrorCode invalidUrlWebsiteInaccessiblePasswordProtected = AccountRequirementsErrorCode._('invalid_url_website_inaccessible_password_protected');

static const AccountRequirementsErrorCode invalidUrlWebsiteIncomplete = AccountRequirementsErrorCode._('invalid_url_website_incomplete');

static const AccountRequirementsErrorCode invalidUrlWebsiteIncompleteCancellationPolicy = AccountRequirementsErrorCode._('invalid_url_website_incomplete_cancellation_policy');

static const AccountRequirementsErrorCode invalidUrlWebsiteIncompleteCustomerServiceDetails = AccountRequirementsErrorCode._('invalid_url_website_incomplete_customer_service_details');

static const AccountRequirementsErrorCode invalidUrlWebsiteIncompleteLegalRestrictions = AccountRequirementsErrorCode._('invalid_url_website_incomplete_legal_restrictions');

static const AccountRequirementsErrorCode invalidUrlWebsiteIncompleteRefundPolicy = AccountRequirementsErrorCode._('invalid_url_website_incomplete_refund_policy');

static const AccountRequirementsErrorCode invalidUrlWebsiteIncompleteReturnPolicy = AccountRequirementsErrorCode._('invalid_url_website_incomplete_return_policy');

static const AccountRequirementsErrorCode invalidUrlWebsiteIncompleteTermsAndConditions = AccountRequirementsErrorCode._('invalid_url_website_incomplete_terms_and_conditions');

static const AccountRequirementsErrorCode invalidUrlWebsiteIncompleteUnderConstruction = AccountRequirementsErrorCode._('invalid_url_website_incomplete_under_construction');

static const AccountRequirementsErrorCode invalidUrlWebsiteOther = AccountRequirementsErrorCode._('invalid_url_website_other');

static const AccountRequirementsErrorCode invalidValueOther = AccountRequirementsErrorCode._('invalid_value_other');

static const AccountRequirementsErrorCode unsupportedBusinessType = AccountRequirementsErrorCode._('unsupported_business_type');

static const AccountRequirementsErrorCode verificationDirectorsMismatch = AccountRequirementsErrorCode._('verification_directors_mismatch');

static const AccountRequirementsErrorCode verificationDocumentAddressMismatch = AccountRequirementsErrorCode._('verification_document_address_mismatch');

static const AccountRequirementsErrorCode verificationDocumentAddressMissing = AccountRequirementsErrorCode._('verification_document_address_missing');

static const AccountRequirementsErrorCode verificationDocumentCorrupt = AccountRequirementsErrorCode._('verification_document_corrupt');

static const AccountRequirementsErrorCode verificationDocumentCountryNotSupported = AccountRequirementsErrorCode._('verification_document_country_not_supported');

static const AccountRequirementsErrorCode verificationDocumentDirectorsMismatch = AccountRequirementsErrorCode._('verification_document_directors_mismatch');

static const AccountRequirementsErrorCode verificationDocumentDobMismatch = AccountRequirementsErrorCode._('verification_document_dob_mismatch');

static const AccountRequirementsErrorCode verificationDocumentDuplicateType = AccountRequirementsErrorCode._('verification_document_duplicate_type');

static const AccountRequirementsErrorCode verificationDocumentExpired = AccountRequirementsErrorCode._('verification_document_expired');

static const AccountRequirementsErrorCode verificationDocumentFailedCopy = AccountRequirementsErrorCode._('verification_document_failed_copy');

static const AccountRequirementsErrorCode verificationDocumentFailedGreyscale = AccountRequirementsErrorCode._('verification_document_failed_greyscale');

static const AccountRequirementsErrorCode verificationDocumentFailedOther = AccountRequirementsErrorCode._('verification_document_failed_other');

static const AccountRequirementsErrorCode verificationDocumentFailedTestMode = AccountRequirementsErrorCode._('verification_document_failed_test_mode');

static const AccountRequirementsErrorCode verificationDocumentFraudulent = AccountRequirementsErrorCode._('verification_document_fraudulent');

static const AccountRequirementsErrorCode verificationDocumentIdNumberMismatch = AccountRequirementsErrorCode._('verification_document_id_number_mismatch');

static const AccountRequirementsErrorCode verificationDocumentIdNumberMissing = AccountRequirementsErrorCode._('verification_document_id_number_missing');

static const AccountRequirementsErrorCode verificationDocumentIncomplete = AccountRequirementsErrorCode._('verification_document_incomplete');

static const AccountRequirementsErrorCode verificationDocumentInvalid = AccountRequirementsErrorCode._('verification_document_invalid');

static const AccountRequirementsErrorCode verificationDocumentIssueOrExpiryDateMissing = AccountRequirementsErrorCode._('verification_document_issue_or_expiry_date_missing');

static const AccountRequirementsErrorCode verificationDocumentManipulated = AccountRequirementsErrorCode._('verification_document_manipulated');

static const AccountRequirementsErrorCode verificationDocumentMissingBack = AccountRequirementsErrorCode._('verification_document_missing_back');

static const AccountRequirementsErrorCode verificationDocumentMissingFront = AccountRequirementsErrorCode._('verification_document_missing_front');

static const AccountRequirementsErrorCode verificationDocumentNameMismatch = AccountRequirementsErrorCode._('verification_document_name_mismatch');

static const AccountRequirementsErrorCode verificationDocumentNameMissing = AccountRequirementsErrorCode._('verification_document_name_missing');

static const AccountRequirementsErrorCode verificationDocumentNationalityMismatch = AccountRequirementsErrorCode._('verification_document_nationality_mismatch');

static const AccountRequirementsErrorCode verificationDocumentNotReadable = AccountRequirementsErrorCode._('verification_document_not_readable');

static const AccountRequirementsErrorCode verificationDocumentNotSigned = AccountRequirementsErrorCode._('verification_document_not_signed');

static const AccountRequirementsErrorCode verificationDocumentNotUploaded = AccountRequirementsErrorCode._('verification_document_not_uploaded');

static const AccountRequirementsErrorCode verificationDocumentPhotoMismatch = AccountRequirementsErrorCode._('verification_document_photo_mismatch');

static const AccountRequirementsErrorCode verificationDocumentTooLarge = AccountRequirementsErrorCode._('verification_document_too_large');

static const AccountRequirementsErrorCode verificationDocumentTypeNotSupported = AccountRequirementsErrorCode._('verification_document_type_not_supported');

static const AccountRequirementsErrorCode verificationExtraneousDirectors = AccountRequirementsErrorCode._('verification_extraneous_directors');

static const AccountRequirementsErrorCode verificationFailedAddressMatch = AccountRequirementsErrorCode._('verification_failed_address_match');

static const AccountRequirementsErrorCode verificationFailedAuthorizerAuthority = AccountRequirementsErrorCode._('verification_failed_authorizer_authority');

static const AccountRequirementsErrorCode verificationFailedBusinessIecNumber = AccountRequirementsErrorCode._('verification_failed_business_iec_number');

static const AccountRequirementsErrorCode verificationFailedDocumentMatch = AccountRequirementsErrorCode._('verification_failed_document_match');

static const AccountRequirementsErrorCode verificationFailedIdNumberMatch = AccountRequirementsErrorCode._('verification_failed_id_number_match');

static const AccountRequirementsErrorCode verificationFailedKeyedIdentity = AccountRequirementsErrorCode._('verification_failed_keyed_identity');

static const AccountRequirementsErrorCode verificationFailedKeyedMatch = AccountRequirementsErrorCode._('verification_failed_keyed_match');

static const AccountRequirementsErrorCode verificationFailedNameMatch = AccountRequirementsErrorCode._('verification_failed_name_match');

static const AccountRequirementsErrorCode verificationFailedOther = AccountRequirementsErrorCode._('verification_failed_other');

static const AccountRequirementsErrorCode verificationFailedRepresentativeAuthority = AccountRequirementsErrorCode._('verification_failed_representative_authority');

static const AccountRequirementsErrorCode verificationFailedResidentialAddress = AccountRequirementsErrorCode._('verification_failed_residential_address');

static const AccountRequirementsErrorCode verificationFailedTaxIdMatch = AccountRequirementsErrorCode._('verification_failed_tax_id_match');

static const AccountRequirementsErrorCode verificationFailedTaxIdNotIssued = AccountRequirementsErrorCode._('verification_failed_tax_id_not_issued');

static const AccountRequirementsErrorCode verificationLegalEntityStructureMismatch = AccountRequirementsErrorCode._('verification_legal_entity_structure_mismatch');

static const AccountRequirementsErrorCode verificationMissingDirectors = AccountRequirementsErrorCode._('verification_missing_directors');

static const AccountRequirementsErrorCode verificationMissingExecutives = AccountRequirementsErrorCode._('verification_missing_executives');

static const AccountRequirementsErrorCode verificationMissingOwners = AccountRequirementsErrorCode._('verification_missing_owners');

static const AccountRequirementsErrorCode verificationRejectedOwnershipExemptionReason = AccountRequirementsErrorCode._('verification_rejected_ownership_exemption_reason');

static const AccountRequirementsErrorCode verificationRequiresAdditionalMemorandumOfAssociations = AccountRequirementsErrorCode._('verification_requires_additional_memorandum_of_associations');

static const AccountRequirementsErrorCode verificationRequiresAdditionalProofOfRegistration = AccountRequirementsErrorCode._('verification_requires_additional_proof_of_registration');

static const AccountRequirementsErrorCode verificationSupportability = AccountRequirementsErrorCode._('verification_supportability');

static const List<AccountRequirementsErrorCode> values = [externalRequest, informationMissing, invalidAddressCityStatePostalCode, invalidAddressHighwayContractBox, invalidAddressPrivateMailbox, invalidBusinessProfileName, invalidBusinessProfileNameDenylisted, invalidCompanyNameDenylisted, invalidDobAgeOverMaximum, invalidDobAgeUnder18, invalidDobAgeUnderMinimum, invalidProductDescriptionLength, invalidProductDescriptionUrlMatch, invalidRepresentativeCountry, invalidSignator, invalidStatementDescriptorBusinessMismatch, invalidStatementDescriptorDenylisted, invalidStatementDescriptorLength, invalidStatementDescriptorPrefixDenylisted, invalidStatementDescriptorPrefixMismatch, invalidStreetAddress, invalidTaxId, invalidTaxIdFormat, invalidTosAcceptance, invalidUrlDenylisted, invalidUrlFormat, invalidUrlWebPresenceDetected, invalidUrlWebsiteBusinessInformationMismatch, invalidUrlWebsiteEmpty, invalidUrlWebsiteInaccessible, invalidUrlWebsiteInaccessibleGeoblocked, invalidUrlWebsiteInaccessiblePasswordProtected, invalidUrlWebsiteIncomplete, invalidUrlWebsiteIncompleteCancellationPolicy, invalidUrlWebsiteIncompleteCustomerServiceDetails, invalidUrlWebsiteIncompleteLegalRestrictions, invalidUrlWebsiteIncompleteRefundPolicy, invalidUrlWebsiteIncompleteReturnPolicy, invalidUrlWebsiteIncompleteTermsAndConditions, invalidUrlWebsiteIncompleteUnderConstruction, invalidUrlWebsiteOther, invalidValueOther, unsupportedBusinessType, verificationDirectorsMismatch, verificationDocumentAddressMismatch, verificationDocumentAddressMissing, verificationDocumentCorrupt, verificationDocumentCountryNotSupported, verificationDocumentDirectorsMismatch, verificationDocumentDobMismatch, verificationDocumentDuplicateType, verificationDocumentExpired, verificationDocumentFailedCopy, verificationDocumentFailedGreyscale, verificationDocumentFailedOther, verificationDocumentFailedTestMode, verificationDocumentFraudulent, verificationDocumentIdNumberMismatch, verificationDocumentIdNumberMissing, verificationDocumentIncomplete, verificationDocumentInvalid, verificationDocumentIssueOrExpiryDateMissing, verificationDocumentManipulated, verificationDocumentMissingBack, verificationDocumentMissingFront, verificationDocumentNameMismatch, verificationDocumentNameMissing, verificationDocumentNationalityMismatch, verificationDocumentNotReadable, verificationDocumentNotSigned, verificationDocumentNotUploaded, verificationDocumentPhotoMismatch, verificationDocumentTooLarge, verificationDocumentTypeNotSupported, verificationExtraneousDirectors, verificationFailedAddressMatch, verificationFailedAuthorizerAuthority, verificationFailedBusinessIecNumber, verificationFailedDocumentMatch, verificationFailedIdNumberMatch, verificationFailedKeyedIdentity, verificationFailedKeyedMatch, verificationFailedNameMatch, verificationFailedOther, verificationFailedRepresentativeAuthority, verificationFailedResidentialAddress, verificationFailedTaxIdMatch, verificationFailedTaxIdNotIssued, verificationLegalEntityStructureMismatch, verificationMissingDirectors, verificationMissingExecutives, verificationMissingOwners, verificationRejectedOwnershipExemptionReason, verificationRequiresAdditionalMemorandumOfAssociations, verificationRequiresAdditionalProofOfRegistration, verificationSupportability];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountRequirementsErrorCode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountRequirementsErrorCode($value)'; } 
 }
/// 
@immutable final class AccountRequirementsError {const AccountRequirementsError({required this.code, required this.reason, required this.requirement, });

factory AccountRequirementsError.fromJson(Map<String, dynamic> json) { return AccountRequirementsError(
  code: AccountRequirementsErrorCode.fromJson(json['code'] as String),
  reason: json['reason'] as String,
  requirement: json['requirement'] as String,
); }

/// The code for the type of error.
final AccountRequirementsErrorCode code;

/// An informative message that indicates the error type and provides additional details about the error.
final String reason;

/// The specific user onboarding requirement field (in the requirements hash) that needs to be resolved.
final String requirement;

Map<String, dynamic> toJson() { return {
  'code': code.toJson(),
  'reason': reason,
  'requirement': requirement,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') &&
      json.containsKey('reason') && json['reason'] is String &&
      json.containsKey('requirement') && json['requirement'] is String; } 
AccountRequirementsError copyWith({AccountRequirementsErrorCode? code, String? reason, String? requirement, }) { return AccountRequirementsError(
  code: code ?? this.code,
  reason: reason ?? this.reason,
  requirement: requirement ?? this.requirement,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountRequirementsError &&
          code == other.code &&
          reason == other.reason &&
          requirement == other.requirement; } 
@override int get hashCode { return Object.hash(code, reason, requirement); } 
@override String toString() { return 'AccountRequirementsError(code: $code, reason: $reason, requirement: $requirement)'; } 
 }
