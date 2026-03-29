// GENERATED CODE - DO NOT MODIFY BY HAND

import 'subscriptions_resource_trial_settings_trial_settings.dart';/// Settings related to subscription trials.
final class SubscriptionTrialSettings {const SubscriptionTrialSettings({this.subscriptionsResourceTrialSettingsTrialSettings});

factory SubscriptionTrialSettings.fromJson(Map<String, dynamic> json) { return SubscriptionTrialSettings(
  subscriptionsResourceTrialSettingsTrialSettings: SubscriptionsResourceTrialSettingsTrialSettings.canParse(json) ? SubscriptionsResourceTrialSettingsTrialSettings.fromJson(json) : null,
); }

final SubscriptionsResourceTrialSettingsTrialSettings? subscriptionsResourceTrialSettingsTrialSettings;

/// At least one variant must be present.
bool get isValid { return subscriptionsResourceTrialSettingsTrialSettings != null; } 
Map<String, dynamic> toJson() { return {
  ...?subscriptionsResourceTrialSettingsTrialSettings?.toJson(),
}; } 
 }
