// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_subscription_schedules_request_phases_discounts_variant1.dart';@immutable final class PostSubscriptionSchedulesRequestPhasesDiscountsVariant2 {const PostSubscriptionSchedulesRequestPhasesDiscountsVariant2._(this.value);

factory PostSubscriptionSchedulesRequestPhasesDiscountsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionSchedulesRequestPhasesDiscountsVariant2._(json),
}; }

static const PostSubscriptionSchedulesRequestPhasesDiscountsVariant2 $empty = PostSubscriptionSchedulesRequestPhasesDiscountsVariant2._('');

static const List<PostSubscriptionSchedulesRequestPhasesDiscountsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionSchedulesRequestPhasesDiscountsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesRequestPhasesDiscountsVariant2($value)'; } 
 }

@immutable
final class PostSubscriptionSchedulesRequestPhasesDiscounts {
  const PostSubscriptionSchedulesRequestPhasesDiscounts({this.listPostSubscriptionSchedulesRequestPhasesDiscountsVariant1 = const Omittable.absent(),
this.postSubscriptionSchedulesRequestPhasesDiscountsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionSchedulesRequestPhasesDiscounts._({required this.rawValue, required this.listPostSubscriptionSchedulesRequestPhasesDiscountsVariant1,
required this.postSubscriptionSchedulesRequestPhasesDiscountsVariant2,});
  factory PostSubscriptionSchedulesRequestPhasesDiscounts.fromJson(Object? json) => PostSubscriptionSchedulesRequestPhasesDiscounts._(
    rawValue: Omittable(json),
    listPostSubscriptionSchedulesRequestPhasesDiscountsVariant1: parseAnyOfVariant<List<PostSubscriptionSchedulesRequestPhasesDiscountsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostSubscriptionSchedulesRequestPhasesDiscountsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postSubscriptionSchedulesRequestPhasesDiscountsVariant2: parseAnyOfVariant<PostSubscriptionSchedulesRequestPhasesDiscountsVariant2>(json, (value) => PostSubscriptionSchedulesRequestPhasesDiscountsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostSubscriptionSchedulesRequestPhasesDiscountsVariant1>> listPostSubscriptionSchedulesRequestPhasesDiscountsVariant1;
final Omittable<PostSubscriptionSchedulesRequestPhasesDiscountsVariant2> postSubscriptionSchedulesRequestPhasesDiscountsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostSubscriptionSchedulesRequestPhasesDiscountsVariant1.isPresent || postSubscriptionSchedulesRequestPhasesDiscountsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostSubscriptionSchedulesRequestPhasesDiscountsVariant1.isPresent) listPostSubscriptionSchedulesRequestPhasesDiscountsVariant1.value?.map((e) => e.toJson()).toList(),
if (postSubscriptionSchedulesRequestPhasesDiscountsVariant2.isPresent) postSubscriptionSchedulesRequestPhasesDiscountsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionSchedulesRequestPhasesDiscounts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionSchedulesRequestPhasesDiscounts(${toJson()})';
}
