// GENERATED CODE - DO NOT MODIFY BY HAND

import 'webhook_deployment_review_requested_reviewers_reviewer.dart';final class WebhookDeploymentReviewRequestedReviewersType {const WebhookDeploymentReviewRequestedReviewersType._(this.value);

factory WebhookDeploymentReviewRequestedReviewersType.fromJson(String json) { return switch (json) {
  'User' => user,
  'Team' => team,
  _ => WebhookDeploymentReviewRequestedReviewersType._(json),
}; }

static const WebhookDeploymentReviewRequestedReviewersType user = WebhookDeploymentReviewRequestedReviewersType._('User');

static const WebhookDeploymentReviewRequestedReviewersType team = WebhookDeploymentReviewRequestedReviewersType._('Team');

static const List<WebhookDeploymentReviewRequestedReviewersType> values = [user, team];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookDeploymentReviewRequestedReviewersType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookDeploymentReviewRequestedReviewersType($value)'; } 
 }
final class WebhookDeploymentReviewRequestedReviewers {const WebhookDeploymentReviewRequestedReviewers({this.reviewer, this.type, });

factory WebhookDeploymentReviewRequestedReviewers.fromJson(Map<String, dynamic> json) { return WebhookDeploymentReviewRequestedReviewers(
  reviewer: json['reviewer'] != null ? WebhookDeploymentReviewRequestedReviewersReviewer.fromJson(json['reviewer'] as Map<String, dynamic>) : null,
  type: json['type'] != null ? WebhookDeploymentReviewRequestedReviewersType.fromJson(json['type'] as String) : null,
); }

final WebhookDeploymentReviewRequestedReviewersReviewer? reviewer;

final WebhookDeploymentReviewRequestedReviewersType? type;

Map<String, dynamic> toJson() { return {
  if (reviewer != null) 'reviewer': reviewer?.toJson(),
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'reviewer', 'type'}.contains(key)); } 
WebhookDeploymentReviewRequestedReviewers copyWith({WebhookDeploymentReviewRequestedReviewersReviewer? Function()? reviewer, WebhookDeploymentReviewRequestedReviewersType Function()? type, }) { return WebhookDeploymentReviewRequestedReviewers(
  reviewer: reviewer != null ? reviewer() : this.reviewer,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookDeploymentReviewRequestedReviewers &&
          reviewer == other.reviewer &&
          type == other.type; } 
@override int get hashCode { return Object.hash(reviewer, type); } 
@override String toString() { return 'WebhookDeploymentReviewRequestedReviewers(reviewer: $reviewer, type: $type)'; } 
 }
