// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_invoices_create_preview_request_subscription_details_billing_mode_flexible.dart';@immutable final class PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingModeType {const PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingModeType._(this.value);

factory PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingModeType.fromJson(String json) { return switch (json) {
  'classic' => classic,
  'flexible' => flexible,
  _ => PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingModeType._(json),
}; }

static const PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingModeType classic = PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingModeType._('classic');

static const PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingModeType flexible = PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingModeType._('flexible');

static const List<PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingModeType> values = [classic, flexible];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingModeType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingModeType($value)'; } 
 }
@immutable final class PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingMode {const PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingMode({required this.type, this.flexible, });

factory PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingMode.fromJson(Map<String, dynamic> json) { return PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingMode(
  flexible: json['flexible'] != null ? PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingModeFlexible.fromJson(json['flexible'] as Map<String, dynamic>) : null,
  type: PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingModeType.fromJson(json['type'] as String),
); }

final PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingModeFlexible? flexible;

final PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingModeType type;

Map<String, dynamic> toJson() { return {
  if (flexible != null) 'flexible': flexible?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingMode copyWith({PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingModeFlexible Function()? flexible, PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingModeType? type, }) { return PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingMode(
  flexible: flexible != null ? flexible() : this.flexible,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingMode &&
          flexible == other.flexible &&
          type == other.type; } 
@override int get hashCode { return Object.hash(flexible, type); } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingMode(flexible: $flexible, type: $type)'; } 
 }
