// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1 {const PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1._(this.value);

factory PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1.fromJson(String json) { return switch (json) {
  'price' => price,
  'promotion_code' => promotionCode,
  'quantity' => quantity,
  _ => PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1._(json),
}; }

static const PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1 price = PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1._('price');

static const PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1 promotionCode = PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1._('promotion_code');

static const PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1 quantity = PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1._('quantity');

static const List<PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1> values = [price, promotionCode, quantity];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1($value)'; } 
 }
@immutable final class PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2 {const PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2._(this.value);

factory PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2._(json),
}; }

static const PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2 $empty = PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2._('');

static const List<PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2($value)'; } 
 }

@immutable
final class PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdates {
  const PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdates({this.listPostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1 = const Omittable.absent(),
this.postBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdates._({required this.rawValue, required this.listPostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1,
required this.postBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2,});
  factory PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdates.fromJson(Object? json) => PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdates._(
    rawValue: Omittable(json),
    listPostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1: parseAnyOfVariant<List<PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1.fromJson(e as String)).toList()),
postBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2: parseAnyOfVariant<PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2>(json, (value) => PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1>> listPostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1;
final Omittable<PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2> postBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1.isPresent || postBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1.isPresent) listPostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1.value?.map((e) => e.toJson()).toList(),
if (postBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2.isPresent) postBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdates(${toJson()})';
}
