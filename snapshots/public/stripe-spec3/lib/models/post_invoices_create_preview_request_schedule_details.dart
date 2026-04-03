// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_invoices_create_preview_request_schedule_details_billing_mode.dart';import 'post_invoices_create_preview_request_schedule_details_phases.dart';@immutable final class PostInvoicesCreatePreviewRequestScheduleDetailsEndBehavior {const PostInvoicesCreatePreviewRequestScheduleDetailsEndBehavior._(this.value);

factory PostInvoicesCreatePreviewRequestScheduleDetailsEndBehavior.fromJson(String json) { return switch (json) {
  'cancel' => cancel,
  'release' => release,
  _ => PostInvoicesCreatePreviewRequestScheduleDetailsEndBehavior._(json),
}; }

static const PostInvoicesCreatePreviewRequestScheduleDetailsEndBehavior cancel = PostInvoicesCreatePreviewRequestScheduleDetailsEndBehavior._('cancel');

static const PostInvoicesCreatePreviewRequestScheduleDetailsEndBehavior release = PostInvoicesCreatePreviewRequestScheduleDetailsEndBehavior._('release');

static const List<PostInvoicesCreatePreviewRequestScheduleDetailsEndBehavior> values = [cancel, release];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestScheduleDetailsEndBehavior && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestScheduleDetailsEndBehavior($value)'; } 
 }
@immutable final class PostInvoicesCreatePreviewRequestScheduleDetailsProrationBehavior {const PostInvoicesCreatePreviewRequestScheduleDetailsProrationBehavior._(this.value);

factory PostInvoicesCreatePreviewRequestScheduleDetailsProrationBehavior.fromJson(String json) { return switch (json) {
  'always_invoice' => alwaysInvoice,
  'create_prorations' => createProrations,
  'none' => none,
  _ => PostInvoicesCreatePreviewRequestScheduleDetailsProrationBehavior._(json),
}; }

static const PostInvoicesCreatePreviewRequestScheduleDetailsProrationBehavior alwaysInvoice = PostInvoicesCreatePreviewRequestScheduleDetailsProrationBehavior._('always_invoice');

static const PostInvoicesCreatePreviewRequestScheduleDetailsProrationBehavior createProrations = PostInvoicesCreatePreviewRequestScheduleDetailsProrationBehavior._('create_prorations');

static const PostInvoicesCreatePreviewRequestScheduleDetailsProrationBehavior none = PostInvoicesCreatePreviewRequestScheduleDetailsProrationBehavior._('none');

static const List<PostInvoicesCreatePreviewRequestScheduleDetailsProrationBehavior> values = [alwaysInvoice, createProrations, none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestScheduleDetailsProrationBehavior && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestScheduleDetailsProrationBehavior($value)'; } 
 }
/// The schedule creation or modification params to apply as a preview. Cannot be used with `subscription` or `subscription_` prefixed fields.
@immutable final class PostInvoicesCreatePreviewRequestScheduleDetails {const PostInvoicesCreatePreviewRequestScheduleDetails({this.billingMode, this.endBehavior, this.phases, this.prorationBehavior, });

factory PostInvoicesCreatePreviewRequestScheduleDetails.fromJson(Map<String, dynamic> json) { return PostInvoicesCreatePreviewRequestScheduleDetails(
  billingMode: json['billing_mode'] != null ? PostInvoicesCreatePreviewRequestScheduleDetailsBillingMode.fromJson(json['billing_mode'] as Map<String, dynamic>) : null,
  endBehavior: json['end_behavior'] != null ? PostInvoicesCreatePreviewRequestScheduleDetailsEndBehavior.fromJson(json['end_behavior'] as String) : null,
  phases: (json['phases'] as List<dynamic>?)?.map((e) => PostInvoicesCreatePreviewRequestScheduleDetailsPhases.fromJson(e as Map<String, dynamic>)).toList(),
  prorationBehavior: json['proration_behavior'] != null ? PostInvoicesCreatePreviewRequestScheduleDetailsProrationBehavior.fromJson(json['proration_behavior'] as String) : null,
); }

final PostInvoicesCreatePreviewRequestScheduleDetailsBillingMode? billingMode;

final PostInvoicesCreatePreviewRequestScheduleDetailsEndBehavior? endBehavior;

final List<PostInvoicesCreatePreviewRequestScheduleDetailsPhases>? phases;

final PostInvoicesCreatePreviewRequestScheduleDetailsProrationBehavior? prorationBehavior;

Map<String, dynamic> toJson() { return {
  if (billingMode != null) 'billing_mode': billingMode?.toJson(),
  if (endBehavior != null) 'end_behavior': endBehavior?.toJson(),
  if (phases != null) 'phases': phases?.map((e) => e.toJson()).toList(),
  if (prorationBehavior != null) 'proration_behavior': prorationBehavior?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'billing_mode', 'end_behavior', 'phases', 'proration_behavior'}.contains(key)); } 
PostInvoicesCreatePreviewRequestScheduleDetails copyWith({PostInvoicesCreatePreviewRequestScheduleDetailsBillingMode Function()? billingMode, PostInvoicesCreatePreviewRequestScheduleDetailsEndBehavior Function()? endBehavior, List<PostInvoicesCreatePreviewRequestScheduleDetailsPhases> Function()? phases, PostInvoicesCreatePreviewRequestScheduleDetailsProrationBehavior Function()? prorationBehavior, }) { return PostInvoicesCreatePreviewRequestScheduleDetails(
  billingMode: billingMode != null ? billingMode() : this.billingMode,
  endBehavior: endBehavior != null ? endBehavior() : this.endBehavior,
  phases: phases != null ? phases() : this.phases,
  prorationBehavior: prorationBehavior != null ? prorationBehavior() : this.prorationBehavior,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestScheduleDetails &&
          billingMode == other.billingMode &&
          endBehavior == other.endBehavior &&
          listEquals(phases, other.phases) &&
          prorationBehavior == other.prorationBehavior; } 
@override int get hashCode { return Object.hash(billingMode, endBehavior, Object.hashAll(phases ?? const []), prorationBehavior); } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestScheduleDetails(billingMode: $billingMode, endBehavior: $endBehavior, phases: $phases, prorationBehavior: $prorationBehavior)'; } 
 }
