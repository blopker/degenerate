// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_billing_portal_sessions_request_flow_data_after_completion_hosted_confirmation.dart';import 'post_billing_portal_sessions_request_flow_data_after_completion_redirect.dart';@immutable final class PostBillingPortalSessionsRequestFlowDataAfterCompletionType {const PostBillingPortalSessionsRequestFlowDataAfterCompletionType._(this.value);

factory PostBillingPortalSessionsRequestFlowDataAfterCompletionType.fromJson(String json) { return switch (json) {
  'hosted_confirmation' => hostedConfirmation,
  'portal_homepage' => portalHomepage,
  'redirect' => redirect,
  _ => PostBillingPortalSessionsRequestFlowDataAfterCompletionType._(json),
}; }

static const PostBillingPortalSessionsRequestFlowDataAfterCompletionType hostedConfirmation = PostBillingPortalSessionsRequestFlowDataAfterCompletionType._('hosted_confirmation');

static const PostBillingPortalSessionsRequestFlowDataAfterCompletionType portalHomepage = PostBillingPortalSessionsRequestFlowDataAfterCompletionType._('portal_homepage');

static const PostBillingPortalSessionsRequestFlowDataAfterCompletionType redirect = PostBillingPortalSessionsRequestFlowDataAfterCompletionType._('redirect');

static const List<PostBillingPortalSessionsRequestFlowDataAfterCompletionType> values = [hostedConfirmation, portalHomepage, redirect];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostBillingPortalSessionsRequestFlowDataAfterCompletionType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostBillingPortalSessionsRequestFlowDataAfterCompletionType($value)'; } 
 }
@immutable final class PostBillingPortalSessionsRequestFlowDataAfterCompletion {const PostBillingPortalSessionsRequestFlowDataAfterCompletion({required this.type, this.hostedConfirmation, this.redirect, });

factory PostBillingPortalSessionsRequestFlowDataAfterCompletion.fromJson(Map<String, dynamic> json) { return PostBillingPortalSessionsRequestFlowDataAfterCompletion(
  hostedConfirmation: json['hosted_confirmation'] != null ? PostBillingPortalSessionsRequestFlowDataAfterCompletionHostedConfirmation.fromJson(json['hosted_confirmation'] as Map<String, dynamic>) : null,
  redirect: json['redirect'] != null ? PostBillingPortalSessionsRequestFlowDataAfterCompletionRedirect.fromJson(json['redirect'] as Map<String, dynamic>) : null,
  type: PostBillingPortalSessionsRequestFlowDataAfterCompletionType.fromJson(json['type'] as String),
); }

final PostBillingPortalSessionsRequestFlowDataAfterCompletionHostedConfirmation? hostedConfirmation;

final PostBillingPortalSessionsRequestFlowDataAfterCompletionRedirect? redirect;

final PostBillingPortalSessionsRequestFlowDataAfterCompletionType type;

Map<String, dynamic> toJson() { return {
  if (hostedConfirmation != null) 'hosted_confirmation': hostedConfirmation?.toJson(),
  if (redirect != null) 'redirect': redirect?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostBillingPortalSessionsRequestFlowDataAfterCompletion copyWith({PostBillingPortalSessionsRequestFlowDataAfterCompletionHostedConfirmation Function()? hostedConfirmation, PostBillingPortalSessionsRequestFlowDataAfterCompletionRedirect Function()? redirect, PostBillingPortalSessionsRequestFlowDataAfterCompletionType? type, }) { return PostBillingPortalSessionsRequestFlowDataAfterCompletion(
  hostedConfirmation: hostedConfirmation != null ? hostedConfirmation() : this.hostedConfirmation,
  redirect: redirect != null ? redirect() : this.redirect,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostBillingPortalSessionsRequestFlowDataAfterCompletion &&
          hostedConfirmation == other.hostedConfirmation &&
          redirect == other.redirect &&
          type == other.type; } 
@override int get hashCode { return Object.hash(hostedConfirmation, redirect, type); } 
@override String toString() { return 'PostBillingPortalSessionsRequestFlowDataAfterCompletion(hostedConfirmation: $hostedConfirmation, redirect: $redirect, type: $type)'; } 
 }
