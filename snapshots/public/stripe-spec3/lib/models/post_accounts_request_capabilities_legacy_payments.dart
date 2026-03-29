// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsRequestCapabilitiesLegacyPayments {const PostAccountsRequestCapabilitiesLegacyPayments({this.requested});

factory PostAccountsRequestCapabilitiesLegacyPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesLegacyPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsRequestCapabilitiesLegacyPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesLegacyPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesLegacyPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesLegacyPayments(requested: $requested)'; } 
 }
