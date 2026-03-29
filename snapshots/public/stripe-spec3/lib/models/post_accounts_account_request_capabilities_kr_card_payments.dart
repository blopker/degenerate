// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsAccountRequestCapabilitiesKrCardPayments {const PostAccountsAccountRequestCapabilitiesKrCardPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesKrCardPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesKrCardPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsAccountRequestCapabilitiesKrCardPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesKrCardPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesKrCardPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesKrCardPayments(requested: $requested)'; } 
 }
