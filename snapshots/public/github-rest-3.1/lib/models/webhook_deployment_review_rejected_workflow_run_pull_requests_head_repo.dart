// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookDeploymentReviewRejectedWorkflowRunPullRequestsHeadRepo {const WebhookDeploymentReviewRejectedWorkflowRunPullRequestsHeadRepo({required this.id, required this.name, required this.url, });

factory WebhookDeploymentReviewRejectedWorkflowRunPullRequestsHeadRepo.fromJson(Map<String, dynamic> json) { return WebhookDeploymentReviewRejectedWorkflowRunPullRequestsHeadRepo(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  url: Uri.parse(json['url'] as String),
); }

final int id;

final String name;

final Uri url;

Map<String, dynamic> toJson() { return {
  'id': id,
  'name': name,
  'url': url.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('url') && json['url'] is String; } 
WebhookDeploymentReviewRejectedWorkflowRunPullRequestsHeadRepo copyWith({int? id, String? name, Uri? url, }) { return WebhookDeploymentReviewRejectedWorkflowRunPullRequestsHeadRepo(
  id: id ?? this.id,
  name: name ?? this.name,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookDeploymentReviewRejectedWorkflowRunPullRequestsHeadRepo &&
          id == other.id &&
          name == other.name &&
          url == other.url; } 
@override int get hashCode { return Object.hash(id, name, url); } 
@override String toString() { return 'WebhookDeploymentReviewRejectedWorkflowRunPullRequestsHeadRepo(id: $id, name: $name, url: $url)'; } 
 }
