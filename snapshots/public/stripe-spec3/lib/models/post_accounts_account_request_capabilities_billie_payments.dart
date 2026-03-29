// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsAccountRequestCapabilitiesBilliePayments {const PostAccountsAccountRequestCapabilitiesBilliePayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesBilliePayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesBilliePayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsAccountRequestCapabilitiesBilliePayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesBilliePayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesBilliePayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesBilliePayments(requested: $requested)'; } 
 }
