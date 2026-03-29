// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_subscription_schedules_schedule_request_default_settings_automatic_tax_liability.dart';final class PostSubscriptionSchedulesScheduleRequestDefaultSettingsAutomaticTax {const PostSubscriptionSchedulesScheduleRequestDefaultSettingsAutomaticTax({required this.enabled, this.liability, });

factory PostSubscriptionSchedulesScheduleRequestDefaultSettingsAutomaticTax.fromJson(Map<String, dynamic> json) { return PostSubscriptionSchedulesScheduleRequestDefaultSettingsAutomaticTax(
  enabled: json['enabled'] as bool,
  liability: json['liability'] != null ? PostSubscriptionSchedulesScheduleRequestDefaultSettingsAutomaticTaxLiability.fromJson(json['liability'] as Map<String, dynamic>) : null,
); }

final bool enabled;

final PostSubscriptionSchedulesScheduleRequestDefaultSettingsAutomaticTaxLiability? liability;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  if (liability != null) 'liability': liability?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PostSubscriptionSchedulesScheduleRequestDefaultSettingsAutomaticTax copyWith({bool? enabled, PostSubscriptionSchedulesScheduleRequestDefaultSettingsAutomaticTaxLiability Function()? liability, }) { return PostSubscriptionSchedulesScheduleRequestDefaultSettingsAutomaticTax(
  enabled: enabled ?? this.enabled,
  liability: liability != null ? liability() : this.liability,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSubscriptionSchedulesScheduleRequestDefaultSettingsAutomaticTax &&
          enabled == other.enabled &&
          liability == other.liability; } 
@override int get hashCode { return Object.hash(enabled, liability); } 
@override String toString() { return 'PostSubscriptionSchedulesScheduleRequestDefaultSettingsAutomaticTax(enabled: $enabled, liability: $liability)'; } 
 }
