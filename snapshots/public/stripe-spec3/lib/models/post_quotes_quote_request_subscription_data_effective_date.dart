// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostQuotesQuoteRequestSubscriptionDataEffectiveDateVariant1 {const PostQuotesQuoteRequestSubscriptionDataEffectiveDateVariant1._(this.value);

factory PostQuotesQuoteRequestSubscriptionDataEffectiveDateVariant1.fromJson(String json) { return switch (json) {
  'current_period_end' => currentPeriodEnd,
  _ => PostQuotesQuoteRequestSubscriptionDataEffectiveDateVariant1._(json),
}; }

static const PostQuotesQuoteRequestSubscriptionDataEffectiveDateVariant1 currentPeriodEnd = PostQuotesQuoteRequestSubscriptionDataEffectiveDateVariant1._('current_period_end');

static const List<PostQuotesQuoteRequestSubscriptionDataEffectiveDateVariant1> values = [currentPeriodEnd];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostQuotesQuoteRequestSubscriptionDataEffectiveDateVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostQuotesQuoteRequestSubscriptionDataEffectiveDateVariant1($value)'; } 
 }
@immutable final class PostQuotesQuoteRequestSubscriptionDataEffectiveDateVariant3 {const PostQuotesQuoteRequestSubscriptionDataEffectiveDateVariant3._(this.value);

factory PostQuotesQuoteRequestSubscriptionDataEffectiveDateVariant3.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostQuotesQuoteRequestSubscriptionDataEffectiveDateVariant3._(json),
}; }

static const PostQuotesQuoteRequestSubscriptionDataEffectiveDateVariant3 $empty = PostQuotesQuoteRequestSubscriptionDataEffectiveDateVariant3._('');

static const List<PostQuotesQuoteRequestSubscriptionDataEffectiveDateVariant3> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostQuotesQuoteRequestSubscriptionDataEffectiveDateVariant3 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostQuotesQuoteRequestSubscriptionDataEffectiveDateVariant3($value)'; } 
 }

@immutable
final class PostQuotesQuoteRequestSubscriptionDataEffectiveDate {
  const PostQuotesQuoteRequestSubscriptionDataEffectiveDate({this.postQuotesQuoteRequestSubscriptionDataEffectiveDateVariant1 = const Omittable.absent(),
this.$int = const Omittable.absent(),
this.postQuotesQuoteRequestSubscriptionDataEffectiveDateVariant3 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostQuotesQuoteRequestSubscriptionDataEffectiveDate._({required this.rawValue, required this.postQuotesQuoteRequestSubscriptionDataEffectiveDateVariant1,
required this.$int,
required this.postQuotesQuoteRequestSubscriptionDataEffectiveDateVariant3,});
  factory PostQuotesQuoteRequestSubscriptionDataEffectiveDate.fromJson(Object? json) => PostQuotesQuoteRequestSubscriptionDataEffectiveDate._(
    rawValue: Omittable(json),
    postQuotesQuoteRequestSubscriptionDataEffectiveDateVariant1: parseAnyOfVariant<PostQuotesQuoteRequestSubscriptionDataEffectiveDateVariant1>(json, (value) => PostQuotesQuoteRequestSubscriptionDataEffectiveDateVariant1.fromJson(value! as String)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postQuotesQuoteRequestSubscriptionDataEffectiveDateVariant3: parseAnyOfVariant<PostQuotesQuoteRequestSubscriptionDataEffectiveDateVariant3>(json, (value) => PostQuotesQuoteRequestSubscriptionDataEffectiveDateVariant3.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PostQuotesQuoteRequestSubscriptionDataEffectiveDateVariant1> postQuotesQuoteRequestSubscriptionDataEffectiveDateVariant1;
final Omittable<int> $int;
final Omittable<PostQuotesQuoteRequestSubscriptionDataEffectiveDateVariant3> postQuotesQuoteRequestSubscriptionDataEffectiveDateVariant3;

  /// Whether at least one known variant matched.
  bool get isValid => postQuotesQuoteRequestSubscriptionDataEffectiveDateVariant1.isPresent || $int.isPresent || postQuotesQuoteRequestSubscriptionDataEffectiveDateVariant3.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (postQuotesQuoteRequestSubscriptionDataEffectiveDateVariant1.isPresent) postQuotesQuoteRequestSubscriptionDataEffectiveDateVariant1.value?.toJson(),
if ($int.isPresent) $int.value,
if (postQuotesQuoteRequestSubscriptionDataEffectiveDateVariant3.isPresent) postQuotesQuoteRequestSubscriptionDataEffectiveDateVariant3.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostQuotesQuoteRequestSubscriptionDataEffectiveDate && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostQuotesQuoteRequestSubscriptionDataEffectiveDate(${toJson()})';
}
