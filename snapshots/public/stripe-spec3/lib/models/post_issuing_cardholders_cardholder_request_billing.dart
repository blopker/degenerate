// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_issuing_cardholders_cardholder_request_billing_address.dart';/// The cardholder's billing address.
@immutable final class PostIssuingCardholdersCardholderRequestBilling {const PostIssuingCardholdersCardholderRequestBilling({required this.address});

factory PostIssuingCardholdersCardholderRequestBilling.fromJson(Map<String, dynamic> json) { return PostIssuingCardholdersCardholderRequestBilling(
  address: PostIssuingCardholdersCardholderRequestBillingAddress.fromJson(json['address'] as Map<String, dynamic>),
); }

final PostIssuingCardholdersCardholderRequestBillingAddress address;

Map<String, dynamic> toJson() { return {
  'address': address.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('address'); } 
PostIssuingCardholdersCardholderRequestBilling copyWith({PostIssuingCardholdersCardholderRequestBillingAddress? address}) { return PostIssuingCardholdersCardholderRequestBilling(
  address: address ?? this.address,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostIssuingCardholdersCardholderRequestBilling &&
          address == other.address; } 
@override int get hashCode { return address.hashCode; } 
@override String toString() { return 'PostIssuingCardholdersCardholderRequestBilling(address: $address)'; } 
 }
