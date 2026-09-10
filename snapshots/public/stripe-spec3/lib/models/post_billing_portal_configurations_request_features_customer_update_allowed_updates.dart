// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1 {const PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1._(this.value);

factory PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1.fromJson(String json) {return switch (json) {
  'address' => address,
  'email' => email,
  'name' => $name,
  'phone' => phone,
  'shipping' => shipping,
  'tax_id' => taxId,
  _ => PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1._(json),
};}

static const PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1 address = PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1._('address');

static const PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1 email = PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1._('email');

static const PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1 $name = PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1._('name');

static const PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1 phone = PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1._('phone');

static const PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1 shipping = PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1._('shipping');

static const PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1 taxId = PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1._('tax_id');

static const List<PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1> values = [address, email, $name, phone, shipping, taxId];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1($value)';}
}
@immutable final class PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant2 {const PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant2._(this.value);

factory PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant2._(json),
};}

static const PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant2 $empty = PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant2._('');

static const List<PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant2($value)';}
}

@immutable
final class PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdates {
  const PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdates({this.listPostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1 = const Omittable.absent(),
this.postBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdates._({required this.rawValue, required this.listPostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1,
required this.postBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant2,});
  factory PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdates.fromJson(Object? json) => PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdates._(
    rawValue: Omittable(json),
    listPostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1: parseAnyOfVariant<List<PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1.fromJson(e as String)).toList()),
postBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant2: parseAnyOfVariant<PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant2>(json, (value) => PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1>> listPostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1;
final Omittable<PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant2> postBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1.isPresent || postBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1.isPresent) listPostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1.value?.map((e) => e.toJson()).toList(),
if (postBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant2.isPresent) postBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdates(${toJson()})';
}
