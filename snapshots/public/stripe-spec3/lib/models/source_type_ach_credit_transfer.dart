// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SourceTypeAchCreditTransfer {const SourceTypeAchCreditTransfer({this.accountNumber = const Omittable.absent(), this.bankName = const Omittable.absent(), this.fingerprint = const Omittable.absent(), this.refundAccountHolderName = const Omittable.absent(), this.refundAccountHolderType = const Omittable.absent(), this.refundRoutingNumber = const Omittable.absent(), this.routingNumber = const Omittable.absent(), this.swiftCode = const Omittable.absent(), });

factory SourceTypeAchCreditTransfer.fromJson(Map<String, dynamic> json) { return SourceTypeAchCreditTransfer(
  accountNumber: json.containsKey('account_number') ? Omittable(json['account_number'] as String?) : const Omittable.absent(),
  bankName: json.containsKey('bank_name') ? Omittable(json['bank_name'] as String?) : const Omittable.absent(),
  fingerprint: json.containsKey('fingerprint') ? Omittable(json['fingerprint'] as String?) : const Omittable.absent(),
  refundAccountHolderName: json.containsKey('refund_account_holder_name') ? Omittable(json['refund_account_holder_name'] as String?) : const Omittable.absent(),
  refundAccountHolderType: json.containsKey('refund_account_holder_type') ? Omittable(json['refund_account_holder_type'] as String?) : const Omittable.absent(),
  refundRoutingNumber: json.containsKey('refund_routing_number') ? Omittable(json['refund_routing_number'] as String?) : const Omittable.absent(),
  routingNumber: json.containsKey('routing_number') ? Omittable(json['routing_number'] as String?) : const Omittable.absent(),
  swiftCode: json.containsKey('swift_code') ? Omittable(json['swift_code'] as String?) : const Omittable.absent(),
); }

final Omittable<String?> accountNumber;

final Omittable<String?> bankName;

final Omittable<String?> fingerprint;

final Omittable<String?> refundAccountHolderName;

final Omittable<String?> refundAccountHolderType;

final Omittable<String?> refundRoutingNumber;

final Omittable<String?> routingNumber;

final Omittable<String?> swiftCode;

Map<String, dynamic> toJson() { return {
  if (accountNumber.isPresent) 'account_number': accountNumber.value,
  if (bankName.isPresent) 'bank_name': bankName.value,
  if (fingerprint.isPresent) 'fingerprint': fingerprint.value,
  if (refundAccountHolderName.isPresent) 'refund_account_holder_name': refundAccountHolderName.value,
  if (refundAccountHolderType.isPresent) 'refund_account_holder_type': refundAccountHolderType.value,
  if (refundRoutingNumber.isPresent) 'refund_routing_number': refundRoutingNumber.value,
  if (routingNumber.isPresent) 'routing_number': routingNumber.value,
  if (swiftCode.isPresent) 'swift_code': swiftCode.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_number', 'bank_name', 'fingerprint', 'refund_account_holder_name', 'refund_account_holder_type', 'refund_routing_number', 'routing_number', 'swift_code'}.contains(key)); } 
SourceTypeAchCreditTransfer copyWith({Omittable<String?>? accountNumber, Omittable<String?>? bankName, Omittable<String?>? fingerprint, Omittable<String?>? refundAccountHolderName, Omittable<String?>? refundAccountHolderType, Omittable<String?>? refundRoutingNumber, Omittable<String?>? routingNumber, Omittable<String?>? swiftCode, }) { return SourceTypeAchCreditTransfer(
  accountNumber: accountNumber ?? this.accountNumber,
  bankName: bankName ?? this.bankName,
  fingerprint: fingerprint ?? this.fingerprint,
  refundAccountHolderName: refundAccountHolderName ?? this.refundAccountHolderName,
  refundAccountHolderType: refundAccountHolderType ?? this.refundAccountHolderType,
  refundRoutingNumber: refundRoutingNumber ?? this.refundRoutingNumber,
  routingNumber: routingNumber ?? this.routingNumber,
  swiftCode: swiftCode ?? this.swiftCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SourceTypeAchCreditTransfer &&
          accountNumber == other.accountNumber &&
          bankName == other.bankName &&
          fingerprint == other.fingerprint &&
          refundAccountHolderName == other.refundAccountHolderName &&
          refundAccountHolderType == other.refundAccountHolderType &&
          refundRoutingNumber == other.refundRoutingNumber &&
          routingNumber == other.routingNumber &&
          swiftCode == other.swiftCode; } 
@override int get hashCode { return Object.hash(accountNumber, bankName, fingerprint, refundAccountHolderName, refundAccountHolderType, refundRoutingNumber, routingNumber, swiftCode); } 
@override String toString() { return 'SourceTypeAchCreditTransfer(accountNumber: $accountNumber, bankName: $bankName, fingerprint: $fingerprint, refundAccountHolderName: $refundAccountHolderName, refundAccountHolderType: $refundAccountHolderType, refundRoutingNumber: $refundRoutingNumber, routingNumber: $routingNumber, swiftCode: $swiftCode)'; } 
 }
