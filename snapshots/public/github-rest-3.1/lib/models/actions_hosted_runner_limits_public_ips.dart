// GENERATED CODE - DO NOT MODIFY BY HAND

/// Provides details of static public IP limits for GitHub-hosted Hosted Runners
final class ActionsHostedRunnerLimitsPublicIps {const ActionsHostedRunnerLimitsPublicIps({required this.maximum, required this.currentUsage, });

factory ActionsHostedRunnerLimitsPublicIps.fromJson(Map<String, dynamic> json) { return ActionsHostedRunnerLimitsPublicIps(
  maximum: (json['maximum'] as num).toInt(),
  currentUsage: (json['current_usage'] as num).toInt(),
); }

/// The maximum number of static public IP addresses that can be used for Hosted Runners.
final int maximum;

/// The current number of static public IP addresses in use by Hosted Runners.
final int currentUsage;

Map<String, dynamic> toJson() { return {
  'maximum': maximum,
  'current_usage': currentUsage,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('maximum') && json['maximum'] is num &&
      json.containsKey('current_usage') && json['current_usage'] is num; } 
ActionsHostedRunnerLimitsPublicIps copyWith({int? maximum, int? currentUsage, }) { return ActionsHostedRunnerLimitsPublicIps(
  maximum: maximum ?? this.maximum,
  currentUsage: currentUsage ?? this.currentUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsHostedRunnerLimitsPublicIps &&
          maximum == other.maximum &&
          currentUsage == other.currentUsage; } 
@override int get hashCode { return Object.hash(maximum, currentUsage); } 
@override String toString() { return 'ActionsHostedRunnerLimitsPublicIps(maximum: $maximum, currentUsage: $currentUsage)'; } 
 }
