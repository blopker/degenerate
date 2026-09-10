// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant1 {const PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant1._(this.value);

factory PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant1.fromJson(String json) { return switch (json) {
  'address' => address,
  'email' => email,
  'name' => $name,
  'phone' => phone,
  'shipping' => shipping,
  'tax_id' => taxId,
  _ => PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant1._(json),
}; }

static const PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant1 address = PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant1._('address');

static const PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant1 email = PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant1._('email');

static const PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant1 $name = PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant1._('name');

static const PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant1 phone = PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant1._('phone');

static const PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant1 shipping = PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant1._('shipping');

static const PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant1 taxId = PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant1._('tax_id');

static const List<PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant1> values = [address, email, $name, phone, shipping, taxId];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant1($value)'; } 
 }
@immutable final class PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant2 {const PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant2._(this.value);

factory PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant2._(json),
}; }

static const PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant2 $empty = PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant2._('');

static const List<PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant2($value)'; } 
 }

@immutable
final class PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdates {
  const PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdates({this.listPostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant1 = const Omittable.absent(),
this.postBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdates._({required this.rawValue, required this.listPostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant1,
required this.postBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant2,});
  factory PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdates.fromJson(Object? json) => PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdates._(
    rawValue: Omittable(json),
    listPostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant1: parseAnyOfVariant<List<PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant1.fromJson(e as String)).toList()),
postBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant2: parseAnyOfVariant<PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant2>(json, (value) => PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant1>> listPostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant1;
final Omittable<PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant2> postBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant1.isPresent || postBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant1.isPresent) listPostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant1.value?.map((e) => e.toJson()).toList(),
if (postBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant2.isPresent) postBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostBillingPortalConfigurationsConfigurationRequestFeaturesCustomerUpdateAllowedUpdates(${toJson()})';
}
