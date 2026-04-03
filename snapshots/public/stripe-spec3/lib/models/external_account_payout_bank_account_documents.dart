// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'external_account_payout_bank_account_documents_bank_account_ownership_verification.dart';@immutable final class ExternalAccountPayoutBankAccountDocuments {const ExternalAccountPayoutBankAccountDocuments({this.bankAccountOwnershipVerification});

factory ExternalAccountPayoutBankAccountDocuments.fromJson(Map<String, dynamic> json) { return ExternalAccountPayoutBankAccountDocuments(
  bankAccountOwnershipVerification: json['bank_account_ownership_verification'] != null ? ExternalAccountPayoutBankAccountDocumentsBankAccountOwnershipVerification.fromJson(json['bank_account_ownership_verification'] as Map<String, dynamic>) : null,
); }

final ExternalAccountPayoutBankAccountDocumentsBankAccountOwnershipVerification? bankAccountOwnershipVerification;

Map<String, dynamic> toJson() { return {
  if (bankAccountOwnershipVerification != null) 'bank_account_ownership_verification': bankAccountOwnershipVerification?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bank_account_ownership_verification'}.contains(key)); } 
ExternalAccountPayoutBankAccountDocuments copyWith({ExternalAccountPayoutBankAccountDocumentsBankAccountOwnershipVerification Function()? bankAccountOwnershipVerification}) { return ExternalAccountPayoutBankAccountDocuments(
  bankAccountOwnershipVerification: bankAccountOwnershipVerification != null ? bankAccountOwnershipVerification() : this.bankAccountOwnershipVerification,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ExternalAccountPayoutBankAccountDocuments &&
          bankAccountOwnershipVerification == other.bankAccountOwnershipVerification; } 
@override int get hashCode { return bankAccountOwnershipVerification.hashCode; } 
@override String toString() { return 'ExternalAccountPayoutBankAccountDocuments(bankAccountOwnershipVerification: $bankAccountOwnershipVerification)'; } 
 }
