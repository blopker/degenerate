// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsAccountRequestCapabilitiesBacsDebitPayments {const PostAccountsAccountRequestCapabilitiesBacsDebitPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesBacsDebitPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesBacsDebitPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesBacsDebitPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesBacsDebitPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesBacsDebitPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesBacsDebitPayments(requested: $requested)'; } 
 }
