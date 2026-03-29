// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class BalanceSettingsResourceSettlementTiming {const BalanceSettingsResourceSettlementTiming({required this.delayDays, this.delayDaysOverride, });

factory BalanceSettingsResourceSettlementTiming.fromJson(Map<String, dynamic> json) { return BalanceSettingsResourceSettlementTiming(
  delayDays: (json['delay_days'] as num).toInt(),
  delayDaysOverride: json['delay_days_override'] != null ? (json['delay_days_override'] as num).toInt() : null,
); }

/// The number of days charge funds are held before becoming available.
final int delayDays;

/// The number of days charge funds are held before becoming available. If present, overrides the default, or minimum available, for the account.
final int? delayDaysOverride;

Map<String, dynamic> toJson() { return {
  'delay_days': delayDays,
  'delay_days_override': ?delayDaysOverride,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('delay_days') && json['delay_days'] is num; } 
BalanceSettingsResourceSettlementTiming copyWith({int? delayDays, int Function()? delayDaysOverride, }) { return BalanceSettingsResourceSettlementTiming(
  delayDays: delayDays ?? this.delayDays,
  delayDaysOverride: delayDaysOverride != null ? delayDaysOverride() : this.delayDaysOverride,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BalanceSettingsResourceSettlementTiming &&
          delayDays == other.delayDays &&
          delayDaysOverride == other.delayDaysOverride; } 
@override int get hashCode { return Object.hash(delayDays, delayDaysOverride); } 
@override String toString() { return 'BalanceSettingsResourceSettlementTiming(delayDays: $delayDays, delayDaysOverride: $delayDaysOverride)'; } 
 }
