// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTestHelpersTreasuryReceivedCreditsRequestInitiatingPaymentMethodDetailsUsBankAccount {const PostTestHelpersTreasuryReceivedCreditsRequestInitiatingPaymentMethodDetailsUsBankAccount({this.accountHolderName, this.accountNumber, this.routingNumber, });

factory PostTestHelpersTreasuryReceivedCreditsRequestInitiatingPaymentMethodDetailsUsBankAccount.fromJson(Map<String, dynamic> json) { return PostTestHelpersTreasuryReceivedCreditsRequestInitiatingPaymentMethodDetailsUsBankAccount(
  accountHolderName: json['account_holder_name'] as String?,
  accountNumber: json['account_number'] as String?,
  routingNumber: json['routing_number'] as String?,
); }

final String? accountHolderName;

final String? accountNumber;

final String? routingNumber;

Map<String, dynamic> toJson() { return {
  'account_holder_name': ?accountHolderName,
  'account_number': ?accountNumber,
  'routing_number': ?routingNumber,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_holder_name', 'account_number', 'routing_number'}.contains(key)); } 
PostTestHelpersTreasuryReceivedCreditsRequestInitiatingPaymentMethodDetailsUsBankAccount copyWith({String Function()? accountHolderName, String Function()? accountNumber, String Function()? routingNumber, }) { return PostTestHelpersTreasuryReceivedCreditsRequestInitiatingPaymentMethodDetailsUsBankAccount(
  accountHolderName: accountHolderName != null ? accountHolderName() : this.accountHolderName,
  accountNumber: accountNumber != null ? accountNumber() : this.accountNumber,
  routingNumber: routingNumber != null ? routingNumber() : this.routingNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersTreasuryReceivedCreditsRequestInitiatingPaymentMethodDetailsUsBankAccount &&
          accountHolderName == other.accountHolderName &&
          accountNumber == other.accountNumber &&
          routingNumber == other.routingNumber; } 
@override int get hashCode { return Object.hash(accountHolderName, accountNumber, routingNumber); } 
@override String toString() { return 'PostTestHelpersTreasuryReceivedCreditsRequestInitiatingPaymentMethodDetailsUsBankAccount(accountHolderName: $accountHolderName, accountNumber: $accountNumber, routingNumber: $routingNumber)'; } 
 }
