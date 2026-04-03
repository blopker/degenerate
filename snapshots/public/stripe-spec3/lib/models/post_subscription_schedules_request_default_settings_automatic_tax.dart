// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_subscription_schedules_request_default_settings_automatic_tax_liability.dart';@immutable final class PostSubscriptionSchedulesRequestDefaultSettingsAutomaticTax {const PostSubscriptionSchedulesRequestDefaultSettingsAutomaticTax({required this.enabled, this.liability, });

factory PostSubscriptionSchedulesRequestDefaultSettingsAutomaticTax.fromJson(Map<String, dynamic> json) { return PostSubscriptionSchedulesRequestDefaultSettingsAutomaticTax(
  enabled: json['enabled'] as bool,
  liability: json['liability'] != null ? PostSubscriptionSchedulesRequestDefaultSettingsAutomaticTaxLiability.fromJson(json['liability'] as Map<String, dynamic>) : null,
); }

final bool enabled;

final PostSubscriptionSchedulesRequestDefaultSettingsAutomaticTaxLiability? liability;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  if (liability != null) 'liability': liability?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PostSubscriptionSchedulesRequestDefaultSettingsAutomaticTax copyWith({bool? enabled, PostSubscriptionSchedulesRequestDefaultSettingsAutomaticTaxLiability Function()? liability, }) { return PostSubscriptionSchedulesRequestDefaultSettingsAutomaticTax(
  enabled: enabled ?? this.enabled,
  liability: liability != null ? liability() : this.liability,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSubscriptionSchedulesRequestDefaultSettingsAutomaticTax &&
          enabled == other.enabled &&
          liability == other.liability; } 
@override int get hashCode { return Object.hash(enabled, liability); } 
@override String toString() { return 'PostSubscriptionSchedulesRequestDefaultSettingsAutomaticTax(enabled: $enabled, liability: $liability)'; } 
 }
