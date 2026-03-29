// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsAccountRequestCapabilitiesPixPayments {const PostAccountsAccountRequestCapabilitiesPixPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesPixPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesPixPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsAccountRequestCapabilitiesPixPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesPixPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesPixPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesPixPayments(requested: $requested)'; } 
 }
