// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1ValueVariant2 {const PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1ValueVariant2._(this.value);

factory PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1ValueVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1ValueVariant2._(json),
}; }

static const PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1ValueVariant2 $empty = PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1ValueVariant2._('');

static const List<PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1ValueVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1ValueVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1ValueVariant2($value)'; } 
 }
typedef PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1Value = OneOf2<int,PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1ValueVariant2>;
