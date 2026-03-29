// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsAccountRequestCapabilitiesGbBankTransferPayments {const PostAccountsAccountRequestCapabilitiesGbBankTransferPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesGbBankTransferPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesGbBankTransferPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesGbBankTransferPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesGbBankTransferPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesGbBankTransferPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesGbBankTransferPayments(requested: $requested)'; } 
 }
