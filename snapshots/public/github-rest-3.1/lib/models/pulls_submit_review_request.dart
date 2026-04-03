// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The review action you want to perform. The review actions include: `APPROVE`, `REQUEST_CHANGES`, or `COMMENT`. When you leave this blank, the API returns _HTTP 422 (Unrecognizable entity)_ and sets the review action state to `PENDING`, which means you will need to re-submit the pull request review using a review action.
@immutable final class PullsSubmitReviewRequestEvent {const PullsSubmitReviewRequestEvent._(this.value);

factory PullsSubmitReviewRequestEvent.fromJson(String json) { return switch (json) {
  'APPROVE' => approve,
  'REQUEST_CHANGES' => requestChanges,
  'COMMENT' => comment,
  _ => PullsSubmitReviewRequestEvent._(json),
}; }

static const PullsSubmitReviewRequestEvent approve = PullsSubmitReviewRequestEvent._('APPROVE');

static const PullsSubmitReviewRequestEvent requestChanges = PullsSubmitReviewRequestEvent._('REQUEST_CHANGES');

static const PullsSubmitReviewRequestEvent comment = PullsSubmitReviewRequestEvent._('COMMENT');

static const List<PullsSubmitReviewRequestEvent> values = [approve, requestChanges, comment];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsSubmitReviewRequestEvent && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PullsSubmitReviewRequestEvent($value)'; } 
 }
@immutable final class PullsSubmitReviewRequest {const PullsSubmitReviewRequest({required this.event, this.body, });

factory PullsSubmitReviewRequest.fromJson(Map<String, dynamic> json) { return PullsSubmitReviewRequest(
  body: json['body'] as String?,
  event: PullsSubmitReviewRequestEvent.fromJson(json['event'] as String),
); }

/// The body text of the pull request review
final String? body;

/// The review action you want to perform. The review actions include: `APPROVE`, `REQUEST_CHANGES`, or `COMMENT`. When you leave this blank, the API returns _HTTP 422 (Unrecognizable entity)_ and sets the review action state to `PENDING`, which means you will need to re-submit the pull request review using a review action.
final PullsSubmitReviewRequestEvent event;

Map<String, dynamic> toJson() { return {
  'body': ?body,
  'event': event.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('event'); } 
PullsSubmitReviewRequest copyWith({String Function()? body, PullsSubmitReviewRequestEvent? event, }) { return PullsSubmitReviewRequest(
  body: body != null ? body() : this.body,
  event: event ?? this.event,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PullsSubmitReviewRequest &&
          body == other.body &&
          event == other.event; } 
@override int get hashCode { return Object.hash(body, event); } 
@override String toString() { return 'PullsSubmitReviewRequest(body: $body, event: $event)'; } 
 }
