// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostQuotesRequestSubscriptionDataTrialPeriodDaysVariant2 {const PostQuotesRequestSubscriptionDataTrialPeriodDaysVariant2._(this.value);

factory PostQuotesRequestSubscriptionDataTrialPeriodDaysVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostQuotesRequestSubscriptionDataTrialPeriodDaysVariant2._(json),
}; }

static const PostQuotesRequestSubscriptionDataTrialPeriodDaysVariant2 $empty = PostQuotesRequestSubscriptionDataTrialPeriodDaysVariant2._('');

static const List<PostQuotesRequestSubscriptionDataTrialPeriodDaysVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostQuotesRequestSubscriptionDataTrialPeriodDaysVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostQuotesRequestSubscriptionDataTrialPeriodDaysVariant2($value)'; } 
 }

@immutable
final class PostQuotesRequestSubscriptionDataTrialPeriodDays {
  const PostQuotesRequestSubscriptionDataTrialPeriodDays({this.$int = const Omittable.absent(),
this.postQuotesRequestSubscriptionDataTrialPeriodDaysVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostQuotesRequestSubscriptionDataTrialPeriodDays._({required this.rawValue, required this.$int,
required this.postQuotesRequestSubscriptionDataTrialPeriodDaysVariant2,});
  factory PostQuotesRequestSubscriptionDataTrialPeriodDays.fromJson(Object? json) => PostQuotesRequestSubscriptionDataTrialPeriodDays._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postQuotesRequestSubscriptionDataTrialPeriodDaysVariant2: parseAnyOfVariant<PostQuotesRequestSubscriptionDataTrialPeriodDaysVariant2>(json, (value) => PostQuotesRequestSubscriptionDataTrialPeriodDaysVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PostQuotesRequestSubscriptionDataTrialPeriodDaysVariant2> postQuotesRequestSubscriptionDataTrialPeriodDaysVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || postQuotesRequestSubscriptionDataTrialPeriodDaysVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (postQuotesRequestSubscriptionDataTrialPeriodDaysVariant2.isPresent) postQuotesRequestSubscriptionDataTrialPeriodDaysVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostQuotesRequestSubscriptionDataTrialPeriodDays && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostQuotesRequestSubscriptionDataTrialPeriodDays(${toJson()})';
}
