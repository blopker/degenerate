// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_accounts_request_documents_bank_account_ownership_verification.dart';import 'post_accounts_request_documents_company_license.dart';import 'post_accounts_request_documents_company_memorandum_of_association.dart';import 'post_accounts_request_documents_company_ministerial_decree.dart';import 'post_accounts_request_documents_company_registration_verification.dart';import 'post_accounts_request_documents_company_tax_id_verification.dart';import 'post_accounts_request_documents_proof_of_address.dart';import 'post_accounts_request_documents_proof_of_registration.dart';import 'post_accounts_request_documents_proof_of_ultimate_beneficial_ownership.dart';/// Documents that may be submitted to satisfy various informational requests.
final class PostAccountsRequestDocuments {const PostAccountsRequestDocuments({this.bankAccountOwnershipVerification, this.companyLicense, this.companyMemorandumOfAssociation, this.companyMinisterialDecree, this.companyRegistrationVerification, this.companyTaxIdVerification, this.proofOfAddress, this.proofOfRegistration, this.proofOfUltimateBeneficialOwnership, });

factory PostAccountsRequestDocuments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestDocuments(
  bankAccountOwnershipVerification: json['bank_account_ownership_verification'] != null ? PostAccountsRequestDocumentsBankAccountOwnershipVerification.fromJson(json['bank_account_ownership_verification'] as Map<String, dynamic>) : null,
  companyLicense: json['company_license'] != null ? PostAccountsRequestDocumentsCompanyLicense.fromJson(json['company_license'] as Map<String, dynamic>) : null,
  companyMemorandumOfAssociation: json['company_memorandum_of_association'] != null ? PostAccountsRequestDocumentsCompanyMemorandumOfAssociation.fromJson(json['company_memorandum_of_association'] as Map<String, dynamic>) : null,
  companyMinisterialDecree: json['company_ministerial_decree'] != null ? PostAccountsRequestDocumentsCompanyMinisterialDecree.fromJson(json['company_ministerial_decree'] as Map<String, dynamic>) : null,
  companyRegistrationVerification: json['company_registration_verification'] != null ? PostAccountsRequestDocumentsCompanyRegistrationVerification.fromJson(json['company_registration_verification'] as Map<String, dynamic>) : null,
  companyTaxIdVerification: json['company_tax_id_verification'] != null ? PostAccountsRequestDocumentsCompanyTaxIdVerification.fromJson(json['company_tax_id_verification'] as Map<String, dynamic>) : null,
  proofOfAddress: json['proof_of_address'] != null ? PostAccountsRequestDocumentsProofOfAddress.fromJson(json['proof_of_address'] as Map<String, dynamic>) : null,
  proofOfRegistration: json['proof_of_registration'] != null ? PostAccountsRequestDocumentsProofOfRegistration.fromJson(json['proof_of_registration'] as Map<String, dynamic>) : null,
  proofOfUltimateBeneficialOwnership: json['proof_of_ultimate_beneficial_ownership'] != null ? PostAccountsRequestDocumentsProofOfUltimateBeneficialOwnership.fromJson(json['proof_of_ultimate_beneficial_ownership'] as Map<String, dynamic>) : null,
); }

final PostAccountsRequestDocumentsBankAccountOwnershipVerification? bankAccountOwnershipVerification;

final PostAccountsRequestDocumentsCompanyLicense? companyLicense;

final PostAccountsRequestDocumentsCompanyMemorandumOfAssociation? companyMemorandumOfAssociation;

final PostAccountsRequestDocumentsCompanyMinisterialDecree? companyMinisterialDecree;

final PostAccountsRequestDocumentsCompanyRegistrationVerification? companyRegistrationVerification;

final PostAccountsRequestDocumentsCompanyTaxIdVerification? companyTaxIdVerification;

final PostAccountsRequestDocumentsProofOfAddress? proofOfAddress;

final PostAccountsRequestDocumentsProofOfRegistration? proofOfRegistration;

final PostAccountsRequestDocumentsProofOfUltimateBeneficialOwnership? proofOfUltimateBeneficialOwnership;

Map<String, dynamic> toJson() { return {
  if (bankAccountOwnershipVerification != null) 'bank_account_ownership_verification': bankAccountOwnershipVerification?.toJson(),
  if (companyLicense != null) 'company_license': companyLicense?.toJson(),
  if (companyMemorandumOfAssociation != null) 'company_memorandum_of_association': companyMemorandumOfAssociation?.toJson(),
  if (companyMinisterialDecree != null) 'company_ministerial_decree': companyMinisterialDecree?.toJson(),
  if (companyRegistrationVerification != null) 'company_registration_verification': companyRegistrationVerification?.toJson(),
  if (companyTaxIdVerification != null) 'company_tax_id_verification': companyTaxIdVerification?.toJson(),
  if (proofOfAddress != null) 'proof_of_address': proofOfAddress?.toJson(),
  if (proofOfRegistration != null) 'proof_of_registration': proofOfRegistration?.toJson(),
  if (proofOfUltimateBeneficialOwnership != null) 'proof_of_ultimate_beneficial_ownership': proofOfUltimateBeneficialOwnership?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsRequestDocuments copyWith({PostAccountsRequestDocumentsBankAccountOwnershipVerification Function()? bankAccountOwnershipVerification, PostAccountsRequestDocumentsCompanyLicense Function()? companyLicense, PostAccountsRequestDocumentsCompanyMemorandumOfAssociation Function()? companyMemorandumOfAssociation, PostAccountsRequestDocumentsCompanyMinisterialDecree Function()? companyMinisterialDecree, PostAccountsRequestDocumentsCompanyRegistrationVerification Function()? companyRegistrationVerification, PostAccountsRequestDocumentsCompanyTaxIdVerification Function()? companyTaxIdVerification, PostAccountsRequestDocumentsProofOfAddress Function()? proofOfAddress, PostAccountsRequestDocumentsProofOfRegistration Function()? proofOfRegistration, PostAccountsRequestDocumentsProofOfUltimateBeneficialOwnership Function()? proofOfUltimateBeneficialOwnership, }) { return PostAccountsRequestDocuments(
  bankAccountOwnershipVerification: bankAccountOwnershipVerification != null ? bankAccountOwnershipVerification() : this.bankAccountOwnershipVerification,
  companyLicense: companyLicense != null ? companyLicense() : this.companyLicense,
  companyMemorandumOfAssociation: companyMemorandumOfAssociation != null ? companyMemorandumOfAssociation() : this.companyMemorandumOfAssociation,
  companyMinisterialDecree: companyMinisterialDecree != null ? companyMinisterialDecree() : this.companyMinisterialDecree,
  companyRegistrationVerification: companyRegistrationVerification != null ? companyRegistrationVerification() : this.companyRegistrationVerification,
  companyTaxIdVerification: companyTaxIdVerification != null ? companyTaxIdVerification() : this.companyTaxIdVerification,
  proofOfAddress: proofOfAddress != null ? proofOfAddress() : this.proofOfAddress,
  proofOfRegistration: proofOfRegistration != null ? proofOfRegistration() : this.proofOfRegistration,
  proofOfUltimateBeneficialOwnership: proofOfUltimateBeneficialOwnership != null ? proofOfUltimateBeneficialOwnership() : this.proofOfUltimateBeneficialOwnership,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestDocuments &&
          bankAccountOwnershipVerification == other.bankAccountOwnershipVerification &&
          companyLicense == other.companyLicense &&
          companyMemorandumOfAssociation == other.companyMemorandumOfAssociation &&
          companyMinisterialDecree == other.companyMinisterialDecree &&
          companyRegistrationVerification == other.companyRegistrationVerification &&
          companyTaxIdVerification == other.companyTaxIdVerification &&
          proofOfAddress == other.proofOfAddress &&
          proofOfRegistration == other.proofOfRegistration &&
          proofOfUltimateBeneficialOwnership == other.proofOfUltimateBeneficialOwnership; } 
@override int get hashCode { return Object.hash(bankAccountOwnershipVerification, companyLicense, companyMemorandumOfAssociation, companyMinisterialDecree, companyRegistrationVerification, companyTaxIdVerification, proofOfAddress, proofOfRegistration, proofOfUltimateBeneficialOwnership); } 
@override String toString() { return 'PostAccountsRequestDocuments(bankAccountOwnershipVerification: $bankAccountOwnershipVerification, companyLicense: $companyLicense, companyMemorandumOfAssociation: $companyMemorandumOfAssociation, companyMinisterialDecree: $companyMinisterialDecree, companyRegistrationVerification: $companyRegistrationVerification, companyTaxIdVerification: $companyTaxIdVerification, proofOfAddress: $proofOfAddress, proofOfRegistration: $proofOfRegistration, proofOfUltimateBeneficialOwnership: $proofOfUltimateBeneficialOwnership)'; } 
 }
