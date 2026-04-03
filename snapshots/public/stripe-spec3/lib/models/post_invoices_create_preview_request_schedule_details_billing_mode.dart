// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_invoices_create_preview_request_schedule_details_billing_mode_flexible.dart';@immutable final class PostInvoicesCreatePreviewRequestScheduleDetailsBillingModeType {const PostInvoicesCreatePreviewRequestScheduleDetailsBillingModeType._(this.value);

factory PostInvoicesCreatePreviewRequestScheduleDetailsBillingModeType.fromJson(String json) { return switch (json) {
  'classic' => classic,
  'flexible' => flexible,
  _ => PostInvoicesCreatePreviewRequestScheduleDetailsBillingModeType._(json),
}; }

static const PostInvoicesCreatePreviewRequestScheduleDetailsBillingModeType classic = PostInvoicesCreatePreviewRequestScheduleDetailsBillingModeType._('classic');

static const PostInvoicesCreatePreviewRequestScheduleDetailsBillingModeType flexible = PostInvoicesCreatePreviewRequestScheduleDetailsBillingModeType._('flexible');

static const List<PostInvoicesCreatePreviewRequestScheduleDetailsBillingModeType> values = [classic, flexible];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestScheduleDetailsBillingModeType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestScheduleDetailsBillingModeType($value)'; } 
 }
@immutable final class PostInvoicesCreatePreviewRequestScheduleDetailsBillingMode {const PostInvoicesCreatePreviewRequestScheduleDetailsBillingMode({required this.type, this.flexible, });

factory PostInvoicesCreatePreviewRequestScheduleDetailsBillingMode.fromJson(Map<String, dynamic> json) { return PostInvoicesCreatePreviewRequestScheduleDetailsBillingMode(
  flexible: json['flexible'] != null ? PostInvoicesCreatePreviewRequestScheduleDetailsBillingModeFlexible.fromJson(json['flexible'] as Map<String, dynamic>) : null,
  type: PostInvoicesCreatePreviewRequestScheduleDetailsBillingModeType.fromJson(json['type'] as String),
); }

final PostInvoicesCreatePreviewRequestScheduleDetailsBillingModeFlexible? flexible;

final PostInvoicesCreatePreviewRequestScheduleDetailsBillingModeType type;

Map<String, dynamic> toJson() { return {
  if (flexible != null) 'flexible': flexible?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostInvoicesCreatePreviewRequestScheduleDetailsBillingMode copyWith({PostInvoicesCreatePreviewRequestScheduleDetailsBillingModeFlexible Function()? flexible, PostInvoicesCreatePreviewRequestScheduleDetailsBillingModeType? type, }) { return PostInvoicesCreatePreviewRequestScheduleDetailsBillingMode(
  flexible: flexible != null ? flexible() : this.flexible,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestScheduleDetailsBillingMode &&
          flexible == other.flexible &&
          type == other.type; } 
@override int get hashCode { return Object.hash(flexible, type); } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestScheduleDetailsBillingMode(flexible: $flexible, type: $type)'; } 
 }
