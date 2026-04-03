// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookDeploymentReviewRequestedWorkflowJobRun {const WebhookDeploymentReviewRequestedWorkflowJobRun({required this.conclusion, required this.createdAt, required this.environment, required this.htmlUrl, required this.id, required this.name, required this.status, required this.updatedAt, });

factory WebhookDeploymentReviewRequestedWorkflowJobRun.fromJson(Map<String, dynamic> json) { return WebhookDeploymentReviewRequestedWorkflowJobRun(
  conclusion: json['conclusion'],
  createdAt: json['created_at'] as String,
  environment: json['environment'] as String,
  htmlUrl: json['html_url'] as String,
  id: (json['id'] as num).toInt(),
  name: json['name'] as String?,
  status: json['status'] as String,
  updatedAt: json['updated_at'] as String,
); }

final dynamic conclusion;

final String createdAt;

final String environment;

final String htmlUrl;

final int id;

final String? name;

final String status;

final String updatedAt;

Map<String, dynamic> toJson() { return {
  'conclusion': ?conclusion,
  'created_at': createdAt,
  'environment': environment,
  'html_url': htmlUrl,
  'id': id,
  'name': ?name,
  'status': status,
  'updated_at': updatedAt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('conclusion') &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('environment') && json['environment'] is String &&
      json.containsKey('html_url') && json['html_url'] is String &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('status') && json['status'] is String &&
      json.containsKey('updated_at') && json['updated_at'] is String; } 
WebhookDeploymentReviewRequestedWorkflowJobRun copyWith({dynamic Function()? conclusion, String? createdAt, String? environment, String? htmlUrl, int? id, String? Function()? name, String? status, String? updatedAt, }) { return WebhookDeploymentReviewRequestedWorkflowJobRun(
  conclusion: conclusion != null ? conclusion() : this.conclusion,
  createdAt: createdAt ?? this.createdAt,
  environment: environment ?? this.environment,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  id: id ?? this.id,
  name: name != null ? name() : this.name,
  status: status ?? this.status,
  updatedAt: updatedAt ?? this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookDeploymentReviewRequestedWorkflowJobRun &&
          conclusion == other.conclusion &&
          createdAt == other.createdAt &&
          environment == other.environment &&
          htmlUrl == other.htmlUrl &&
          id == other.id &&
          name == other.name &&
          status == other.status &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(conclusion, createdAt, environment, htmlUrl, id, name, status, updatedAt); } 
@override String toString() { return 'WebhookDeploymentReviewRequestedWorkflowJobRun(conclusion: $conclusion, createdAt: $createdAt, environment: $environment, htmlUrl: $htmlUrl, id: $id, name: $name, status: $status, updatedAt: $updatedAt)'; } 
 }
