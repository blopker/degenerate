// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostCheckoutSessionsRequestPermissionsUpdateShippingDetails {const PostCheckoutSessionsRequestPermissionsUpdateShippingDetails._(this.value);

factory PostCheckoutSessionsRequestPermissionsUpdateShippingDetails.fromJson(String json) { return switch (json) {
  'client_only' => clientOnly,
  'server_only' => serverOnly,
  _ => PostCheckoutSessionsRequestPermissionsUpdateShippingDetails._(json),
}; }

static const PostCheckoutSessionsRequestPermissionsUpdateShippingDetails clientOnly = PostCheckoutSessionsRequestPermissionsUpdateShippingDetails._('client_only');

static const PostCheckoutSessionsRequestPermissionsUpdateShippingDetails serverOnly = PostCheckoutSessionsRequestPermissionsUpdateShippingDetails._('server_only');

static const List<PostCheckoutSessionsRequestPermissionsUpdateShippingDetails> values = [clientOnly, serverOnly];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestPermissionsUpdateShippingDetails && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPermissionsUpdateShippingDetails($value)'; } 
 }
/// This property is used to set up permissions for various actions (e.g., update) on the CheckoutSession object. Can only be set when creating `embedded` or `custom` sessions.
/// 
/// For specific permissions, please refer to their dedicated subsections, such as `permissions.update_shipping_details`.
final class PostCheckoutSessionsRequestPermissions {const PostCheckoutSessionsRequestPermissions({this.updateShippingDetails});

factory PostCheckoutSessionsRequestPermissions.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestPermissions(
  updateShippingDetails: json['update_shipping_details'] != null ? PostCheckoutSessionsRequestPermissionsUpdateShippingDetails.fromJson(json['update_shipping_details'] as String) : null,
); }

final PostCheckoutSessionsRequestPermissionsUpdateShippingDetails? updateShippingDetails;

Map<String, dynamic> toJson() { return {
  if (updateShippingDetails != null) 'update_shipping_details': updateShippingDetails?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostCheckoutSessionsRequestPermissions copyWith({PostCheckoutSessionsRequestPermissionsUpdateShippingDetails Function()? updateShippingDetails}) { return PostCheckoutSessionsRequestPermissions(
  updateShippingDetails: updateShippingDetails != null ? updateShippingDetails() : this.updateShippingDetails,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestPermissions &&
          updateShippingDetails == other.updateShippingDetails; } 
@override int get hashCode { return updateShippingDetails.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPermissions(updateShippingDetails: $updateShippingDetails)'; } 
 }
