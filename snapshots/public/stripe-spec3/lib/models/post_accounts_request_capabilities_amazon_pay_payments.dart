// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsRequestCapabilitiesAmazonPayPayments {const PostAccountsRequestCapabilitiesAmazonPayPayments({this.requested});

factory PostAccountsRequestCapabilitiesAmazonPayPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesAmazonPayPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsRequestCapabilitiesAmazonPayPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesAmazonPayPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesAmazonPayPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesAmazonPayPayments(requested: $requested)'; } 
 }
