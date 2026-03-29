// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentIntentsRequestPaymentMethodDataAcssDebit {const PostPaymentIntentsRequestPaymentMethodDataAcssDebit({required this.accountNumber, required this.institutionNumber, required this.transitNumber, });

factory PostPaymentIntentsRequestPaymentMethodDataAcssDebit.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsRequestPaymentMethodDataAcssDebit(
  accountNumber: json['account_number'] as String,
  institutionNumber: json['institution_number'] as String,
  transitNumber: json['transit_number'] as String,
); }

final String accountNumber;

final String institutionNumber;

final String transitNumber;

Map<String, dynamic> toJson() { return {
  'account_number': accountNumber,
  'institution_number': institutionNumber,
  'transit_number': transitNumber,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('account_number') && json['account_number'] is String &&
      json.containsKey('institution_number') && json['institution_number'] is String &&
      json.containsKey('transit_number') && json['transit_number'] is String; } 
PostPaymentIntentsRequestPaymentMethodDataAcssDebit copyWith({String? accountNumber, String? institutionNumber, String? transitNumber, }) { return PostPaymentIntentsRequestPaymentMethodDataAcssDebit(
  accountNumber: accountNumber ?? this.accountNumber,
  institutionNumber: institutionNumber ?? this.institutionNumber,
  transitNumber: transitNumber ?? this.transitNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodDataAcssDebit &&
          accountNumber == other.accountNumber &&
          institutionNumber == other.institutionNumber &&
          transitNumber == other.transitNumber; } 
@override int get hashCode { return Object.hash(accountNumber, institutionNumber, transitNumber); } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodDataAcssDebit(accountNumber: $accountNumber, institutionNumber: $institutionNumber, transitNumber: $transitNumber)'; } 
 }
