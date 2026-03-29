// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsRequestCapabilitiesBancontactPayments {const PostAccountsRequestCapabilitiesBancontactPayments({this.requested});

factory PostAccountsRequestCapabilitiesBancontactPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesBancontactPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsRequestCapabilitiesBancontactPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesBancontactPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesBancontactPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesBancontactPayments(requested: $requested)'; } 
 }
