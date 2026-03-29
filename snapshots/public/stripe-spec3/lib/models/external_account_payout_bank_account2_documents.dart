// GENERATED CODE - DO NOT MODIFY BY HAND

import 'external_account_payout_bank_account2_documents_bank_account_ownership_verification.dart';final class ExternalAccountPayoutBankAccount2Documents {const ExternalAccountPayoutBankAccount2Documents({this.bankAccountOwnershipVerification});

factory ExternalAccountPayoutBankAccount2Documents.fromJson(Map<String, dynamic> json) { return ExternalAccountPayoutBankAccount2Documents(
  bankAccountOwnershipVerification: json['bank_account_ownership_verification'] != null ? ExternalAccountPayoutBankAccount2DocumentsBankAccountOwnershipVerification.fromJson(json['bank_account_ownership_verification'] as Map<String, dynamic>) : null,
); }

final ExternalAccountPayoutBankAccount2DocumentsBankAccountOwnershipVerification? bankAccountOwnershipVerification;

Map<String, dynamic> toJson() { return {
  if (bankAccountOwnershipVerification != null) 'bank_account_ownership_verification': bankAccountOwnershipVerification?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bank_account_ownership_verification'}.contains(key)); } 
ExternalAccountPayoutBankAccount2Documents copyWith({ExternalAccountPayoutBankAccount2DocumentsBankAccountOwnershipVerification Function()? bankAccountOwnershipVerification}) { return ExternalAccountPayoutBankAccount2Documents(
  bankAccountOwnershipVerification: bankAccountOwnershipVerification != null ? bankAccountOwnershipVerification() : this.bankAccountOwnershipVerification,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ExternalAccountPayoutBankAccount2Documents &&
          bankAccountOwnershipVerification == other.bankAccountOwnershipVerification; } 
@override int get hashCode { return bankAccountOwnershipVerification.hashCode; } 
@override String toString() { return 'ExternalAccountPayoutBankAccount2Documents(bankAccountOwnershipVerification: $bankAccountOwnershipVerification)'; } 
 }
