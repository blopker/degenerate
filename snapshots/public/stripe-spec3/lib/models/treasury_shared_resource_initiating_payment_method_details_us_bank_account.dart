// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class TreasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccount {const TreasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccount({this.bankName = const Omittable.absent(), this.last4 = const Omittable.absent(), this.routingNumber = const Omittable.absent(), });

factory TreasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccount.fromJson(Map<String, dynamic> json) { return TreasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccount(
  bankName: json.containsKey('bank_name') ? Omittable(json['bank_name'] as String?) : const Omittable.absent(),
  last4: json.containsKey('last4') ? Omittable(json['last4'] as String?) : const Omittable.absent(),
  routingNumber: json.containsKey('routing_number') ? Omittable(json['routing_number'] as String?) : const Omittable.absent(),
); }

/// Bank name.
final Omittable<String?> bankName;

/// The last four digits of the bank account number.
final Omittable<String?> last4;

/// The routing number for the bank account.
final Omittable<String?> routingNumber;

Map<String, dynamic> toJson() { return {
  if (bankName.isPresent) 'bank_name': bankName.value,
  if (last4.isPresent) 'last4': last4.value,
  if (routingNumber.isPresent) 'routing_number': routingNumber.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bank_name', 'last4', 'routing_number'}.contains(key)); } 
TreasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccount copyWith({Omittable<String?>? bankName, Omittable<String?>? last4, Omittable<String?>? routingNumber, }) { return TreasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccount(
  bankName: bankName ?? this.bankName,
  last4: last4 ?? this.last4,
  routingNumber: routingNumber ?? this.routingNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TreasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccount &&
          bankName == other.bankName &&
          last4 == other.last4 &&
          routingNumber == other.routingNumber; } 
@override int get hashCode { return Object.hash(bankName, last4, routingNumber); } 
@override String toString() { return 'TreasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccount(bankName: $bankName, last4: $last4, routingNumber: $routingNumber)'; } 
 }
