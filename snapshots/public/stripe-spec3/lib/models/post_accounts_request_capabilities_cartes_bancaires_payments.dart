// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsRequestCapabilitiesCartesBancairesPayments {const PostAccountsRequestCapabilitiesCartesBancairesPayments({this.requested});

factory PostAccountsRequestCapabilitiesCartesBancairesPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesCartesBancairesPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsRequestCapabilitiesCartesBancairesPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesCartesBancairesPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesCartesBancairesPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesCartesBancairesPayments(requested: $requested)'; } 
 }
