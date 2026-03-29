// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsAccountRequestCapabilitiesNzBankAccountBecsDebitPayments {const PostAccountsAccountRequestCapabilitiesNzBankAccountBecsDebitPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesNzBankAccountBecsDebitPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesNzBankAccountBecsDebitPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsAccountRequestCapabilitiesNzBankAccountBecsDebitPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesNzBankAccountBecsDebitPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesNzBankAccountBecsDebitPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesNzBankAccountBecsDebitPayments(requested: $requested)'; } 
 }
