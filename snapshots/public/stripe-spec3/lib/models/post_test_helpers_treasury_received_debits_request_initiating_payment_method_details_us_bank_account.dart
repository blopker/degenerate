// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTestHelpersTreasuryReceivedDebitsRequestInitiatingPaymentMethodDetailsUsBankAccount {const PostTestHelpersTreasuryReceivedDebitsRequestInitiatingPaymentMethodDetailsUsBankAccount({this.accountHolderName, this.accountNumber, this.routingNumber, });

factory PostTestHelpersTreasuryReceivedDebitsRequestInitiatingPaymentMethodDetailsUsBankAccount.fromJson(Map<String, dynamic> json) { return PostTestHelpersTreasuryReceivedDebitsRequestInitiatingPaymentMethodDetailsUsBankAccount(
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
static bool canParse(Map<String, dynamic> json) { return true; } 
PostTestHelpersTreasuryReceivedDebitsRequestInitiatingPaymentMethodDetailsUsBankAccount copyWith({String Function()? accountHolderName, String Function()? accountNumber, String Function()? routingNumber, }) { return PostTestHelpersTreasuryReceivedDebitsRequestInitiatingPaymentMethodDetailsUsBankAccount(
  accountHolderName: accountHolderName != null ? accountHolderName() : this.accountHolderName,
  accountNumber: accountNumber != null ? accountNumber() : this.accountNumber,
  routingNumber: routingNumber != null ? routingNumber() : this.routingNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersTreasuryReceivedDebitsRequestInitiatingPaymentMethodDetailsUsBankAccount &&
          accountHolderName == other.accountHolderName &&
          accountNumber == other.accountNumber &&
          routingNumber == other.routingNumber; } 
@override int get hashCode { return Object.hash(accountHolderName, accountNumber, routingNumber); } 
@override String toString() { return 'PostTestHelpersTreasuryReceivedDebitsRequestInitiatingPaymentMethodDetailsUsBankAccount(accountHolderName: $accountHolderName, accountNumber: $accountNumber, routingNumber: $routingNumber)'; } 
 }
