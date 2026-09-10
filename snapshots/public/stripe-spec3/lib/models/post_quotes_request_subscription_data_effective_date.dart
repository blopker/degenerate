// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostQuotesRequestSubscriptionDataEffectiveDateVariant1 {const PostQuotesRequestSubscriptionDataEffectiveDateVariant1._(this.value);

factory PostQuotesRequestSubscriptionDataEffectiveDateVariant1.fromJson(String json) { return switch (json) {
  'current_period_end' => currentPeriodEnd,
  _ => PostQuotesRequestSubscriptionDataEffectiveDateVariant1._(json),
}; }

static const PostQuotesRequestSubscriptionDataEffectiveDateVariant1 currentPeriodEnd = PostQuotesRequestSubscriptionDataEffectiveDateVariant1._('current_period_end');

static const List<PostQuotesRequestSubscriptionDataEffectiveDateVariant1> values = [currentPeriodEnd];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostQuotesRequestSubscriptionDataEffectiveDateVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostQuotesRequestSubscriptionDataEffectiveDateVariant1($value)'; } 
 }
@immutable final class PostQuotesRequestSubscriptionDataEffectiveDateVariant3 {const PostQuotesRequestSubscriptionDataEffectiveDateVariant3._(this.value);

factory PostQuotesRequestSubscriptionDataEffectiveDateVariant3.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostQuotesRequestSubscriptionDataEffectiveDateVariant3._(json),
}; }

static const PostQuotesRequestSubscriptionDataEffectiveDateVariant3 $empty = PostQuotesRequestSubscriptionDataEffectiveDateVariant3._('');

static const List<PostQuotesRequestSubscriptionDataEffectiveDateVariant3> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostQuotesRequestSubscriptionDataEffectiveDateVariant3 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostQuotesRequestSubscriptionDataEffectiveDateVariant3($value)'; } 
 }

@immutable
final class PostQuotesRequestSubscriptionDataEffectiveDate {
  const PostQuotesRequestSubscriptionDataEffectiveDate({this.postQuotesRequestSubscriptionDataEffectiveDateVariant1 = const Omittable.absent(),
this.$int = const Omittable.absent(),
this.postQuotesRequestSubscriptionDataEffectiveDateVariant3 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostQuotesRequestSubscriptionDataEffectiveDate._({required this.rawValue, required this.postQuotesRequestSubscriptionDataEffectiveDateVariant1,
required this.$int,
required this.postQuotesRequestSubscriptionDataEffectiveDateVariant3,});
  factory PostQuotesRequestSubscriptionDataEffectiveDate.fromJson(Object? json) => PostQuotesRequestSubscriptionDataEffectiveDate._(
    rawValue: Omittable(json),
    postQuotesRequestSubscriptionDataEffectiveDateVariant1: parseAnyOfVariant<PostQuotesRequestSubscriptionDataEffectiveDateVariant1>(json, (value) => PostQuotesRequestSubscriptionDataEffectiveDateVariant1.fromJson(value! as String)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postQuotesRequestSubscriptionDataEffectiveDateVariant3: parseAnyOfVariant<PostQuotesRequestSubscriptionDataEffectiveDateVariant3>(json, (value) => PostQuotesRequestSubscriptionDataEffectiveDateVariant3.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PostQuotesRequestSubscriptionDataEffectiveDateVariant1> postQuotesRequestSubscriptionDataEffectiveDateVariant1;
final Omittable<int> $int;
final Omittable<PostQuotesRequestSubscriptionDataEffectiveDateVariant3> postQuotesRequestSubscriptionDataEffectiveDateVariant3;

  /// Whether at least one known variant matched.
  bool get isValid => postQuotesRequestSubscriptionDataEffectiveDateVariant1.isPresent || $int.isPresent || postQuotesRequestSubscriptionDataEffectiveDateVariant3.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (postQuotesRequestSubscriptionDataEffectiveDateVariant1.isPresent) postQuotesRequestSubscriptionDataEffectiveDateVariant1.value?.toJson(),
if ($int.isPresent) $int.value,
if (postQuotesRequestSubscriptionDataEffectiveDateVariant3.isPresent) postQuotesRequestSubscriptionDataEffectiveDateVariant3.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostQuotesRequestSubscriptionDataEffectiveDate && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostQuotesRequestSubscriptionDataEffectiveDate(${toJson()})';
}
