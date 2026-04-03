// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_subscriptions_request_trial_settings_end_behavior.dart';/// Settings related to subscription trials.
@immutable final class PostSubscriptionsRequestTrialSettings {const PostSubscriptionsRequestTrialSettings({required this.endBehavior});

factory PostSubscriptionsRequestTrialSettings.fromJson(Map<String, dynamic> json) { return PostSubscriptionsRequestTrialSettings(
  endBehavior: PostSubscriptionsRequestTrialSettingsEndBehavior.fromJson(json['end_behavior'] as Map<String, dynamic>),
); }

final PostSubscriptionsRequestTrialSettingsEndBehavior endBehavior;

Map<String, dynamic> toJson() { return {
  'end_behavior': endBehavior.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('end_behavior'); } 
PostSubscriptionsRequestTrialSettings copyWith({PostSubscriptionsRequestTrialSettingsEndBehavior? endBehavior}) { return PostSubscriptionsRequestTrialSettings(
  endBehavior: endBehavior ?? this.endBehavior,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSubscriptionsRequestTrialSettings &&
          endBehavior == other.endBehavior; } 
@override int get hashCode { return endBehavior.hashCode; } 
@override String toString() { return 'PostSubscriptionsRequestTrialSettings(endBehavior: $endBehavior)'; } 
 }
