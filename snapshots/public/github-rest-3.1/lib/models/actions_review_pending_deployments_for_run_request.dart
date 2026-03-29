// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Whether to approve or reject deployment to the specified environments.
final class ActionsReviewPendingDeploymentsForRunRequestState {const ActionsReviewPendingDeploymentsForRunRequestState._(this.value);

factory ActionsReviewPendingDeploymentsForRunRequestState.fromJson(String json) { return switch (json) {
  'approved' => approved,
  'rejected' => rejected,
  _ => ActionsReviewPendingDeploymentsForRunRequestState._(json),
}; }

static const ActionsReviewPendingDeploymentsForRunRequestState approved = ActionsReviewPendingDeploymentsForRunRequestState._('approved');

static const ActionsReviewPendingDeploymentsForRunRequestState rejected = ActionsReviewPendingDeploymentsForRunRequestState._('rejected');

static const List<ActionsReviewPendingDeploymentsForRunRequestState> values = [approved, rejected];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsReviewPendingDeploymentsForRunRequestState && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ActionsReviewPendingDeploymentsForRunRequestState($value)'; } 
 }
final class ActionsReviewPendingDeploymentsForRunRequest {const ActionsReviewPendingDeploymentsForRunRequest({required this.environmentIds, required this.state, required this.comment, });

factory ActionsReviewPendingDeploymentsForRunRequest.fromJson(Map<String, dynamic> json) { return ActionsReviewPendingDeploymentsForRunRequest(
  environmentIds: (json['environment_ids'] as List<dynamic>).map((e) => (e as num).toInt()).toList(),
  state: ActionsReviewPendingDeploymentsForRunRequestState.fromJson(json['state'] as String),
  comment: json['comment'] as String,
); }

/// The list of environment ids to approve or reject
final List<int> environmentIds;

/// Whether to approve or reject deployment to the specified environments.
final ActionsReviewPendingDeploymentsForRunRequestState state;

/// A comment to accompany the deployment review
final String comment;

Map<String, dynamic> toJson() { return {
  'environment_ids': environmentIds,
  'state': state.toJson(),
  'comment': comment,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('environment_ids') &&
      json.containsKey('state') &&
      json.containsKey('comment') && json['comment'] is String; } 
ActionsReviewPendingDeploymentsForRunRequest copyWith({List<int>? environmentIds, ActionsReviewPendingDeploymentsForRunRequestState? state, String? comment, }) { return ActionsReviewPendingDeploymentsForRunRequest(
  environmentIds: environmentIds ?? this.environmentIds,
  state: state ?? this.state,
  comment: comment ?? this.comment,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsReviewPendingDeploymentsForRunRequest &&
          listEquals(environmentIds, other.environmentIds) &&
          state == other.state &&
          comment == other.comment; } 
@override int get hashCode { return Object.hash(Object.hashAll(environmentIds), state, comment); } 
@override String toString() { return 'ActionsReviewPendingDeploymentsForRunRequest(environmentIds: $environmentIds, state: $state, comment: $comment)'; } 
 }
