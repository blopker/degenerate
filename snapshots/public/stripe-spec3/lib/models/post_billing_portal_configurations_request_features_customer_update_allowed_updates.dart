// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1 {const PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1._(this.value);

factory PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1.fromJson(String json) { return switch (json) {
  'address' => address,
  'email' => email,
  'name' => $name,
  'phone' => phone,
  'shipping' => shipping,
  'tax_id' => taxId,
  _ => PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1._(json),
}; }

static const PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1 address = PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1._('address');

static const PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1 email = PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1._('email');

static const PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1 $name = PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1._('name');

static const PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1 phone = PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1._('phone');

static const PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1 shipping = PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1._('shipping');

static const PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1 taxId = PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1._('tax_id');

static const List<PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1> values = [address, email, $name, phone, shipping, taxId];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1($value)'; } 
 }
final class PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant2 {const PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant2._(this.value);

factory PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant2._(json),
}; }

static const PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant2 $empty = PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant2._('');

static const List<PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant2($value)'; } 
 }
typedef PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdates = OneOf2<List<PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1>,PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant2>;