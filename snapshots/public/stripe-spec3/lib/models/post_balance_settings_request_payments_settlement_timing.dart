// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_balance_settings_request_payments_settlement_timing_delay_days_override.dart';final class PostBalanceSettingsRequestPaymentsSettlementTiming {const PostBalanceSettingsRequestPaymentsSettlementTiming({this.delayDaysOverride});

factory PostBalanceSettingsRequestPaymentsSettlementTiming.fromJson(Map<String, dynamic> json) { return PostBalanceSettingsRequestPaymentsSettlementTiming(
  delayDaysOverride: json['delay_days_override'] != null ? OneOf2.parse(json['delay_days_override'], fromA: (v) => (v as num).toInt(), fromB: (v) => PostBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverrideVariant2.fromJson(v as String),) : null,
); }

final PostBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverride? delayDaysOverride;

Map<String, dynamic> toJson() { return {
  if (delayDaysOverride != null) 'delay_days_override': delayDaysOverride?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'delay_days_override'}.contains(key)); } 
PostBalanceSettingsRequestPaymentsSettlementTiming copyWith({PostBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverride Function()? delayDaysOverride}) { return PostBalanceSettingsRequestPaymentsSettlementTiming(
  delayDaysOverride: delayDaysOverride != null ? delayDaysOverride() : this.delayDaysOverride,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostBalanceSettingsRequestPaymentsSettlementTiming &&
          delayDaysOverride == other.delayDaysOverride; } 
@override int get hashCode { return delayDaysOverride.hashCode; } 
@override String toString() { return 'PostBalanceSettingsRequestPaymentsSettlementTiming(delayDaysOverride: $delayDaysOverride)'; } 
 }
