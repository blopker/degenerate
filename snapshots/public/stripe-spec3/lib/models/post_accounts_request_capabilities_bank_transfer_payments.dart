// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsRequestCapabilitiesBankTransferPayments {const PostAccountsRequestCapabilitiesBankTransferPayments({this.requested});

factory PostAccountsRequestCapabilitiesBankTransferPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesBankTransferPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsRequestCapabilitiesBankTransferPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesBankTransferPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesBankTransferPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesBankTransferPayments(requested: $requested)'; } 
 }
