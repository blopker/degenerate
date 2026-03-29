// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostQuotesQuoteRequestSubscriptionDataEffectiveDateVariant1 {const PostQuotesQuoteRequestSubscriptionDataEffectiveDateVariant1._(this.value);

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
final class PostQuotesQuoteRequestSubscriptionDataEffectiveDateVariant3 {const PostQuotesQuoteRequestSubscriptionDataEffectiveDateVariant3._(this.value);

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
typedef PostQuotesQuoteRequestSubscriptionDataEffectiveDate = OneOf3<PostQuotesQuoteRequestSubscriptionDataEffectiveDateVariant1,int,PostQuotesQuoteRequestSubscriptionDataEffectiveDateVariant3>;