// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsAccountRequestCapabilitiesSepaBankTransferPayments {const PostAccountsAccountRequestCapabilitiesSepaBankTransferPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesSepaBankTransferPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesSepaBankTransferPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsAccountRequestCapabilitiesSepaBankTransferPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesSepaBankTransferPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesSepaBankTransferPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesSepaBankTransferPayments(requested: $requested)'; } 
 }
