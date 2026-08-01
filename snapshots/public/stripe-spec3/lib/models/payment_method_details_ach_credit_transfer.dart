// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodDetailsAchCreditTransfer {const PaymentMethodDetailsAchCreditTransfer({this.accountNumber = const Omittable.absent(), this.bankName = const Omittable.absent(), this.routingNumber = const Omittable.absent(), this.swiftCode = const Omittable.absent(), });

factory PaymentMethodDetailsAchCreditTransfer.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsAchCreditTransfer(
  accountNumber: json.containsKey('account_number') ? Omittable(json['account_number'] as String?) : const Omittable.absent(),
  bankName: json.containsKey('bank_name') ? Omittable(json['bank_name'] as String?) : const Omittable.absent(),
  routingNumber: json.containsKey('routing_number') ? Omittable(json['routing_number'] as String?) : const Omittable.absent(),
  swiftCode: json.containsKey('swift_code') ? Omittable(json['swift_code'] as String?) : const Omittable.absent(),
); }

/// Account number to transfer funds to.
final Omittable<String?> accountNumber;

/// Name of the bank associated with the routing number.
final Omittable<String?> bankName;

/// Routing transit number for the bank account to transfer funds to.
final Omittable<String?> routingNumber;

/// SWIFT code of the bank associated with the routing number.
final Omittable<String?> swiftCode;

Map<String, dynamic> toJson() { return {
  if (accountNumber.isPresent) 'account_number': accountNumber.value,
  if (bankName.isPresent) 'bank_name': bankName.value,
  if (routingNumber.isPresent) 'routing_number': routingNumber.value,
  if (swiftCode.isPresent) 'swift_code': swiftCode.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_number', 'bank_name', 'routing_number', 'swift_code'}.contains(key)); } 
PaymentMethodDetailsAchCreditTransfer copyWith({Omittable<String?>? accountNumber, Omittable<String?>? bankName, Omittable<String?>? routingNumber, Omittable<String?>? swiftCode, }) { return PaymentMethodDetailsAchCreditTransfer(
  accountNumber: accountNumber ?? this.accountNumber,
  bankName: bankName ?? this.bankName,
  routingNumber: routingNumber ?? this.routingNumber,
  swiftCode: swiftCode ?? this.swiftCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsAchCreditTransfer &&
          accountNumber == other.accountNumber &&
          bankName == other.bankName &&
          routingNumber == other.routingNumber &&
          swiftCode == other.swiftCode; } 
@override int get hashCode { return Object.hash(accountNumber, bankName, routingNumber, swiftCode); } 
@override String toString() { return 'PaymentMethodDetailsAchCreditTransfer(accountNumber: $accountNumber, bankName: $bankName, routingNumber: $routingNumber, swiftCode: $swiftCode)'; } 
 }
