// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsAccountRequestCapabilitiesUsBankAccountAchPayments {const PostAccountsAccountRequestCapabilitiesUsBankAccountAchPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesUsBankAccountAchPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesUsBankAccountAchPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesUsBankAccountAchPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesUsBankAccountAchPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesUsBankAccountAchPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesUsBankAccountAchPayments(requested: $requested)'; } 
 }
