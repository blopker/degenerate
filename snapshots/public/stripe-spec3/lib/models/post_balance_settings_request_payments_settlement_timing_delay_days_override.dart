// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverrideVariant2 {const PostBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverrideVariant2._(this.value);

factory PostBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverrideVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverrideVariant2._(json),
}; }

static const PostBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverrideVariant2 $empty = PostBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverrideVariant2._('');

static const List<PostBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverrideVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverrideVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverrideVariant2($value)'; } 
 }
typedef PostBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverride = OneOf2<int,PostBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverrideVariant2>;
