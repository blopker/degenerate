// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_accounts_account_request_company_address.dart';import 'post_accounts_account_request_company_address_kana.dart';import 'post_accounts_account_request_company_address_kanji.dart';import 'post_accounts_account_request_company_directorship_declaration.dart';import 'post_accounts_account_request_company_ownership_declaration.dart';import 'post_accounts_account_request_company_registration_date.dart';import 'post_accounts_account_request_company_representative_declaration.dart';import 'post_accounts_account_request_company_verification.dart';import 'registration_date_specs2.dart';final class PostAccountsAccountRequestCompanyOwnershipExemptionReason {const PostAccountsAccountRequestCompanyOwnershipExemptionReason._(this.value);

factory PostAccountsAccountRequestCompanyOwnershipExemptionReason.fromJson(String json) { return switch (json) {
  '' => $empty,
  'qualified_entity_exceeds_ownership_threshold' => qualifiedEntityExceedsOwnershipThreshold,
  'qualifies_as_financial_institution' => qualifiesAsFinancialInstitution,
  _ => PostAccountsAccountRequestCompanyOwnershipExemptionReason._(json),
}; }

static const PostAccountsAccountRequestCompanyOwnershipExemptionReason $empty = PostAccountsAccountRequestCompanyOwnershipExemptionReason._('');

static const PostAccountsAccountRequestCompanyOwnershipExemptionReason qualifiedEntityExceedsOwnershipThreshold = PostAccountsAccountRequestCompanyOwnershipExemptionReason._('qualified_entity_exceeds_ownership_threshold');

static const PostAccountsAccountRequestCompanyOwnershipExemptionReason qualifiesAsFinancialInstitution = PostAccountsAccountRequestCompanyOwnershipExemptionReason._('qualifies_as_financial_institution');

static const List<PostAccountsAccountRequestCompanyOwnershipExemptionReason> values = [$empty, qualifiedEntityExceedsOwnershipThreshold, qualifiesAsFinancialInstitution];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountRequestCompanyOwnershipExemptionReason && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCompanyOwnershipExemptionReason($value)'; } 
 }
final class PostAccountsAccountRequestCompanyStructure {const PostAccountsAccountRequestCompanyStructure._(this.value);

factory PostAccountsAccountRequestCompanyStructure.fromJson(String json) { return switch (json) {
  '' => $empty,
  'free_zone_establishment' => freeZoneEstablishment,
  'free_zone_llc' => freeZoneLlc,
  'government_instrumentality' => governmentInstrumentality,
  'governmental_unit' => governmentalUnit,
  'incorporated_non_profit' => incorporatedNonProfit,
  'incorporated_partnership' => incorporatedPartnership,
  'limited_liability_partnership' => limitedLiabilityPartnership,
  'llc' => llc,
  'multi_member_llc' => multiMemberLlc,
  'private_company' => privateCompany,
  'private_corporation' => privateCorporation,
  'private_partnership' => privatePartnership,
  'public_company' => publicCompany,
  'public_corporation' => publicCorporation,
  'public_partnership' => publicPartnership,
  'registered_charity' => registeredCharity,
  'single_member_llc' => singleMemberLlc,
  'sole_establishment' => soleEstablishment,
  'sole_proprietorship' => soleProprietorship,
  'tax_exempt_government_instrumentality' => taxExemptGovernmentInstrumentality,
  'unincorporated_association' => unincorporatedAssociation,
  'unincorporated_non_profit' => unincorporatedNonProfit,
  'unincorporated_partnership' => unincorporatedPartnership,
  _ => PostAccountsAccountRequestCompanyStructure._(json),
}; }

static const PostAccountsAccountRequestCompanyStructure $empty = PostAccountsAccountRequestCompanyStructure._('');

static const PostAccountsAccountRequestCompanyStructure freeZoneEstablishment = PostAccountsAccountRequestCompanyStructure._('free_zone_establishment');

static const PostAccountsAccountRequestCompanyStructure freeZoneLlc = PostAccountsAccountRequestCompanyStructure._('free_zone_llc');

static const PostAccountsAccountRequestCompanyStructure governmentInstrumentality = PostAccountsAccountRequestCompanyStructure._('government_instrumentality');

static const PostAccountsAccountRequestCompanyStructure governmentalUnit = PostAccountsAccountRequestCompanyStructure._('governmental_unit');

static const PostAccountsAccountRequestCompanyStructure incorporatedNonProfit = PostAccountsAccountRequestCompanyStructure._('incorporated_non_profit');

static const PostAccountsAccountRequestCompanyStructure incorporatedPartnership = PostAccountsAccountRequestCompanyStructure._('incorporated_partnership');

static const PostAccountsAccountRequestCompanyStructure limitedLiabilityPartnership = PostAccountsAccountRequestCompanyStructure._('limited_liability_partnership');

static const PostAccountsAccountRequestCompanyStructure llc = PostAccountsAccountRequestCompanyStructure._('llc');

static const PostAccountsAccountRequestCompanyStructure multiMemberLlc = PostAccountsAccountRequestCompanyStructure._('multi_member_llc');

static const PostAccountsAccountRequestCompanyStructure privateCompany = PostAccountsAccountRequestCompanyStructure._('private_company');

static const PostAccountsAccountRequestCompanyStructure privateCorporation = PostAccountsAccountRequestCompanyStructure._('private_corporation');

static const PostAccountsAccountRequestCompanyStructure privatePartnership = PostAccountsAccountRequestCompanyStructure._('private_partnership');

static const PostAccountsAccountRequestCompanyStructure publicCompany = PostAccountsAccountRequestCompanyStructure._('public_company');

static const PostAccountsAccountRequestCompanyStructure publicCorporation = PostAccountsAccountRequestCompanyStructure._('public_corporation');

static const PostAccountsAccountRequestCompanyStructure publicPartnership = PostAccountsAccountRequestCompanyStructure._('public_partnership');

static const PostAccountsAccountRequestCompanyStructure registeredCharity = PostAccountsAccountRequestCompanyStructure._('registered_charity');

static const PostAccountsAccountRequestCompanyStructure singleMemberLlc = PostAccountsAccountRequestCompanyStructure._('single_member_llc');

static const PostAccountsAccountRequestCompanyStructure soleEstablishment = PostAccountsAccountRequestCompanyStructure._('sole_establishment');

static const PostAccountsAccountRequestCompanyStructure soleProprietorship = PostAccountsAccountRequestCompanyStructure._('sole_proprietorship');

static const PostAccountsAccountRequestCompanyStructure taxExemptGovernmentInstrumentality = PostAccountsAccountRequestCompanyStructure._('tax_exempt_government_instrumentality');

static const PostAccountsAccountRequestCompanyStructure unincorporatedAssociation = PostAccountsAccountRequestCompanyStructure._('unincorporated_association');

static const PostAccountsAccountRequestCompanyStructure unincorporatedNonProfit = PostAccountsAccountRequestCompanyStructure._('unincorporated_non_profit');

static const PostAccountsAccountRequestCompanyStructure unincorporatedPartnership = PostAccountsAccountRequestCompanyStructure._('unincorporated_partnership');

static const List<PostAccountsAccountRequestCompanyStructure> values = [$empty, freeZoneEstablishment, freeZoneLlc, governmentInstrumentality, governmentalUnit, incorporatedNonProfit, incorporatedPartnership, limitedLiabilityPartnership, llc, multiMemberLlc, privateCompany, privateCorporation, privatePartnership, publicCompany, publicCorporation, publicPartnership, registeredCharity, singleMemberLlc, soleEstablishment, soleProprietorship, taxExemptGovernmentInstrumentality, unincorporatedAssociation, unincorporatedNonProfit, unincorporatedPartnership];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountRequestCompanyStructure && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCompanyStructure($value)'; } 
 }
/// Information about the company or business. This field is available for any `business_type`. Once you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
final class PostAccountsAccountRequestCompany {const PostAccountsAccountRequestCompany({this.address, this.addressKana, this.addressKanji, this.directorsProvided, this.directorshipDeclaration, this.executivesProvided, this.exportLicenseId, this.exportPurposeCode, this.name, this.nameKana, this.nameKanji, this.ownersProvided, this.ownershipDeclaration, this.ownershipExemptionReason, this.phone, this.registrationDate, this.registrationNumber, this.representativeDeclaration, this.structure, this.taxId, this.taxIdRegistrar, this.vatId, this.verification, });

factory PostAccountsAccountRequestCompany.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCompany(
  address: json['address'] != null ? PostAccountsAccountRequestCompanyAddress.fromJson(json['address'] as Map<String, dynamic>) : null,
  addressKana: json['address_kana'] != null ? PostAccountsAccountRequestCompanyAddressKana.fromJson(json['address_kana'] as Map<String, dynamic>) : null,
  addressKanji: json['address_kanji'] != null ? PostAccountsAccountRequestCompanyAddressKanji.fromJson(json['address_kanji'] as Map<String, dynamic>) : null,
  directorsProvided: json['directors_provided'] as bool?,
  directorshipDeclaration: json['directorship_declaration'] != null ? PostAccountsAccountRequestCompanyDirectorshipDeclaration.fromJson(json['directorship_declaration'] as Map<String, dynamic>) : null,
  executivesProvided: json['executives_provided'] as bool?,
  exportLicenseId: json['export_license_id'] as String?,
  exportPurposeCode: json['export_purpose_code'] as String?,
  name: json['name'] as String?,
  nameKana: json['name_kana'] as String?,
  nameKanji: json['name_kanji'] as String?,
  ownersProvided: json['owners_provided'] as bool?,
  ownershipDeclaration: json['ownership_declaration'] != null ? PostAccountsAccountRequestCompanyOwnershipDeclaration.fromJson(json['ownership_declaration'] as Map<String, dynamic>) : null,
  ownershipExemptionReason: json['ownership_exemption_reason'] != null ? PostAccountsAccountRequestCompanyOwnershipExemptionReason.fromJson(json['ownership_exemption_reason'] as String) : null,
  phone: json['phone'] as String?,
  registrationDate: json['registration_date'] != null ? OneOf2.parse(json['registration_date'], fromA: (v) => RegistrationDateSpecs2.fromJson(v as Map<String, dynamic>), fromB: (v) => PostAccountsAccountRequestCompanyRegistrationDateVariant2.fromJson(v as String),) : null,
  registrationNumber: json['registration_number'] as String?,
  representativeDeclaration: json['representative_declaration'] != null ? PostAccountsAccountRequestCompanyRepresentativeDeclaration.fromJson(json['representative_declaration'] as Map<String, dynamic>) : null,
  structure: json['structure'] != null ? PostAccountsAccountRequestCompanyStructure.fromJson(json['structure'] as String) : null,
  taxId: json['tax_id'] as String?,
  taxIdRegistrar: json['tax_id_registrar'] as String?,
  vatId: json['vat_id'] as String?,
  verification: json['verification'] != null ? PostAccountsAccountRequestCompanyVerification.fromJson(json['verification'] as Map<String, dynamic>) : null,
); }

final PostAccountsAccountRequestCompanyAddress? address;

final PostAccountsAccountRequestCompanyAddressKana? addressKana;

final PostAccountsAccountRequestCompanyAddressKanji? addressKanji;

final bool? directorsProvided;

final PostAccountsAccountRequestCompanyDirectorshipDeclaration? directorshipDeclaration;

final bool? executivesProvided;

final String? exportLicenseId;

final String? exportPurposeCode;

final String? name;

final String? nameKana;

final String? nameKanji;

final bool? ownersProvided;

final PostAccountsAccountRequestCompanyOwnershipDeclaration? ownershipDeclaration;

final PostAccountsAccountRequestCompanyOwnershipExemptionReason? ownershipExemptionReason;

final String? phone;

final PostAccountsAccountRequestCompanyRegistrationDate? registrationDate;

final String? registrationNumber;

final PostAccountsAccountRequestCompanyRepresentativeDeclaration? representativeDeclaration;

final PostAccountsAccountRequestCompanyStructure? structure;

final String? taxId;

final String? taxIdRegistrar;

final String? vatId;

final PostAccountsAccountRequestCompanyVerification? verification;

Map<String, dynamic> toJson() { return {
  if (address != null) 'address': address?.toJson(),
  if (addressKana != null) 'address_kana': addressKana?.toJson(),
  if (addressKanji != null) 'address_kanji': addressKanji?.toJson(),
  'directors_provided': ?directorsProvided,
  if (directorshipDeclaration != null) 'directorship_declaration': directorshipDeclaration?.toJson(),
  'executives_provided': ?executivesProvided,
  'export_license_id': ?exportLicenseId,
  'export_purpose_code': ?exportPurposeCode,
  'name': ?name,
  'name_kana': ?nameKana,
  'name_kanji': ?nameKanji,
  'owners_provided': ?ownersProvided,
  if (ownershipDeclaration != null) 'ownership_declaration': ownershipDeclaration?.toJson(),
  if (ownershipExemptionReason != null) 'ownership_exemption_reason': ownershipExemptionReason?.toJson(),
  'phone': ?phone,
  if (registrationDate != null) 'registration_date': registrationDate?.toJson(),
  'registration_number': ?registrationNumber,
  if (representativeDeclaration != null) 'representative_declaration': representativeDeclaration?.toJson(),
  if (structure != null) 'structure': structure?.toJson(),
  'tax_id': ?taxId,
  'tax_id_registrar': ?taxIdRegistrar,
  'vat_id': ?vatId,
  if (verification != null) 'verification': verification?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsAccountRequestCompany copyWith({PostAccountsAccountRequestCompanyAddress Function()? address, PostAccountsAccountRequestCompanyAddressKana Function()? addressKana, PostAccountsAccountRequestCompanyAddressKanji Function()? addressKanji, bool Function()? directorsProvided, PostAccountsAccountRequestCompanyDirectorshipDeclaration Function()? directorshipDeclaration, bool Function()? executivesProvided, String Function()? exportLicenseId, String Function()? exportPurposeCode, String Function()? name, String Function()? nameKana, String Function()? nameKanji, bool Function()? ownersProvided, PostAccountsAccountRequestCompanyOwnershipDeclaration Function()? ownershipDeclaration, PostAccountsAccountRequestCompanyOwnershipExemptionReason Function()? ownershipExemptionReason, String Function()? phone, PostAccountsAccountRequestCompanyRegistrationDate Function()? registrationDate, String Function()? registrationNumber, PostAccountsAccountRequestCompanyRepresentativeDeclaration Function()? representativeDeclaration, PostAccountsAccountRequestCompanyStructure Function()? structure, String Function()? taxId, String Function()? taxIdRegistrar, String Function()? vatId, PostAccountsAccountRequestCompanyVerification Function()? verification, }) { return PostAccountsAccountRequestCompany(
  address: address != null ? address() : this.address,
  addressKana: addressKana != null ? addressKana() : this.addressKana,
  addressKanji: addressKanji != null ? addressKanji() : this.addressKanji,
  directorsProvided: directorsProvided != null ? directorsProvided() : this.directorsProvided,
  directorshipDeclaration: directorshipDeclaration != null ? directorshipDeclaration() : this.directorshipDeclaration,
  executivesProvided: executivesProvided != null ? executivesProvided() : this.executivesProvided,
  exportLicenseId: exportLicenseId != null ? exportLicenseId() : this.exportLicenseId,
  exportPurposeCode: exportPurposeCode != null ? exportPurposeCode() : this.exportPurposeCode,
  name: name != null ? name() : this.name,
  nameKana: nameKana != null ? nameKana() : this.nameKana,
  nameKanji: nameKanji != null ? nameKanji() : this.nameKanji,
  ownersProvided: ownersProvided != null ? ownersProvided() : this.ownersProvided,
  ownershipDeclaration: ownershipDeclaration != null ? ownershipDeclaration() : this.ownershipDeclaration,
  ownershipExemptionReason: ownershipExemptionReason != null ? ownershipExemptionReason() : this.ownershipExemptionReason,
  phone: phone != null ? phone() : this.phone,
  registrationDate: registrationDate != null ? registrationDate() : this.registrationDate,
  registrationNumber: registrationNumber != null ? registrationNumber() : this.registrationNumber,
  representativeDeclaration: representativeDeclaration != null ? representativeDeclaration() : this.representativeDeclaration,
  structure: structure != null ? structure() : this.structure,
  taxId: taxId != null ? taxId() : this.taxId,
  taxIdRegistrar: taxIdRegistrar != null ? taxIdRegistrar() : this.taxIdRegistrar,
  vatId: vatId != null ? vatId() : this.vatId,
  verification: verification != null ? verification() : this.verification,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCompany &&
          address == other.address &&
          addressKana == other.addressKana &&
          addressKanji == other.addressKanji &&
          directorsProvided == other.directorsProvided &&
          directorshipDeclaration == other.directorshipDeclaration &&
          executivesProvided == other.executivesProvided &&
          exportLicenseId == other.exportLicenseId &&
          exportPurposeCode == other.exportPurposeCode &&
          name == other.name &&
          nameKana == other.nameKana &&
          nameKanji == other.nameKanji &&
          ownersProvided == other.ownersProvided &&
          ownershipDeclaration == other.ownershipDeclaration &&
          ownershipExemptionReason == other.ownershipExemptionReason &&
          phone == other.phone &&
          registrationDate == other.registrationDate &&
          registrationNumber == other.registrationNumber &&
          representativeDeclaration == other.representativeDeclaration &&
          structure == other.structure &&
          taxId == other.taxId &&
          taxIdRegistrar == other.taxIdRegistrar &&
          vatId == other.vatId &&
          verification == other.verification; } 
@override int get hashCode { return Object.hashAll([address, addressKana, addressKanji, directorsProvided, directorshipDeclaration, executivesProvided, exportLicenseId, exportPurposeCode, name, nameKana, nameKanji, ownersProvided, ownershipDeclaration, ownershipExemptionReason, phone, registrationDate, registrationNumber, representativeDeclaration, structure, taxId, taxIdRegistrar, vatId, verification]); } 
@override String toString() { return 'PostAccountsAccountRequestCompany(address: $address, addressKana: $addressKana, addressKanji: $addressKanji, directorsProvided: $directorsProvided, directorshipDeclaration: $directorshipDeclaration, executivesProvided: $executivesProvided, exportLicenseId: $exportLicenseId, exportPurposeCode: $exportPurposeCode, name: $name, nameKana: $nameKana, nameKanji: $nameKanji, ownersProvided: $ownersProvided, ownershipDeclaration: $ownershipDeclaration, ownershipExemptionReason: $ownershipExemptionReason, phone: $phone, registrationDate: $registrationDate, registrationNumber: $registrationNumber, representativeDeclaration: $representativeDeclaration, structure: $structure, taxId: $taxId, taxIdRegistrar: $taxIdRegistrar, vatId: $vatId, verification: $verification)'; } 
 }
