// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'delete_subscriptions_subscription_exposed_id_request_cancellation_details_comment.dart';final class DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsFeedback {const DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsFeedback._(this.value);

factory DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsFeedback.fromJson(String json) { return switch (json) {
  '' => $empty,
  'customer_service' => customerService,
  'low_quality' => lowQuality,
  'missing_features' => missingFeatures,
  'other' => $other,
  'switched_service' => switchedService,
  'too_complex' => tooComplex,
  'too_expensive' => tooExpensive,
  'unused' => unused,
  _ => DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsFeedback._(json),
}; }

static const DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsFeedback $empty = DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsFeedback._('');

static const DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsFeedback customerService = DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsFeedback._('customer_service');

static const DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsFeedback lowQuality = DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsFeedback._('low_quality');

static const DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsFeedback missingFeatures = DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsFeedback._('missing_features');

static const DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsFeedback $other = DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsFeedback._('other');

static const DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsFeedback switchedService = DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsFeedback._('switched_service');

static const DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsFeedback tooComplex = DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsFeedback._('too_complex');

static const DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsFeedback tooExpensive = DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsFeedback._('too_expensive');

static const DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsFeedback unused = DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsFeedback._('unused');

static const List<DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsFeedback> values = [$empty, customerService, lowQuality, missingFeatures, $other, switchedService, tooComplex, tooExpensive, unused];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsFeedback && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsFeedback($value)'; } 
 }
/// Details about why this subscription was cancelled
final class DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetails {const DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetails({this.comment, this.feedback, });

factory DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetails.fromJson(Map<String, dynamic> json) { return DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetails(
  comment: json['comment'] != null ? OneOf2.parse(json['comment'], fromA: (v) => v as String, fromB: (v) => DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2.fromJson(v as String),) : null,
  feedback: json['feedback'] != null ? DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsFeedback.fromJson(json['feedback'] as String) : null,
); }

final DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsComment? comment;

final DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsFeedback? feedback;

Map<String, dynamic> toJson() { return {
  if (comment != null) 'comment': comment?.toJson(),
  if (feedback != null) 'feedback': feedback?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetails copyWith({DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsComment Function()? comment, DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsFeedback Function()? feedback, }) { return DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetails(
  comment: comment != null ? comment() : this.comment,
  feedback: feedback != null ? feedback() : this.feedback,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetails &&
          comment == other.comment &&
          feedback == other.feedback; } 
@override int get hashCode { return Object.hash(comment, feedback); } 
@override String toString() { return 'DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetails(comment: $comment, feedback: $feedback)'; } 
 }
