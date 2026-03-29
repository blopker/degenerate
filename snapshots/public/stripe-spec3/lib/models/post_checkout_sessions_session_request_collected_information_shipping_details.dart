// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_checkout_sessions_session_request_collected_information_shipping_details_address.dart';final class PostCheckoutSessionsSessionRequestCollectedInformationShippingDetails {const PostCheckoutSessionsSessionRequestCollectedInformationShippingDetails({required this.address, required this.name, });

factory PostCheckoutSessionsSessionRequestCollectedInformationShippingDetails.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsSessionRequestCollectedInformationShippingDetails(
  address: PostCheckoutSessionsSessionRequestCollectedInformationShippingDetailsAddress.fromJson(json['address'] as Map<String, dynamic>),
  name: json['name'] as String,
); }

final PostCheckoutSessionsSessionRequestCollectedInformationShippingDetailsAddress address;

final String name;

Map<String, dynamic> toJson() { return {
  'address': address.toJson(),
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('address') &&
      json.containsKey('name') && json['name'] is String; } 
PostCheckoutSessionsSessionRequestCollectedInformationShippingDetails copyWith({PostCheckoutSessionsSessionRequestCollectedInformationShippingDetailsAddress? address, String? name, }) { return PostCheckoutSessionsSessionRequestCollectedInformationShippingDetails(
  address: address ?? this.address,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsSessionRequestCollectedInformationShippingDetails &&
          address == other.address &&
          name == other.name; } 
@override int get hashCode { return Object.hash(address, name); } 
@override String toString() { return 'PostCheckoutSessionsSessionRequestCollectedInformationShippingDetails(address: $address, name: $name)'; } 
 }
