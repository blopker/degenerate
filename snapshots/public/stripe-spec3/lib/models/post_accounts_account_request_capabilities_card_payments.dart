// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsAccountRequestCapabilitiesCardPayments {const PostAccountsAccountRequestCapabilitiesCardPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesCardPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesCardPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsAccountRequestCapabilitiesCardPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesCardPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesCardPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesCardPayments(requested: $requested)'; } 
 }
