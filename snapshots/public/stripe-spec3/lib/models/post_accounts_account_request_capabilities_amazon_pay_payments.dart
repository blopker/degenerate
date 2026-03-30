// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsAccountRequestCapabilitiesAmazonPayPayments {const PostAccountsAccountRequestCapabilitiesAmazonPayPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesAmazonPayPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesAmazonPayPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesAmazonPayPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesAmazonPayPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesAmazonPayPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesAmazonPayPayments(requested: $requested)'; } 
 }
