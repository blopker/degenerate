// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_accounts_account_external_accounts_id_request_documents_bank_account_ownership_verification.dart';/// Documents that may be submitted to satisfy various informational requests.
@immutable final class PostAccountsAccountExternalAccountsIdRequestDocuments {const PostAccountsAccountExternalAccountsIdRequestDocuments({this.bankAccountOwnershipVerification});

factory PostAccountsAccountExternalAccountsIdRequestDocuments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountExternalAccountsIdRequestDocuments(
  bankAccountOwnershipVerification: json['bank_account_ownership_verification'] != null ? PostAccountsAccountExternalAccountsIdRequestDocumentsBankAccountOwnershipVerification.fromJson(json['bank_account_ownership_verification'] as Map<String, dynamic>) : null,
); }

final PostAccountsAccountExternalAccountsIdRequestDocumentsBankAccountOwnershipVerification? bankAccountOwnershipVerification;

Map<String, dynamic> toJson() { return {
  if (bankAccountOwnershipVerification != null) 'bank_account_ownership_verification': bankAccountOwnershipVerification?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bank_account_ownership_verification'}.contains(key)); } 
PostAccountsAccountExternalAccountsIdRequestDocuments copyWith({PostAccountsAccountExternalAccountsIdRequestDocumentsBankAccountOwnershipVerification Function()? bankAccountOwnershipVerification}) { return PostAccountsAccountExternalAccountsIdRequestDocuments(
  bankAccountOwnershipVerification: bankAccountOwnershipVerification != null ? bankAccountOwnershipVerification() : this.bankAccountOwnershipVerification,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountExternalAccountsIdRequestDocuments &&
          bankAccountOwnershipVerification == other.bankAccountOwnershipVerification; } 
@override int get hashCode { return bankAccountOwnershipVerification.hashCode; } 
@override String toString() { return 'PostAccountsAccountExternalAccountsIdRequestDocuments(bankAccountOwnershipVerification: $bankAccountOwnershipVerification)'; } 
 }
