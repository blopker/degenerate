// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_subscription_schedules_request_phases_items_discounts_variant1.dart';@immutable final class PostSubscriptionSchedulesRequestPhasesItemsDiscountsVariant2 {const PostSubscriptionSchedulesRequestPhasesItemsDiscountsVariant2._(this.value);

factory PostSubscriptionSchedulesRequestPhasesItemsDiscountsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSubscriptionSchedulesRequestPhasesItemsDiscountsVariant2._(json),
};}

static const PostSubscriptionSchedulesRequestPhasesItemsDiscountsVariant2 $empty = PostSubscriptionSchedulesRequestPhasesItemsDiscountsVariant2._('');

static const List<PostSubscriptionSchedulesRequestPhasesItemsDiscountsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSubscriptionSchedulesRequestPhasesItemsDiscountsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSubscriptionSchedulesRequestPhasesItemsDiscountsVariant2($value)';}
}

@immutable
final class PostSubscriptionSchedulesRequestPhasesItemsDiscounts {
  const PostSubscriptionSchedulesRequestPhasesItemsDiscounts({this.listPostSubscriptionSchedulesRequestPhasesItemsDiscountsVariant1 = const Omittable.absent(),
this.postSubscriptionSchedulesRequestPhasesItemsDiscountsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionSchedulesRequestPhasesItemsDiscounts._({required this.rawValue, required this.listPostSubscriptionSchedulesRequestPhasesItemsDiscountsVariant1,
required this.postSubscriptionSchedulesRequestPhasesItemsDiscountsVariant2,});
  factory PostSubscriptionSchedulesRequestPhasesItemsDiscounts.fromJson(Object? json) => PostSubscriptionSchedulesRequestPhasesItemsDiscounts._(
    rawValue: Omittable(json),
    listPostSubscriptionSchedulesRequestPhasesItemsDiscountsVariant1: parseAnyOfVariant<List<PostSubscriptionSchedulesRequestPhasesItemsDiscountsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostSubscriptionSchedulesRequestPhasesItemsDiscountsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postSubscriptionSchedulesRequestPhasesItemsDiscountsVariant2: parseAnyOfVariant<PostSubscriptionSchedulesRequestPhasesItemsDiscountsVariant2>(json, (value) => PostSubscriptionSchedulesRequestPhasesItemsDiscountsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostSubscriptionSchedulesRequestPhasesItemsDiscountsVariant1>> listPostSubscriptionSchedulesRequestPhasesItemsDiscountsVariant1;
final Omittable<PostSubscriptionSchedulesRequestPhasesItemsDiscountsVariant2> postSubscriptionSchedulesRequestPhasesItemsDiscountsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostSubscriptionSchedulesRequestPhasesItemsDiscountsVariant1.isPresent || postSubscriptionSchedulesRequestPhasesItemsDiscountsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostSubscriptionSchedulesRequestPhasesItemsDiscountsVariant1.isPresent) listPostSubscriptionSchedulesRequestPhasesItemsDiscountsVariant1.value?.map((e) => e.toJson()).toList(),
if (postSubscriptionSchedulesRequestPhasesItemsDiscountsVariant2.isPresent) postSubscriptionSchedulesRequestPhasesItemsDiscountsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionSchedulesRequestPhasesItemsDiscounts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionSchedulesRequestPhasesItemsDiscounts(${toJson()})';
}
