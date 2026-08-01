// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The customer submitted reason for why they canceled, if the subscription was canceled explicitly by the user.
@immutable final class CancellationDetailsFeedback {const CancellationDetailsFeedback._(this.value);

factory CancellationDetailsFeedback.fromJson(String json) { return switch (json) {
  'customer_service' => customerService,
  'low_quality' => lowQuality,
  'missing_features' => missingFeatures,
  'other' => $other,
  'switched_service' => switchedService,
  'too_complex' => tooComplex,
  'too_expensive' => tooExpensive,
  'unused' => unused,
  _ => CancellationDetailsFeedback._(json),
}; }

static const CancellationDetailsFeedback customerService = CancellationDetailsFeedback._('customer_service');

static const CancellationDetailsFeedback lowQuality = CancellationDetailsFeedback._('low_quality');

static const CancellationDetailsFeedback missingFeatures = CancellationDetailsFeedback._('missing_features');

static const CancellationDetailsFeedback $other = CancellationDetailsFeedback._('other');

static const CancellationDetailsFeedback switchedService = CancellationDetailsFeedback._('switched_service');

static const CancellationDetailsFeedback tooComplex = CancellationDetailsFeedback._('too_complex');

static const CancellationDetailsFeedback tooExpensive = CancellationDetailsFeedback._('too_expensive');

static const CancellationDetailsFeedback unused = CancellationDetailsFeedback._('unused');

static const List<CancellationDetailsFeedback> values = [customerService, lowQuality, missingFeatures, $other, switchedService, tooComplex, tooExpensive, unused];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CancellationDetailsFeedback && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CancellationDetailsFeedback($value)'; } 
 }
/// Why this subscription was canceled.
@immutable final class CancellationDetailsReason {const CancellationDetailsReason._(this.value);

factory CancellationDetailsReason.fromJson(String json) { return switch (json) {
  'cancellation_requested' => cancellationRequested,
  'payment_disputed' => paymentDisputed,
  'payment_failed' => paymentFailed,
  _ => CancellationDetailsReason._(json),
}; }

static const CancellationDetailsReason cancellationRequested = CancellationDetailsReason._('cancellation_requested');

static const CancellationDetailsReason paymentDisputed = CancellationDetailsReason._('payment_disputed');

static const CancellationDetailsReason paymentFailed = CancellationDetailsReason._('payment_failed');

static const List<CancellationDetailsReason> values = [cancellationRequested, paymentDisputed, paymentFailed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CancellationDetailsReason && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CancellationDetailsReason($value)'; } 
 }
/// 
@immutable final class CancellationDetails {const CancellationDetails({this.comment = const Omittable.absent(), this.feedback = const Omittable.absent(), this.reason = const Omittable.absent(), });

factory CancellationDetails.fromJson(Map<String, dynamic> json) { return CancellationDetails(
  comment: json.containsKey('comment') ? Omittable(json['comment'] as String?) : const Omittable.absent(),
  feedback: json.containsKey('feedback') ? Omittable(json['feedback'] != null ? CancellationDetailsFeedback.fromJson(json['feedback'] as String) : null) : const Omittable.absent(),
  reason: json.containsKey('reason') ? Omittable(json['reason'] != null ? CancellationDetailsReason.fromJson(json['reason'] as String) : null) : const Omittable.absent(),
); }

/// Additional comments about why the user canceled the subscription, if the subscription was canceled explicitly by the user.
final Omittable<String?> comment;

/// The customer submitted reason for why they canceled, if the subscription was canceled explicitly by the user.
final Omittable<CancellationDetailsFeedback?> feedback;

/// Why this subscription was canceled.
final Omittable<CancellationDetailsReason?> reason;

Map<String, dynamic> toJson() { return {
  if (comment.isPresent) 'comment': comment.value,
  if (feedback.isPresent) 'feedback': feedback.value?.toJson(),
  if (reason.isPresent) 'reason': reason.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'comment', 'feedback', 'reason'}.contains(key)); } 
CancellationDetails copyWith({Omittable<String?>? comment, Omittable<CancellationDetailsFeedback?>? feedback, Omittable<CancellationDetailsReason?>? reason, }) { return CancellationDetails(
  comment: comment ?? this.comment,
  feedback: feedback ?? this.feedback,
  reason: reason ?? this.reason,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CancellationDetails &&
          comment == other.comment &&
          feedback == other.feedback &&
          reason == other.reason; } 
@override int get hashCode { return Object.hash(comment, feedback, reason); } 
@override String toString() { return 'CancellationDetails(comment: $comment, feedback: $feedback, reason: $reason)'; } 
 }
