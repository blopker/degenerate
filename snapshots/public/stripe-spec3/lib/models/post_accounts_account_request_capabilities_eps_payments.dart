// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsAccountRequestCapabilitiesEpsPayments {const PostAccountsAccountRequestCapabilitiesEpsPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesEpsPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesEpsPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsAccountRequestCapabilitiesEpsPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesEpsPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesEpsPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesEpsPayments(requested: $requested)'; } 
 }
