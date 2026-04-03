// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Determines which entity is allowed to update the shipping details.
/// 
/// Default is `client_only`. Stripe Checkout client will automatically update the shipping details. If set to `server_only`, only your server is allowed to update the shipping details.
/// 
/// When set to `server_only`, you must add the onShippingDetailsChange event handler when initializing the Stripe Checkout client and manually update the shipping details from your server using the Stripe API.
@immutable final class PaymentPagesCheckoutSessionPermissionsUpdateShippingDetails {const PaymentPagesCheckoutSessionPermissionsUpdateShippingDetails._(this.value);

factory PaymentPagesCheckoutSessionPermissionsUpdateShippingDetails.fromJson(String json) { return switch (json) {
  'client_only' => clientOnly,
  'server_only' => serverOnly,
  _ => PaymentPagesCheckoutSessionPermissionsUpdateShippingDetails._(json),
}; }

static const PaymentPagesCheckoutSessionPermissionsUpdateShippingDetails clientOnly = PaymentPagesCheckoutSessionPermissionsUpdateShippingDetails._('client_only');

static const PaymentPagesCheckoutSessionPermissionsUpdateShippingDetails serverOnly = PaymentPagesCheckoutSessionPermissionsUpdateShippingDetails._('server_only');

static const List<PaymentPagesCheckoutSessionPermissionsUpdateShippingDetails> values = [clientOnly, serverOnly];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentPagesCheckoutSessionPermissionsUpdateShippingDetails && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentPagesCheckoutSessionPermissionsUpdateShippingDetails($value)'; } 
 }
/// 
@immutable final class PaymentPagesCheckoutSessionPermissions {const PaymentPagesCheckoutSessionPermissions({this.updateShippingDetails});

factory PaymentPagesCheckoutSessionPermissions.fromJson(Map<String, dynamic> json) { return PaymentPagesCheckoutSessionPermissions(
  updateShippingDetails: json['update_shipping_details'] != null ? PaymentPagesCheckoutSessionPermissionsUpdateShippingDetails.fromJson(json['update_shipping_details'] as String) : null,
); }

/// Determines which entity is allowed to update the shipping details.
/// 
/// Default is `client_only`. Stripe Checkout client will automatically update the shipping details. If set to `server_only`, only your server is allowed to update the shipping details.
/// 
/// When set to `server_only`, you must add the onShippingDetailsChange event handler when initializing the Stripe Checkout client and manually update the shipping details from your server using the Stripe API.
final PaymentPagesCheckoutSessionPermissionsUpdateShippingDetails? updateShippingDetails;

Map<String, dynamic> toJson() { return {
  if (updateShippingDetails != null) 'update_shipping_details': updateShippingDetails?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'update_shipping_details'}.contains(key)); } 
PaymentPagesCheckoutSessionPermissions copyWith({PaymentPagesCheckoutSessionPermissionsUpdateShippingDetails? Function()? updateShippingDetails}) { return PaymentPagesCheckoutSessionPermissions(
  updateShippingDetails: updateShippingDetails != null ? updateShippingDetails() : this.updateShippingDetails,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentPagesCheckoutSessionPermissions &&
          updateShippingDetails == other.updateShippingDetails; } 
@override int get hashCode { return updateShippingDetails.hashCode; } 
@override String toString() { return 'PaymentPagesCheckoutSessionPermissions(updateShippingDetails: $updateShippingDetails)'; } 
 }
