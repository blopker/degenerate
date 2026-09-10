// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'portal_flows_after_completion_hosted_confirmation.dart';import 'portal_flows_after_completion_redirect.dart';/// The specified type of behavior after the flow is completed.
@immutable final class PortalFlowsFlowAfterCompletionType {const PortalFlowsFlowAfterCompletionType._(this.value);

factory PortalFlowsFlowAfterCompletionType.fromJson(String json) { return switch (json) {
  'hosted_confirmation' => hostedConfirmation,
  'portal_homepage' => portalHomepage,
  'redirect' => redirect,
  _ => PortalFlowsFlowAfterCompletionType._(json),
}; }

static const PortalFlowsFlowAfterCompletionType hostedConfirmation = PortalFlowsFlowAfterCompletionType._('hosted_confirmation');

static const PortalFlowsFlowAfterCompletionType portalHomepage = PortalFlowsFlowAfterCompletionType._('portal_homepage');

static const PortalFlowsFlowAfterCompletionType redirect = PortalFlowsFlowAfterCompletionType._('redirect');

static const List<PortalFlowsFlowAfterCompletionType> values = [hostedConfirmation, portalHomepage, redirect];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PortalFlowsFlowAfterCompletionType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PortalFlowsFlowAfterCompletionType($value)'; } 
 }
/// 
@immutable final class PortalFlowsFlowAfterCompletion {const PortalFlowsFlowAfterCompletion({required this.type, this.hostedConfirmation = const Omittable.absent(), this.redirect = const Omittable.absent(), });

factory PortalFlowsFlowAfterCompletion.fromJson(Map<String, dynamic> json) { return PortalFlowsFlowAfterCompletion(
  hostedConfirmation: json.containsKey('hosted_confirmation') ? Omittable(json['hosted_confirmation'] != null ? PortalFlowsAfterCompletionHostedConfirmation.fromJson(json['hosted_confirmation'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  redirect: json.containsKey('redirect') ? Omittable(json['redirect'] != null ? PortalFlowsAfterCompletionRedirect.fromJson(json['redirect'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  type: PortalFlowsFlowAfterCompletionType.fromJson(json['type'] as String),
); }

/// Configuration when `after_completion.type=hosted_confirmation`.
final Omittable<PortalFlowsAfterCompletionHostedConfirmation?> hostedConfirmation;

/// Configuration when `after_completion.type=redirect`.
final Omittable<PortalFlowsAfterCompletionRedirect?> redirect;

/// The specified type of behavior after the flow is completed.
final PortalFlowsFlowAfterCompletionType type;

Map<String, dynamic> toJson() { return {
  if (hostedConfirmation.isPresent) 'hosted_confirmation': hostedConfirmation.value?.toJson(),
  if (redirect.isPresent) 'redirect': redirect.value?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PortalFlowsFlowAfterCompletion copyWith({Omittable<PortalFlowsAfterCompletionHostedConfirmation?>? hostedConfirmation, Omittable<PortalFlowsAfterCompletionRedirect?>? redirect, PortalFlowsFlowAfterCompletionType? type, }) { return PortalFlowsFlowAfterCompletion(
  hostedConfirmation: hostedConfirmation ?? this.hostedConfirmation,
  redirect: redirect ?? this.redirect,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PortalFlowsFlowAfterCompletion &&
          hostedConfirmation == other.hostedConfirmation &&
          redirect == other.redirect &&
          type == other.type; } 
@override int get hashCode { return Object.hash(hostedConfirmation, redirect, type); } 
@override String toString() { return 'PortalFlowsFlowAfterCompletion(hostedConfirmation: $hostedConfirmation, redirect: $redirect, type: $type)'; } 
 }
