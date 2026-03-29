// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_checkout_sessions_request_payment_intent_data_shipping_address.dart';final class PostCheckoutSessionsRequestPaymentIntentDataShipping {const PostCheckoutSessionsRequestPaymentIntentDataShipping({required this.address, this.carrier, required this.name, this.phone, this.trackingNumber, });

factory PostCheckoutSessionsRequestPaymentIntentDataShipping.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestPaymentIntentDataShipping(
  address: PostCheckoutSessionsRequestPaymentIntentDataShippingAddress.fromJson(json['address'] as Map<String, dynamic>),
  carrier: json['carrier'] as String?,
  name: json['name'] as String,
  phone: json['phone'] as String?,
  trackingNumber: json['tracking_number'] as String?,
); }

final PostCheckoutSessionsRequestPaymentIntentDataShippingAddress address;

final String? carrier;

final String name;

final String? phone;

final String? trackingNumber;

Map<String, dynamic> toJson() { return {
  'address': address.toJson(),
  'carrier': ?carrier,
  'name': name,
  'phone': ?phone,
  'tracking_number': ?trackingNumber,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('address') &&
      json.containsKey('name') && json['name'] is String; } 
PostCheckoutSessionsRequestPaymentIntentDataShipping copyWith({PostCheckoutSessionsRequestPaymentIntentDataShippingAddress? address, String Function()? carrier, String? name, String Function()? phone, String Function()? trackingNumber, }) { return PostCheckoutSessionsRequestPaymentIntentDataShipping(
  address: address ?? this.address,
  carrier: carrier != null ? carrier() : this.carrier,
  name: name ?? this.name,
  phone: phone != null ? phone() : this.phone,
  trackingNumber: trackingNumber != null ? trackingNumber() : this.trackingNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestPaymentIntentDataShipping &&
          address == other.address &&
          carrier == other.carrier &&
          name == other.name &&
          phone == other.phone &&
          trackingNumber == other.trackingNumber; } 
@override int get hashCode { return Object.hash(address, carrier, name, phone, trackingNumber); } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentIntentDataShipping(address: $address, carrier: $carrier, name: $name, phone: $phone, trackingNumber: $trackingNumber)'; } 
 }
