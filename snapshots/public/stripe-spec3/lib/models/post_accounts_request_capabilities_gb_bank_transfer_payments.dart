// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsRequestCapabilitiesGbBankTransferPayments {const PostAccountsRequestCapabilitiesGbBankTransferPayments({this.requested});

factory PostAccountsRequestCapabilitiesGbBankTransferPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesGbBankTransferPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsRequestCapabilitiesGbBankTransferPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesGbBankTransferPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesGbBankTransferPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesGbBankTransferPayments(requested: $requested)'; } 
 }
