// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentIntentsIntentRequestPaymentMethodDataBacsDebit {const PostPaymentIntentsIntentRequestPaymentMethodDataBacsDebit({this.accountNumber, this.sortCode, });

factory PostPaymentIntentsIntentRequestPaymentMethodDataBacsDebit.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsIntentRequestPaymentMethodDataBacsDebit(
  accountNumber: json['account_number'] as String?,
  sortCode: json['sort_code'] as String?,
); }

final String? accountNumber;

final String? sortCode;

Map<String, dynamic> toJson() { return {
  'account_number': ?accountNumber,
  'sort_code': ?sortCode,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_number', 'sort_code'}.contains(key)); } 
PostPaymentIntentsIntentRequestPaymentMethodDataBacsDebit copyWith({String Function()? accountNumber, String Function()? sortCode, }) { return PostPaymentIntentsIntentRequestPaymentMethodDataBacsDebit(
  accountNumber: accountNumber != null ? accountNumber() : this.accountNumber,
  sortCode: sortCode != null ? sortCode() : this.sortCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodDataBacsDebit &&
          accountNumber == other.accountNumber &&
          sortCode == other.sortCode; } 
@override int get hashCode { return Object.hash(accountNumber, sortCode); } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodDataBacsDebit(accountNumber: $accountNumber, sortCode: $sortCode)'; } 
 }
