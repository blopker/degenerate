// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'subscriptions_trials_resource_end_behavior.dart';/// Configures how this subscription behaves during the trial period.
@immutable final class SubscriptionsTrialsResourceTrialSettings {const SubscriptionsTrialsResourceTrialSettings({required this.endBehavior});

factory SubscriptionsTrialsResourceTrialSettings.fromJson(Map<String, dynamic> json) { return SubscriptionsTrialsResourceTrialSettings(
  endBehavior: SubscriptionsTrialsResourceEndBehavior.fromJson(json['end_behavior'] as Map<String, dynamic>),
); }

final SubscriptionsTrialsResourceEndBehavior endBehavior;

Map<String, dynamic> toJson() { return {
  'end_behavior': endBehavior.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('end_behavior'); } 
SubscriptionsTrialsResourceTrialSettings copyWith({SubscriptionsTrialsResourceEndBehavior? endBehavior}) { return SubscriptionsTrialsResourceTrialSettings(
  endBehavior: endBehavior ?? this.endBehavior,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SubscriptionsTrialsResourceTrialSettings &&
          endBehavior == other.endBehavior; } 
@override int get hashCode { return endBehavior.hashCode; } 
@override String toString() { return 'SubscriptionsTrialsResourceTrialSettings(endBehavior: $endBehavior)'; } 
 }
