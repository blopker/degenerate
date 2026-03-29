// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsRequestCapabilitiesIndiaInternationalPayments {const PostAccountsRequestCapabilitiesIndiaInternationalPayments({this.requested});

factory PostAccountsRequestCapabilitiesIndiaInternationalPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesIndiaInternationalPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsRequestCapabilitiesIndiaInternationalPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesIndiaInternationalPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesIndiaInternationalPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesIndiaInternationalPayments(requested: $requested)'; } 
 }
