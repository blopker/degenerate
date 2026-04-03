// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Represents a 'pull_request_title' secret scanning location type. This location type shows that a secret was detected in the title of a pull request.
@immutable final class SecretScanningLocationPullRequestTitle {const SecretScanningLocationPullRequestTitle({required this.pullRequestTitleUrl});

factory SecretScanningLocationPullRequestTitle.fromJson(Map<String, dynamic> json) { return SecretScanningLocationPullRequestTitle(
  pullRequestTitleUrl: Uri.parse(json['pull_request_title_url'] as String),
); }

/// The API URL to get the pull request where the secret was detected.
final Uri pullRequestTitleUrl;

Map<String, dynamic> toJson() { return {
  'pull_request_title_url': pullRequestTitleUrl.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('pull_request_title_url') && json['pull_request_title_url'] is String; } 
SecretScanningLocationPullRequestTitle copyWith({Uri? pullRequestTitleUrl}) { return SecretScanningLocationPullRequestTitle(
  pullRequestTitleUrl: pullRequestTitleUrl ?? this.pullRequestTitleUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecretScanningLocationPullRequestTitle &&
          pullRequestTitleUrl == other.pullRequestTitleUrl; } 
@override int get hashCode { return pullRequestTitleUrl.hashCode; } 
@override String toString() { return 'SecretScanningLocationPullRequestTitle(pullRequestTitleUrl: $pullRequestTitleUrl)'; } 
 }
