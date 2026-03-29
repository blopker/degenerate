// GENERATED CODE - DO NOT MODIFY BY HAND

import 'external_account_payout_bank_account3_documents_bank_account_ownership_verification.dart';final class ExternalAccountPayoutBankAccount3Documents {const ExternalAccountPayoutBankAccount3Documents({this.bankAccountOwnershipVerification});

factory ExternalAccountPayoutBankAccount3Documents.fromJson(Map<String, dynamic> json) { return ExternalAccountPayoutBankAccount3Documents(
  bankAccountOwnershipVerification: json['bank_account_ownership_verification'] != null ? ExternalAccountPayoutBankAccount3DocumentsBankAccountOwnershipVerification.fromJson(json['bank_account_ownership_verification'] as Map<String, dynamic>) : null,
); }

final ExternalAccountPayoutBankAccount3DocumentsBankAccountOwnershipVerification? bankAccountOwnershipVerification;

Map<String, dynamic> toJson() { return {
  if (bankAccountOwnershipVerification != null) 'bank_account_ownership_verification': bankAccountOwnershipVerification?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bank_account_ownership_verification'}.contains(key)); } 
ExternalAccountPayoutBankAccount3Documents copyWith({ExternalAccountPayoutBankAccount3DocumentsBankAccountOwnershipVerification Function()? bankAccountOwnershipVerification}) { return ExternalAccountPayoutBankAccount3Documents(
  bankAccountOwnershipVerification: bankAccountOwnershipVerification != null ? bankAccountOwnershipVerification() : this.bankAccountOwnershipVerification,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ExternalAccountPayoutBankAccount3Documents &&
          bankAccountOwnershipVerification == other.bankAccountOwnershipVerification; } 
@override int get hashCode { return bankAccountOwnershipVerification.hashCode; } 
@override String toString() { return 'ExternalAccountPayoutBankAccount3Documents(bankAccountOwnershipVerification: $bankAccountOwnershipVerification)'; } 
 }
