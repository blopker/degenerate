// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_thresholds_param8.dart';@immutable final class PostSubscriptionsRequestBillingThresholdsVariant2 {const PostSubscriptionsRequestBillingThresholdsVariant2._(this.value);

factory PostSubscriptionsRequestBillingThresholdsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsRequestBillingThresholdsVariant2._(json),
};}

static const PostSubscriptionsRequestBillingThresholdsVariant2 $empty = PostSubscriptionsRequestBillingThresholdsVariant2._('');

static const List<PostSubscriptionsRequestBillingThresholdsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSubscriptionsRequestBillingThresholdsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSubscriptionsRequestBillingThresholdsVariant2($value)';}
}
/// Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. When updating, pass an empty string to remove previously-defined thresholds.
@immutable
final class PostSubscriptionsRequestBillingThresholds {
  const PostSubscriptionsRequestBillingThresholds({this.billingThresholdsParam8 = const Omittable.absent(),
this.postSubscriptionsRequestBillingThresholdsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsRequestBillingThresholds._({required this.rawValue, required this.billingThresholdsParam8,
required this.postSubscriptionsRequestBillingThresholdsVariant2,});
  factory PostSubscriptionsRequestBillingThresholds.fromJson(Object? json) => PostSubscriptionsRequestBillingThresholds._(
    rawValue: Omittable(json),
    billingThresholdsParam8: parseAnyOfVariant<BillingThresholdsParam8>(json, (value) => BillingThresholdsParam8.fromJson(value! as Map<String, dynamic>)),
postSubscriptionsRequestBillingThresholdsVariant2: parseAnyOfVariant<PostSubscriptionsRequestBillingThresholdsVariant2>(json, (value) => PostSubscriptionsRequestBillingThresholdsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<BillingThresholdsParam8> billingThresholdsParam8;
final Omittable<PostSubscriptionsRequestBillingThresholdsVariant2> postSubscriptionsRequestBillingThresholdsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => billingThresholdsParam8.isPresent || postSubscriptionsRequestBillingThresholdsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (billingThresholdsParam8.isPresent) billingThresholdsParam8.value?.toJson(),
if (postSubscriptionsRequestBillingThresholdsVariant2.isPresent) postSubscriptionsRequestBillingThresholdsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsRequestBillingThresholds && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsRequestBillingThresholds(${toJson()})';
}
