// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsAccountRequestCapabilitiesBankTransferPayments {const PostAccountsAccountRequestCapabilitiesBankTransferPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesBankTransferPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesBankTransferPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesBankTransferPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesBankTransferPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesBankTransferPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesBankTransferPayments(requested: $requested)'; } 
 }
