// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'actions_hosted_runner_limits_public_ips.dart';@immutable final class ActionsHostedRunnerLimits {const ActionsHostedRunnerLimits({required this.publicIps});

factory ActionsHostedRunnerLimits.fromJson(Map<String, dynamic> json) { return ActionsHostedRunnerLimits(
  publicIps: ActionsHostedRunnerLimitsPublicIps.fromJson(json['public_ips'] as Map<String, dynamic>),
); }

/// Provides details of static public IP limits for GitHub-hosted Hosted Runners
final ActionsHostedRunnerLimitsPublicIps publicIps;

Map<String, dynamic> toJson() { return {
  'public_ips': publicIps.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('public_ips'); } 
ActionsHostedRunnerLimits copyWith({ActionsHostedRunnerLimitsPublicIps? publicIps}) { return ActionsHostedRunnerLimits(
  publicIps: publicIps ?? this.publicIps,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsHostedRunnerLimits &&
          publicIps == other.publicIps; } 
@override int get hashCode { return publicIps.hashCode; } 
@override String toString() { return 'ActionsHostedRunnerLimits(publicIps: $publicIps)'; } 
 }
