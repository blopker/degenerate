// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'pending_deployment_environment.dart';import 'pending_deployment_reviewers.dart';/// Details of a deployment that is waiting for protection rules to pass
final class PendingDeployment {const PendingDeployment({required this.environment, required this.waitTimer, required this.waitTimerStartedAt, required this.currentUserCanApprove, required this.reviewers, });

factory PendingDeployment.fromJson(Map<String, dynamic> json) { return PendingDeployment(
  environment: PendingDeploymentEnvironment.fromJson(json['environment'] as Map<String, dynamic>),
  waitTimer: (json['wait_timer'] as num).toInt(),
  waitTimerStartedAt: json['wait_timer_started_at'] != null ? DateTime.parse(json['wait_timer_started_at'] as String) : null,
  currentUserCanApprove: json['current_user_can_approve'] as bool,
  reviewers: (json['reviewers'] as List<dynamic>).map((e) => PendingDeploymentReviewers.fromJson(e as Map<String, dynamic>)).toList(),
); }

final PendingDeploymentEnvironment environment;

/// The set duration of the wait timer
final int waitTimer;

/// The time that the wait timer began.
final DateTime? waitTimerStartedAt;

/// Whether the currently authenticated user can approve the deployment
final bool currentUserCanApprove;

/// The people or teams that may approve jobs that reference the environment. You can list up to six users or teams as reviewers. The reviewers must have at least read access to the repository. Only one of the required reviewers needs to approve the job for it to proceed.
final List<PendingDeploymentReviewers> reviewers;

Map<String, dynamic> toJson() { return {
  'environment': environment.toJson(),
  'wait_timer': waitTimer,
  if (waitTimerStartedAt != null) 'wait_timer_started_at': waitTimerStartedAt?.toIso8601String(),
  'current_user_can_approve': currentUserCanApprove,
  'reviewers': reviewers.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('environment') &&
      json.containsKey('wait_timer') && json['wait_timer'] is num &&
      json.containsKey('wait_timer_started_at') && json['wait_timer_started_at'] is String &&
      json.containsKey('current_user_can_approve') && json['current_user_can_approve'] is bool &&
      json.containsKey('reviewers'); } 
PendingDeployment copyWith({PendingDeploymentEnvironment? environment, int? waitTimer, DateTime? Function()? waitTimerStartedAt, bool? currentUserCanApprove, List<PendingDeploymentReviewers>? reviewers, }) { return PendingDeployment(
  environment: environment ?? this.environment,
  waitTimer: waitTimer ?? this.waitTimer,
  waitTimerStartedAt: waitTimerStartedAt != null ? waitTimerStartedAt() : this.waitTimerStartedAt,
  currentUserCanApprove: currentUserCanApprove ?? this.currentUserCanApprove,
  reviewers: reviewers ?? this.reviewers,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PendingDeployment &&
          environment == other.environment &&
          waitTimer == other.waitTimer &&
          waitTimerStartedAt == other.waitTimerStartedAt &&
          currentUserCanApprove == other.currentUserCanApprove &&
          listEquals(reviewers, other.reviewers); } 
@override int get hashCode { return Object.hash(environment, waitTimer, waitTimerStartedAt, currentUserCanApprove, Object.hashAll(reviewers)); } 
@override String toString() { return 'PendingDeployment(environment: $environment, waitTimer: $waitTimer, waitTimerStartedAt: $waitTimerStartedAt, currentUserCanApprove: $currentUserCanApprove, reviewers: $reviewers)'; } 
 }
