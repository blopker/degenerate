// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsRequestCapabilitiesAuBecsDebitPayments {const PostAccountsRequestCapabilitiesAuBecsDebitPayments({this.requested});

factory PostAccountsRequestCapabilitiesAuBecsDebitPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesAuBecsDebitPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsRequestCapabilitiesAuBecsDebitPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesAuBecsDebitPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesAuBecsDebitPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesAuBecsDebitPayments(requested: $requested)'; } 
 }
