// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsAccountRequestCapabilitiesPaytoPayments {const PostAccountsAccountRequestCapabilitiesPaytoPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesPaytoPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesPaytoPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsAccountRequestCapabilitiesPaytoPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesPaytoPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesPaytoPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesPaytoPayments(requested: $requested)'; } 
 }
