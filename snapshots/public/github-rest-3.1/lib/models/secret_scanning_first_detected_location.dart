// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secret_scanning_location_commit.dart';import 'secret_scanning_location_discussion_body.dart';import 'secret_scanning_location_discussion_comment.dart';import 'secret_scanning_location_discussion_title.dart';import 'secret_scanning_location_issue_body.dart';import 'secret_scanning_location_issue_comment.dart';import 'secret_scanning_location_issue_title.dart';import 'secret_scanning_location_pull_request_body.dart';import 'secret_scanning_location_pull_request_comment.dart';import 'secret_scanning_location_pull_request_review.dart';import 'secret_scanning_location_pull_request_review_comment.dart';import 'secret_scanning_location_pull_request_title.dart';import 'secret_scanning_location_wiki_commit.dart';/// A value that is one of: `SecretScanningLocationCommit`, `SecretScanningLocationWikiCommit`, `SecretScanningLocationIssueTitle`, `SecretScanningLocationIssueBody`, `SecretScanningLocationIssueComment`, `SecretScanningLocationDiscussionTitle`, `SecretScanningLocationDiscussionBody`, `SecretScanningLocationDiscussionComment`, `SecretScanningLocationPullRequestTitle`, `SecretScanningLocationPullRequestBody`, `SecretScanningLocationPullRequestComment`, `SecretScanningLocationPullRequestReview`, `SecretScanningLocationPullRequestReviewComment`.
sealed class SecretScanningFirstDetectedLocation {const SecretScanningFirstDetectedLocation();

factory SecretScanningFirstDetectedLocation.fromJson(Map<String, dynamic> json) {   if (SecretScanningLocationCommit.canParse(json)) {
    return SecretScanningFirstDetectedLocationSecretScanningLocationCommit(SecretScanningLocationCommit.fromJson(json));
  }
  if (SecretScanningLocationWikiCommit.canParse(json)) {
    return SecretScanningFirstDetectedLocationSecretScanningLocationWikiCommit(SecretScanningLocationWikiCommit.fromJson(json));
  }
  if (SecretScanningLocationIssueTitle.canParse(json)) {
    return SecretScanningFirstDetectedLocationSecretScanningLocationIssueTitle(SecretScanningLocationIssueTitle.fromJson(json));
  }
  if (SecretScanningLocationIssueBody.canParse(json)) {
    return SecretScanningFirstDetectedLocationSecretScanningLocationIssueBody(SecretScanningLocationIssueBody.fromJson(json));
  }
  if (SecretScanningLocationIssueComment.canParse(json)) {
    return SecretScanningFirstDetectedLocationSecretScanningLocationIssueComment(SecretScanningLocationIssueComment.fromJson(json));
  }
  if (SecretScanningLocationDiscussionTitle.canParse(json)) {
    return SecretScanningFirstDetectedLocationSecretScanningLocationDiscussionTitle(SecretScanningLocationDiscussionTitle.fromJson(json));
  }
  if (SecretScanningLocationDiscussionBody.canParse(json)) {
    return SecretScanningFirstDetectedLocationSecretScanningLocationDiscussionBody(SecretScanningLocationDiscussionBody.fromJson(json));
  }
  if (SecretScanningLocationDiscussionComment.canParse(json)) {
    return SecretScanningFirstDetectedLocationSecretScanningLocationDiscussionComment(SecretScanningLocationDiscussionComment.fromJson(json));
  }
  if (SecretScanningLocationPullRequestTitle.canParse(json)) {
    return SecretScanningFirstDetectedLocationSecretScanningLocationPullRequestTitle(SecretScanningLocationPullRequestTitle.fromJson(json));
  }
  if (SecretScanningLocationPullRequestBody.canParse(json)) {
    return SecretScanningFirstDetectedLocationSecretScanningLocationPullRequestBody(SecretScanningLocationPullRequestBody.fromJson(json));
  }
  if (SecretScanningLocationPullRequestComment.canParse(json)) {
    return SecretScanningFirstDetectedLocationSecretScanningLocationPullRequestComment(SecretScanningLocationPullRequestComment.fromJson(json));
  }
  if (SecretScanningLocationPullRequestReview.canParse(json)) {
    return SecretScanningFirstDetectedLocationSecretScanningLocationPullRequestReview(SecretScanningLocationPullRequestReview.fromJson(json));
  }
  if (SecretScanningLocationPullRequestReviewComment.canParse(json)) {
    return SecretScanningFirstDetectedLocationSecretScanningLocationPullRequestReviewComment(SecretScanningLocationPullRequestReviewComment.fromJson(json));
  }
  return SecretScanningFirstDetectedLocation$Unknown(json); }

/// The underlying raw value.
dynamic get value;
dynamic toJson() { return value; } 
 }
@immutable final class SecretScanningFirstDetectedLocationSecretScanningLocationCommit extends SecretScanningFirstDetectedLocation {const SecretScanningFirstDetectedLocationSecretScanningLocationCommit(this._value);

final SecretScanningLocationCommit _value;

@override SecretScanningLocationCommit get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningFirstDetectedLocationSecretScanningLocationCommit && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'SecretScanningFirstDetectedLocation.secretScanningLocationCommit($_value)'; } 
 }
@immutable final class SecretScanningFirstDetectedLocationSecretScanningLocationWikiCommit extends SecretScanningFirstDetectedLocation {const SecretScanningFirstDetectedLocationSecretScanningLocationWikiCommit(this._value);

final SecretScanningLocationWikiCommit _value;

@override SecretScanningLocationWikiCommit get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningFirstDetectedLocationSecretScanningLocationWikiCommit && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'SecretScanningFirstDetectedLocation.secretScanningLocationWikiCommit($_value)'; } 
 }
@immutable final class SecretScanningFirstDetectedLocationSecretScanningLocationIssueTitle extends SecretScanningFirstDetectedLocation {const SecretScanningFirstDetectedLocationSecretScanningLocationIssueTitle(this._value);

final SecretScanningLocationIssueTitle _value;

@override SecretScanningLocationIssueTitle get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningFirstDetectedLocationSecretScanningLocationIssueTitle && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'SecretScanningFirstDetectedLocation.secretScanningLocationIssueTitle($_value)'; } 
 }
@immutable final class SecretScanningFirstDetectedLocationSecretScanningLocationIssueBody extends SecretScanningFirstDetectedLocation {const SecretScanningFirstDetectedLocationSecretScanningLocationIssueBody(this._value);

final SecretScanningLocationIssueBody _value;

@override SecretScanningLocationIssueBody get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningFirstDetectedLocationSecretScanningLocationIssueBody && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'SecretScanningFirstDetectedLocation.secretScanningLocationIssueBody($_value)'; } 
 }
@immutable final class SecretScanningFirstDetectedLocationSecretScanningLocationIssueComment extends SecretScanningFirstDetectedLocation {const SecretScanningFirstDetectedLocationSecretScanningLocationIssueComment(this._value);

final SecretScanningLocationIssueComment _value;

@override SecretScanningLocationIssueComment get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningFirstDetectedLocationSecretScanningLocationIssueComment && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'SecretScanningFirstDetectedLocation.secretScanningLocationIssueComment($_value)'; } 
 }
@immutable final class SecretScanningFirstDetectedLocationSecretScanningLocationDiscussionTitle extends SecretScanningFirstDetectedLocation {const SecretScanningFirstDetectedLocationSecretScanningLocationDiscussionTitle(this._value);

final SecretScanningLocationDiscussionTitle _value;

@override SecretScanningLocationDiscussionTitle get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningFirstDetectedLocationSecretScanningLocationDiscussionTitle && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'SecretScanningFirstDetectedLocation.secretScanningLocationDiscussionTitle($_value)'; } 
 }
@immutable final class SecretScanningFirstDetectedLocationSecretScanningLocationDiscussionBody extends SecretScanningFirstDetectedLocation {const SecretScanningFirstDetectedLocationSecretScanningLocationDiscussionBody(this._value);

final SecretScanningLocationDiscussionBody _value;

@override SecretScanningLocationDiscussionBody get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningFirstDetectedLocationSecretScanningLocationDiscussionBody && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'SecretScanningFirstDetectedLocation.secretScanningLocationDiscussionBody($_value)'; } 
 }
@immutable final class SecretScanningFirstDetectedLocationSecretScanningLocationDiscussionComment extends SecretScanningFirstDetectedLocation {const SecretScanningFirstDetectedLocationSecretScanningLocationDiscussionComment(this._value);

final SecretScanningLocationDiscussionComment _value;

@override SecretScanningLocationDiscussionComment get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningFirstDetectedLocationSecretScanningLocationDiscussionComment && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'SecretScanningFirstDetectedLocation.secretScanningLocationDiscussionComment($_value)'; } 
 }
@immutable final class SecretScanningFirstDetectedLocationSecretScanningLocationPullRequestTitle extends SecretScanningFirstDetectedLocation {const SecretScanningFirstDetectedLocationSecretScanningLocationPullRequestTitle(this._value);

final SecretScanningLocationPullRequestTitle _value;

@override SecretScanningLocationPullRequestTitle get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningFirstDetectedLocationSecretScanningLocationPullRequestTitle && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'SecretScanningFirstDetectedLocation.secretScanningLocationPullRequestTitle($_value)'; } 
 }
@immutable final class SecretScanningFirstDetectedLocationSecretScanningLocationPullRequestBody extends SecretScanningFirstDetectedLocation {const SecretScanningFirstDetectedLocationSecretScanningLocationPullRequestBody(this._value);

final SecretScanningLocationPullRequestBody _value;

@override SecretScanningLocationPullRequestBody get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningFirstDetectedLocationSecretScanningLocationPullRequestBody && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'SecretScanningFirstDetectedLocation.secretScanningLocationPullRequestBody($_value)'; } 
 }
@immutable final class SecretScanningFirstDetectedLocationSecretScanningLocationPullRequestComment extends SecretScanningFirstDetectedLocation {const SecretScanningFirstDetectedLocationSecretScanningLocationPullRequestComment(this._value);

final SecretScanningLocationPullRequestComment _value;

@override SecretScanningLocationPullRequestComment get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningFirstDetectedLocationSecretScanningLocationPullRequestComment && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'SecretScanningFirstDetectedLocation.secretScanningLocationPullRequestComment($_value)'; } 
 }
@immutable final class SecretScanningFirstDetectedLocationSecretScanningLocationPullRequestReview extends SecretScanningFirstDetectedLocation {const SecretScanningFirstDetectedLocationSecretScanningLocationPullRequestReview(this._value);

final SecretScanningLocationPullRequestReview _value;

@override SecretScanningLocationPullRequestReview get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningFirstDetectedLocationSecretScanningLocationPullRequestReview && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'SecretScanningFirstDetectedLocation.secretScanningLocationPullRequestReview($_value)'; } 
 }
@immutable final class SecretScanningFirstDetectedLocationSecretScanningLocationPullRequestReviewComment extends SecretScanningFirstDetectedLocation {const SecretScanningFirstDetectedLocationSecretScanningLocationPullRequestReviewComment(this._value);

final SecretScanningLocationPullRequestReviewComment _value;

@override SecretScanningLocationPullRequestReviewComment get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningFirstDetectedLocationSecretScanningLocationPullRequestReviewComment && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'SecretScanningFirstDetectedLocation.secretScanningLocationPullRequestReviewComment($_value)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
@immutable final class SecretScanningFirstDetectedLocation$Unknown extends SecretScanningFirstDetectedLocation {const SecretScanningFirstDetectedLocation$Unknown(this._value);

final dynamic _value;

@override dynamic get value { return _value ?? ''; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningFirstDetectedLocation$Unknown && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'SecretScanningFirstDetectedLocation.unknown($_value)'; } 
 }
