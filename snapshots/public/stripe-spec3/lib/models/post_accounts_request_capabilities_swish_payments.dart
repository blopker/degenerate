// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsRequestCapabilitiesSwishPayments {const PostAccountsRequestCapabilitiesSwishPayments({this.requested});

factory PostAccountsRequestCapabilitiesSwishPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesSwishPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsRequestCapabilitiesSwishPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesSwishPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesSwishPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesSwishPayments(requested: $requested)'; } 
 }
