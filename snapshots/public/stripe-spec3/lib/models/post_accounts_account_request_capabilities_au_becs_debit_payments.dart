// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsAccountRequestCapabilitiesAuBecsDebitPayments {const PostAccountsAccountRequestCapabilitiesAuBecsDebitPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesAuBecsDebitPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesAuBecsDebitPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesAuBecsDebitPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesAuBecsDebitPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesAuBecsDebitPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesAuBecsDebitPayments(requested: $requested)'; } 
 }
