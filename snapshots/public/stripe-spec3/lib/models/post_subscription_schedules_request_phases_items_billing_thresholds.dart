// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'item_billing_thresholds_param7.dart';@immutable final class PostSubscriptionSchedulesRequestPhasesItemsBillingThresholdsVariant2 {const PostSubscriptionSchedulesRequestPhasesItemsBillingThresholdsVariant2._(this.value);

factory PostSubscriptionSchedulesRequestPhasesItemsBillingThresholdsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSubscriptionSchedulesRequestPhasesItemsBillingThresholdsVariant2._(json),
};}

static const PostSubscriptionSchedulesRequestPhasesItemsBillingThresholdsVariant2 $empty = PostSubscriptionSchedulesRequestPhasesItemsBillingThresholdsVariant2._('');

static const List<PostSubscriptionSchedulesRequestPhasesItemsBillingThresholdsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSubscriptionSchedulesRequestPhasesItemsBillingThresholdsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSubscriptionSchedulesRequestPhasesItemsBillingThresholdsVariant2($value)';}
}

@immutable
final class PostSubscriptionSchedulesRequestPhasesItemsBillingThresholds {
  const PostSubscriptionSchedulesRequestPhasesItemsBillingThresholds({this.itemBillingThresholdsParam7 = const Omittable.absent(),
this.postSubscriptionSchedulesRequestPhasesItemsBillingThresholdsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionSchedulesRequestPhasesItemsBillingThresholds._({required this.rawValue, required this.itemBillingThresholdsParam7,
required this.postSubscriptionSchedulesRequestPhasesItemsBillingThresholdsVariant2,});
  factory PostSubscriptionSchedulesRequestPhasesItemsBillingThresholds.fromJson(Object? json) => PostSubscriptionSchedulesRequestPhasesItemsBillingThresholds._(
    rawValue: Omittable(json),
    itemBillingThresholdsParam7: parseAnyOfVariant<ItemBillingThresholdsParam7>(json, (value) => ItemBillingThresholdsParam7.fromJson(value! as Map<String, dynamic>)),
postSubscriptionSchedulesRequestPhasesItemsBillingThresholdsVariant2: parseAnyOfVariant<PostSubscriptionSchedulesRequestPhasesItemsBillingThresholdsVariant2>(json, (value) => PostSubscriptionSchedulesRequestPhasesItemsBillingThresholdsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<ItemBillingThresholdsParam7> itemBillingThresholdsParam7;
final Omittable<PostSubscriptionSchedulesRequestPhasesItemsBillingThresholdsVariant2> postSubscriptionSchedulesRequestPhasesItemsBillingThresholdsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => itemBillingThresholdsParam7.isPresent || postSubscriptionSchedulesRequestPhasesItemsBillingThresholdsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (itemBillingThresholdsParam7.isPresent) itemBillingThresholdsParam7.value?.toJson(),
if (postSubscriptionSchedulesRequestPhasesItemsBillingThresholdsVariant2.isPresent) postSubscriptionSchedulesRequestPhasesItemsBillingThresholdsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionSchedulesRequestPhasesItemsBillingThresholds && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionSchedulesRequestPhasesItemsBillingThresholds(${toJson()})';
}
