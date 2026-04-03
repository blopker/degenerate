// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_us_bank_account_blocked.dart';/// 
@immutable final class PaymentMethodUsBankAccountStatusDetails {const PaymentMethodUsBankAccountStatusDetails({this.blocked});

factory PaymentMethodUsBankAccountStatusDetails.fromJson(Map<String, dynamic> json) { return PaymentMethodUsBankAccountStatusDetails(
  blocked: json['blocked'] != null ? PaymentMethodUsBankAccountBlocked.fromJson(json['blocked'] as Map<String, dynamic>) : null,
); }

final PaymentMethodUsBankAccountBlocked? blocked;

Map<String, dynamic> toJson() { return {
  if (blocked != null) 'blocked': blocked?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'blocked'}.contains(key)); } 
PaymentMethodUsBankAccountStatusDetails copyWith({PaymentMethodUsBankAccountBlocked Function()? blocked}) { return PaymentMethodUsBankAccountStatusDetails(
  blocked: blocked != null ? blocked() : this.blocked,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodUsBankAccountStatusDetails &&
          blocked == other.blocked; } 
@override int get hashCode { return blocked.hashCode; } 
@override String toString() { return 'PaymentMethodUsBankAccountStatusDetails(blocked: $blocked)'; } 
 }
