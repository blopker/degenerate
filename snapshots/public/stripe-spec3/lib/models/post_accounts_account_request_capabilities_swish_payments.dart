// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsAccountRequestCapabilitiesSwishPayments {const PostAccountsAccountRequestCapabilitiesSwishPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesSwishPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesSwishPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsAccountRequestCapabilitiesSwishPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesSwishPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesSwishPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesSwishPayments(requested: $requested)'; } 
 }
