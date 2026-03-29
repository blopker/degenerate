// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_accounts_account_bank_accounts_id_request_documents_bank_account_ownership_verification.dart';/// Documents that may be submitted to satisfy various informational requests.
final class PostAccountsAccountBankAccountsIdRequestDocuments {const PostAccountsAccountBankAccountsIdRequestDocuments({this.bankAccountOwnershipVerification});

factory PostAccountsAccountBankAccountsIdRequestDocuments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountBankAccountsIdRequestDocuments(
  bankAccountOwnershipVerification: json['bank_account_ownership_verification'] != null ? PostAccountsAccountBankAccountsIdRequestDocumentsBankAccountOwnershipVerification.fromJson(json['bank_account_ownership_verification'] as Map<String, dynamic>) : null,
); }

final PostAccountsAccountBankAccountsIdRequestDocumentsBankAccountOwnershipVerification? bankAccountOwnershipVerification;

Map<String, dynamic> toJson() { return {
  if (bankAccountOwnershipVerification != null) 'bank_account_ownership_verification': bankAccountOwnershipVerification?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bank_account_ownership_verification'}.contains(key)); } 
PostAccountsAccountBankAccountsIdRequestDocuments copyWith({PostAccountsAccountBankAccountsIdRequestDocumentsBankAccountOwnershipVerification Function()? bankAccountOwnershipVerification}) { return PostAccountsAccountBankAccountsIdRequestDocuments(
  bankAccountOwnershipVerification: bankAccountOwnershipVerification != null ? bankAccountOwnershipVerification() : this.bankAccountOwnershipVerification,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountBankAccountsIdRequestDocuments &&
          bankAccountOwnershipVerification == other.bankAccountOwnershipVerification; } 
@override int get hashCode { return bankAccountOwnershipVerification.hashCode; } 
@override String toString() { return 'PostAccountsAccountBankAccountsIdRequestDocuments(bankAccountOwnershipVerification: $bankAccountOwnershipVerification)'; } 
 }
