// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'builds_created_on.dart';@immutable final class BuildsBuildResponsePullRequest {const BuildsBuildResponsePullRequest({this.createdOn, this.pullRequestUrl, });

factory BuildsBuildResponsePullRequest.fromJson(Map<String, dynamic> json) { return BuildsBuildResponsePullRequest(
  createdOn: json['created_on'] != null ? BuildsCreatedOn.fromJson(json['created_on'] as String) : null,
  pullRequestUrl: json['pull_request_url'] != null ? Uri.parse(json['pull_request_url'] as String) : null,
); }

final BuildsCreatedOn? createdOn;

final Uri? pullRequestUrl;

Map<String, dynamic> toJson() { return {
  if (createdOn != null) 'created_on': createdOn?.toJson(),
  if (pullRequestUrl != null) 'pull_request_url': pullRequestUrl?.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'created_on', 'pull_request_url'}.contains(key)); } 
BuildsBuildResponsePullRequest copyWith({BuildsCreatedOn Function()? createdOn, Uri Function()? pullRequestUrl, }) { return BuildsBuildResponsePullRequest(
  createdOn: createdOn != null ? createdOn() : this.createdOn,
  pullRequestUrl: pullRequestUrl != null ? pullRequestUrl() : this.pullRequestUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BuildsBuildResponsePullRequest &&
          createdOn == other.createdOn &&
          pullRequestUrl == other.pullRequestUrl; } 
@override int get hashCode { return Object.hash(createdOn, pullRequestUrl); } 
@override String toString() { return 'BuildsBuildResponsePullRequest(createdOn: $createdOn, pullRequestUrl: $pullRequestUrl)'; } 
 }
