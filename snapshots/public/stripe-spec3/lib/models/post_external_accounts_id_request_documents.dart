// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_external_accounts_id_request_documents_bank_account_ownership_verification.dart';/// Documents that may be submitted to satisfy various informational requests.
final class PostExternalAccountsIdRequestDocuments {const PostExternalAccountsIdRequestDocuments({this.bankAccountOwnershipVerification});

factory PostExternalAccountsIdRequestDocuments.fromJson(Map<String, dynamic> json) { return PostExternalAccountsIdRequestDocuments(
  bankAccountOwnershipVerification: json['bank_account_ownership_verification'] != null ? PostExternalAccountsIdRequestDocumentsBankAccountOwnershipVerification.fromJson(json['bank_account_ownership_verification'] as Map<String, dynamic>) : null,
); }

final PostExternalAccountsIdRequestDocumentsBankAccountOwnershipVerification? bankAccountOwnershipVerification;

Map<String, dynamic> toJson() { return {
  if (bankAccountOwnershipVerification != null) 'bank_account_ownership_verification': bankAccountOwnershipVerification?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostExternalAccountsIdRequestDocuments copyWith({PostExternalAccountsIdRequestDocumentsBankAccountOwnershipVerification Function()? bankAccountOwnershipVerification}) { return PostExternalAccountsIdRequestDocuments(
  bankAccountOwnershipVerification: bankAccountOwnershipVerification != null ? bankAccountOwnershipVerification() : this.bankAccountOwnershipVerification,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostExternalAccountsIdRequestDocuments &&
          bankAccountOwnershipVerification == other.bankAccountOwnershipVerification; } 
@override int get hashCode { return bankAccountOwnershipVerification.hashCode; } 
@override String toString() { return 'PostExternalAccountsIdRequestDocuments(bankAccountOwnershipVerification: $bankAccountOwnershipVerification)'; } 
 }
