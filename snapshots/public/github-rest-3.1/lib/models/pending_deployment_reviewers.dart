// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'deployment_reviewer_type.dart';import 'pending_deployment_reviewers_reviewer.dart';import 'simple_user.dart';import 'team.dart';final class PendingDeploymentReviewers {const PendingDeploymentReviewers({this.type, this.reviewer, });

factory PendingDeploymentReviewers.fromJson(Map<String, dynamic> json) { return PendingDeploymentReviewers(
  type: json['type'] != null ? DeploymentReviewerType.fromJson(json['type'] as String) : null,
  reviewer: json['reviewer'] != null ? OneOf2.parse(json['reviewer'], fromA: (v) => SimpleUser.fromJson(v as Map<String, dynamic>), fromB: (v) => Team.fromJson(v as Map<String, dynamic>),) : null,
); }

/// The type of reviewer.
final DeploymentReviewerType? type;

final PendingDeploymentReviewersReviewer? reviewer;

Map<String, dynamic> toJson() { return {
  if (type != null) 'type': type?.toJson(),
  if (reviewer != null) 'reviewer': reviewer?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'type', 'reviewer'}.contains(key)); } 
PendingDeploymentReviewers copyWith({DeploymentReviewerType Function()? type, PendingDeploymentReviewersReviewer Function()? reviewer, }) { return PendingDeploymentReviewers(
  type: type != null ? type() : this.type,
  reviewer: reviewer != null ? reviewer() : this.reviewer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PendingDeploymentReviewers &&
          type == other.type &&
          reviewer == other.reviewer; } 
@override int get hashCode { return Object.hash(type, reviewer); } 
@override String toString() { return 'PendingDeploymentReviewers(type: $type, reviewer: $reviewer)'; } 
 }
