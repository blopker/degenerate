// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialPeriodDaysVariant2 {const PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialPeriodDaysVariant2._(this.value);

factory PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialPeriodDaysVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialPeriodDaysVariant2._(json),
};}

static const PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialPeriodDaysVariant2 $empty = PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialPeriodDaysVariant2._('');

static const List<PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialPeriodDaysVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialPeriodDaysVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialPeriodDaysVariant2($value)';}
}

@immutable
final class PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialPeriodDays {
  const PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialPeriodDays({this.$int = const Omittable.absent(),
this.postPaymentLinksPaymentLinkRequestSubscriptionDataTrialPeriodDaysVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialPeriodDays._({required this.rawValue, required this.$int,
required this.postPaymentLinksPaymentLinkRequestSubscriptionDataTrialPeriodDaysVariant2,});
  factory PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialPeriodDays.fromJson(Object? json) => PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialPeriodDays._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postPaymentLinksPaymentLinkRequestSubscriptionDataTrialPeriodDaysVariant2: parseAnyOfVariant<PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialPeriodDaysVariant2>(json, (value) => PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialPeriodDaysVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialPeriodDaysVariant2> postPaymentLinksPaymentLinkRequestSubscriptionDataTrialPeriodDaysVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || postPaymentLinksPaymentLinkRequestSubscriptionDataTrialPeriodDaysVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (postPaymentLinksPaymentLinkRequestSubscriptionDataTrialPeriodDaysVariant2.isPresent) postPaymentLinksPaymentLinkRequestSubscriptionDataTrialPeriodDaysVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialPeriodDays && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialPeriodDays(${toJson()})';
}
