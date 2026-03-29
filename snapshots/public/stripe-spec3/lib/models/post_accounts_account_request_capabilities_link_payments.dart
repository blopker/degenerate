// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsAccountRequestCapabilitiesLinkPayments {const PostAccountsAccountRequestCapabilitiesLinkPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesLinkPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesLinkPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesLinkPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesLinkPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesLinkPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesLinkPayments(requested: $requested)'; } 
 }
