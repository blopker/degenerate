// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookDeploymentReviewRejectedWorkflowJobRuns {const WebhookDeploymentReviewRejectedWorkflowJobRuns({this.conclusion, this.createdAt, this.environment, this.htmlUrl, this.id, this.name, this.status, this.updatedAt, });

factory WebhookDeploymentReviewRejectedWorkflowJobRuns.fromJson(Map<String, dynamic> json) { return WebhookDeploymentReviewRejectedWorkflowJobRuns(
  conclusion: json['conclusion'] as String?,
  createdAt: json['created_at'] as String?,
  environment: json['environment'] as String?,
  htmlUrl: json['html_url'] as String?,
  id: json['id'] != null ? (json['id'] as num).toInt() : null,
  name: json['name'] as String?,
  status: json['status'] as String?,
  updatedAt: json['updated_at'] as String?,
); }

final String? conclusion;

final String? createdAt;

final String? environment;

final String? htmlUrl;

final int? id;

final String? name;

final String? status;

final String? updatedAt;

Map<String, dynamic> toJson() { return {
  'conclusion': ?conclusion,
  'created_at': ?createdAt,
  'environment': ?environment,
  'html_url': ?htmlUrl,
  'id': ?id,
  'name': ?name,
  'status': ?status,
  'updated_at': ?updatedAt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'conclusion', 'created_at', 'environment', 'html_url', 'id', 'name', 'status', 'updated_at'}.contains(key)); } 
WebhookDeploymentReviewRejectedWorkflowJobRuns copyWith({String? Function()? conclusion, String Function()? createdAt, String Function()? environment, String Function()? htmlUrl, int Function()? id, String? Function()? name, String Function()? status, String Function()? updatedAt, }) { return WebhookDeploymentReviewRejectedWorkflowJobRuns(
  conclusion: conclusion != null ? conclusion() : this.conclusion,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  environment: environment != null ? environment() : this.environment,
  htmlUrl: htmlUrl != null ? htmlUrl() : this.htmlUrl,
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
  status: status != null ? status() : this.status,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookDeploymentReviewRejectedWorkflowJobRuns &&
          conclusion == other.conclusion &&
          createdAt == other.createdAt &&
          environment == other.environment &&
          htmlUrl == other.htmlUrl &&
          id == other.id &&
          name == other.name &&
          status == other.status &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(conclusion, createdAt, environment, htmlUrl, id, name, status, updatedAt); } 
@override String toString() { return 'WebhookDeploymentReviewRejectedWorkflowJobRuns(conclusion: $conclusion, createdAt: $createdAt, environment: $environment, htmlUrl: $htmlUrl, id: $id, name: $name, status: $status, updatedAt: $updatedAt)'; } 
 }
