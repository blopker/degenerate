// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostQuotesQuoteRequestSubscriptionDataTrialPeriodDaysVariant2 {const PostQuotesQuoteRequestSubscriptionDataTrialPeriodDaysVariant2._(this.value);

factory PostQuotesQuoteRequestSubscriptionDataTrialPeriodDaysVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostQuotesQuoteRequestSubscriptionDataTrialPeriodDaysVariant2._(json),
};}

static const PostQuotesQuoteRequestSubscriptionDataTrialPeriodDaysVariant2 $empty = PostQuotesQuoteRequestSubscriptionDataTrialPeriodDaysVariant2._('');

static const List<PostQuotesQuoteRequestSubscriptionDataTrialPeriodDaysVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostQuotesQuoteRequestSubscriptionDataTrialPeriodDaysVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostQuotesQuoteRequestSubscriptionDataTrialPeriodDaysVariant2($value)';}
}

@immutable
final class PostQuotesQuoteRequestSubscriptionDataTrialPeriodDays {
  const PostQuotesQuoteRequestSubscriptionDataTrialPeriodDays({this.$int = const Omittable.absent(),
this.postQuotesQuoteRequestSubscriptionDataTrialPeriodDaysVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostQuotesQuoteRequestSubscriptionDataTrialPeriodDays._({required this.rawValue, required this.$int,
required this.postQuotesQuoteRequestSubscriptionDataTrialPeriodDaysVariant2,});
  factory PostQuotesQuoteRequestSubscriptionDataTrialPeriodDays.fromJson(Object? json) => PostQuotesQuoteRequestSubscriptionDataTrialPeriodDays._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postQuotesQuoteRequestSubscriptionDataTrialPeriodDaysVariant2: parseAnyOfVariant<PostQuotesQuoteRequestSubscriptionDataTrialPeriodDaysVariant2>(json, (value) => PostQuotesQuoteRequestSubscriptionDataTrialPeriodDaysVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PostQuotesQuoteRequestSubscriptionDataTrialPeriodDaysVariant2> postQuotesQuoteRequestSubscriptionDataTrialPeriodDaysVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || postQuotesQuoteRequestSubscriptionDataTrialPeriodDaysVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (postQuotesQuoteRequestSubscriptionDataTrialPeriodDaysVariant2.isPresent) postQuotesQuoteRequestSubscriptionDataTrialPeriodDaysVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostQuotesQuoteRequestSubscriptionDataTrialPeriodDays && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostQuotesQuoteRequestSubscriptionDataTrialPeriodDays(${toJson()})';
}
