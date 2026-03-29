// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsAccountRequestCapabilitiesSatispayPayments {const PostAccountsAccountRequestCapabilitiesSatispayPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesSatispayPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesSatispayPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsAccountRequestCapabilitiesSatispayPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesSatispayPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesSatispayPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesSatispayPayments(requested: $requested)'; } 
 }
