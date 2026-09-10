// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1 {const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1._(this.value);

factory PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1.fromJson(String json) {return switch (json) {
  'price' => price,
  'promotion_code' => promotionCode,
  'quantity' => quantity,
  _ => PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1._(json),
};}

static const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1 price = PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1._('price');

static const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1 promotionCode = PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1._('promotion_code');

static const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1 quantity = PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1._('quantity');

static const List<PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1> values = [price, promotionCode, quantity];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1($value)';}
}
@immutable final class PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2 {const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2._(this.value);

factory PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2._(json),
};}

static const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2 $empty = PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2._('');

static const List<PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2($value)';}
}

@immutable
final class PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdates {
  const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdates({this.listPostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1 = const Omittable.absent(),
this.postBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdates._({required this.rawValue, required this.listPostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1,
required this.postBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2,});
  factory PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdates.fromJson(Object? json) => PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdates._(
    rawValue: Omittable(json),
    listPostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1: parseAnyOfVariant<List<PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1.fromJson(e as String)).toList()),
postBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2: parseAnyOfVariant<PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2>(json, (value) => PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1>> listPostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1;
final Omittable<PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2> postBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1.isPresent || postBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1.isPresent) listPostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1.value?.map((e) => e.toJson()).toList(),
if (postBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2.isPresent) postBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateDefaultAllowedUpdates(${toJson()})';
}
