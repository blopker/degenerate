// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsAccountRequestCapabilitiesZipPayments {const PostAccountsAccountRequestCapabilitiesZipPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesZipPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesZipPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsAccountRequestCapabilitiesZipPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesZipPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesZipPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesZipPayments(requested: $requested)'; } 
 }
