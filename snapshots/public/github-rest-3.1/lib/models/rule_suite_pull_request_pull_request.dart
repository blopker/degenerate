// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rule_suite_pull_request_pull_request_reviews.dart';import 'rule_suite_pull_request_pull_request_user.dart';/// The pull request associated with the rule evaluation.
final class RuleSuitePullRequestPullRequest {const RuleSuitePullRequestPullRequest({this.id, this.number, this.user, this.reviews, });

factory RuleSuitePullRequestPullRequest.fromJson(Map<String, dynamic> json) { return RuleSuitePullRequestPullRequest(
  id: json['id'] != null ? (json['id'] as num).toInt() : null,
  number: json['number'] != null ? (json['number'] as num).toInt() : null,
  user: json['user'] != null ? RuleSuitePullRequestPullRequestUser.fromJson(json['user'] as Map<String, dynamic>) : null,
  reviews: (json['reviews'] as List<dynamic>?)?.map((e) => RuleSuitePullRequestPullRequestReviews.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The unique identifier of the pull request.
final int? id;

/// The number of the pull request.
final int? number;

/// The user who created the pull request.
final RuleSuitePullRequestPullRequestUser? user;

/// The reviews associated with the pull request.
final List<RuleSuitePullRequestPullRequestReviews>? reviews;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'number': ?number,
  if (user != null) 'user': user?.toJson(),
  if (reviews != null) 'reviews': reviews?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
RuleSuitePullRequestPullRequest copyWith({int Function()? id, int Function()? number, RuleSuitePullRequestPullRequestUser Function()? user, List<RuleSuitePullRequestPullRequestReviews> Function()? reviews, }) { return RuleSuitePullRequestPullRequest(
  id: id != null ? id() : this.id,
  number: number != null ? number() : this.number,
  user: user != null ? user() : this.user,
  reviews: reviews != null ? reviews() : this.reviews,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RuleSuitePullRequestPullRequest &&
          id == other.id &&
          number == other.number &&
          user == other.user &&
          listEquals(reviews, other.reviews); } 
@override int get hashCode { return Object.hash(id, number, user, Object.hashAll(reviews ?? const [])); } 
@override String toString() { return 'RuleSuitePullRequestPullRequest(id: $id, number: $number, user: $user, reviews: $reviews)'; } 
 }
