// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secret_scanning_location_details.dart';/// The location type. Because secrets may be found in different types of resources (ie. code, comments, issues, pull requests, discussions), this field identifies the type of resource where the secret was found.
@immutable final class SecretScanningLocationType {const SecretScanningLocationType._(this.value);

factory SecretScanningLocationType.fromJson(String json) { return switch (json) {
  'commit' => commit,
  'wiki_commit' => wikiCommit,
  'issue_title' => issueTitle,
  'issue_body' => issueBody,
  'issue_comment' => issueComment,
  'discussion_title' => discussionTitle,
  'discussion_body' => discussionBody,
  'discussion_comment' => discussionComment,
  'pull_request_title' => pullRequestTitle,
  'pull_request_body' => pullRequestBody,
  'pull_request_comment' => pullRequestComment,
  'pull_request_review' => pullRequestReview,
  'pull_request_review_comment' => pullRequestReviewComment,
  _ => SecretScanningLocationType._(json),
}; }

static const SecretScanningLocationType commit = SecretScanningLocationType._('commit');

static const SecretScanningLocationType wikiCommit = SecretScanningLocationType._('wiki_commit');

static const SecretScanningLocationType issueTitle = SecretScanningLocationType._('issue_title');

static const SecretScanningLocationType issueBody = SecretScanningLocationType._('issue_body');

static const SecretScanningLocationType issueComment = SecretScanningLocationType._('issue_comment');

static const SecretScanningLocationType discussionTitle = SecretScanningLocationType._('discussion_title');

static const SecretScanningLocationType discussionBody = SecretScanningLocationType._('discussion_body');

static const SecretScanningLocationType discussionComment = SecretScanningLocationType._('discussion_comment');

static const SecretScanningLocationType pullRequestTitle = SecretScanningLocationType._('pull_request_title');

static const SecretScanningLocationType pullRequestBody = SecretScanningLocationType._('pull_request_body');

static const SecretScanningLocationType pullRequestComment = SecretScanningLocationType._('pull_request_comment');

static const SecretScanningLocationType pullRequestReview = SecretScanningLocationType._('pull_request_review');

static const SecretScanningLocationType pullRequestReviewComment = SecretScanningLocationType._('pull_request_review_comment');

static const List<SecretScanningLocationType> values = [commit, wikiCommit, issueTitle, issueBody, issueComment, discussionTitle, discussionBody, discussionComment, pullRequestTitle, pullRequestBody, pullRequestComment, pullRequestReview, pullRequestReviewComment];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningLocationType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SecretScanningLocationType($value)'; } 
 }
@immutable final class SecretScanningLocation {const SecretScanningLocation({this.type, this.details, });

factory SecretScanningLocation.fromJson(Map<String, dynamic> json) { return SecretScanningLocation(
  type: json['type'] != null ? SecretScanningLocationType.fromJson(json['type'] as String) : null,
  details: json['details'] != null ? SecretScanningLocationDetails.fromJson(json['details']) : null,
); }

/// The location type. Because secrets may be found in different types of resources (ie. code, comments, issues, pull requests, discussions), this field identifies the type of resource where the secret was found.
final SecretScanningLocationType? type;

final SecretScanningLocationDetails? details;

Map<String, dynamic> toJson() { return {
  if (type != null) 'type': type?.toJson(),
  if (details != null) 'details': details?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'type', 'details'}.contains(key)); } 
SecretScanningLocation copyWith({SecretScanningLocationType Function()? type, SecretScanningLocationDetails Function()? details, }) { return SecretScanningLocation(
  type: type != null ? type() : this.type,
  details: details != null ? details() : this.details,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecretScanningLocation &&
          type == other.type &&
          details == other.details; } 
@override int get hashCode { return Object.hash(type, details); } 
@override String toString() { return 'SecretScanningLocation(type: $type, details: $details)'; } 
 }
