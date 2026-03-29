// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsAccountRequestCapabilitiesPaynowPayments {const PostAccountsAccountRequestCapabilitiesPaynowPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesPaynowPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesPaynowPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsAccountRequestCapabilitiesPaynowPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesPaynowPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesPaynowPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesPaynowPayments(requested: $requested)'; } 
 }
