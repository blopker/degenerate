// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsAccountRequestCapabilitiesUsBankTransferPayments {const PostAccountsAccountRequestCapabilitiesUsBankTransferPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesUsBankTransferPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesUsBankTransferPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesUsBankTransferPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesUsBankTransferPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesUsBankTransferPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesUsBankTransferPayments(requested: $requested)'; } 
 }
