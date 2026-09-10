// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_thresholds_param5.dart';@immutable final class PostSubscriptionSchedulesRequestPhasesBillingThresholdsVariant2 {const PostSubscriptionSchedulesRequestPhasesBillingThresholdsVariant2._(this.value);

factory PostSubscriptionSchedulesRequestPhasesBillingThresholdsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionSchedulesRequestPhasesBillingThresholdsVariant2._(json),
}; }

static const PostSubscriptionSchedulesRequestPhasesBillingThresholdsVariant2 $empty = PostSubscriptionSchedulesRequestPhasesBillingThresholdsVariant2._('');

static const List<PostSubscriptionSchedulesRequestPhasesBillingThresholdsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionSchedulesRequestPhasesBillingThresholdsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesRequestPhasesBillingThresholdsVariant2($value)'; } 
 }

@immutable
final class PostSubscriptionSchedulesRequestPhasesBillingThresholds {
  const PostSubscriptionSchedulesRequestPhasesBillingThresholds({this.billingThresholdsParam5 = const Omittable.absent(),
this.postSubscriptionSchedulesRequestPhasesBillingThresholdsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionSchedulesRequestPhasesBillingThresholds._({required this.rawValue, required this.billingThresholdsParam5,
required this.postSubscriptionSchedulesRequestPhasesBillingThresholdsVariant2,});
  factory PostSubscriptionSchedulesRequestPhasesBillingThresholds.fromJson(Object? json) => PostSubscriptionSchedulesRequestPhasesBillingThresholds._(
    rawValue: Omittable(json),
    billingThresholdsParam5: parseAnyOfVariant<BillingThresholdsParam5>(json, (value) => BillingThresholdsParam5.fromJson(value! as Map<String, dynamic>)),
postSubscriptionSchedulesRequestPhasesBillingThresholdsVariant2: parseAnyOfVariant<PostSubscriptionSchedulesRequestPhasesBillingThresholdsVariant2>(json, (value) => PostSubscriptionSchedulesRequestPhasesBillingThresholdsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<BillingThresholdsParam5> billingThresholdsParam5;
final Omittable<PostSubscriptionSchedulesRequestPhasesBillingThresholdsVariant2> postSubscriptionSchedulesRequestPhasesBillingThresholdsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => billingThresholdsParam5.isPresent || postSubscriptionSchedulesRequestPhasesBillingThresholdsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (billingThresholdsParam5.isPresent) billingThresholdsParam5.value?.toJson(),
if (postSubscriptionSchedulesRequestPhasesBillingThresholdsVariant2.isPresent) postSubscriptionSchedulesRequestPhasesBillingThresholdsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionSchedulesRequestPhasesBillingThresholds && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionSchedulesRequestPhasesBillingThresholds(${toJson()})';
}
