// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsRequestCapabilitiesUsBankTransferPayments {const PostAccountsRequestCapabilitiesUsBankTransferPayments({this.requested});

factory PostAccountsRequestCapabilitiesUsBankTransferPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesUsBankTransferPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsRequestCapabilitiesUsBankTransferPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesUsBankTransferPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesUsBankTransferPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesUsBankTransferPayments(requested: $requested)'; } 
 }
