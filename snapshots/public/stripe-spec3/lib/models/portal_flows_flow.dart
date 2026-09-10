// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'portal_flows_flow_after_completion.dart';import 'portal_flows_flow_subscription_cancel.dart';import 'portal_flows_flow_subscription_update.dart';import 'portal_flows_flow_subscription_update_confirm.dart';/// Type of flow that the customer will go through.
@immutable final class PortalFlowsFlowType {const PortalFlowsFlowType._(this.value);

factory PortalFlowsFlowType.fromJson(String json) { return switch (json) {
  'payment_method_update' => paymentMethodUpdate,
  'subscription_cancel' => subscriptionCancel,
  'subscription_update' => subscriptionUpdate,
  'subscription_update_confirm' => subscriptionUpdateConfirm,
  _ => PortalFlowsFlowType._(json),
}; }

static const PortalFlowsFlowType paymentMethodUpdate = PortalFlowsFlowType._('payment_method_update');

static const PortalFlowsFlowType subscriptionCancel = PortalFlowsFlowType._('subscription_cancel');

static const PortalFlowsFlowType subscriptionUpdate = PortalFlowsFlowType._('subscription_update');

static const PortalFlowsFlowType subscriptionUpdateConfirm = PortalFlowsFlowType._('subscription_update_confirm');

static const List<PortalFlowsFlowType> values = [paymentMethodUpdate, subscriptionCancel, subscriptionUpdate, subscriptionUpdateConfirm];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PortalFlowsFlowType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PortalFlowsFlowType($value)'; } 
 }
/// 
@immutable final class PortalFlowsFlow {const PortalFlowsFlow({required this.afterCompletion, required this.type, this.subscriptionCancel = const Omittable.absent(), this.subscriptionUpdate = const Omittable.absent(), this.subscriptionUpdateConfirm = const Omittable.absent(), });

factory PortalFlowsFlow.fromJson(Map<String, dynamic> json) { return PortalFlowsFlow(
  afterCompletion: PortalFlowsFlowAfterCompletion.fromJson(json['after_completion'] as Map<String, dynamic>),
  subscriptionCancel: json.containsKey('subscription_cancel') ? Omittable(json['subscription_cancel'] != null ? PortalFlowsFlowSubscriptionCancel.fromJson(json['subscription_cancel'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  subscriptionUpdate: json.containsKey('subscription_update') ? Omittable(json['subscription_update'] != null ? PortalFlowsFlowSubscriptionUpdate.fromJson(json['subscription_update'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  subscriptionUpdateConfirm: json.containsKey('subscription_update_confirm') ? Omittable(json['subscription_update_confirm'] != null ? PortalFlowsFlowSubscriptionUpdateConfirm.fromJson(json['subscription_update_confirm'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  type: PortalFlowsFlowType.fromJson(json['type'] as String),
); }

final PortalFlowsFlowAfterCompletion afterCompletion;

/// Configuration when `flow.type=subscription_cancel`.
final Omittable<PortalFlowsFlowSubscriptionCancel?> subscriptionCancel;

/// Configuration when `flow.type=subscription_update`.
final Omittable<PortalFlowsFlowSubscriptionUpdate?> subscriptionUpdate;

/// Configuration when `flow.type=subscription_update_confirm`.
final Omittable<PortalFlowsFlowSubscriptionUpdateConfirm?> subscriptionUpdateConfirm;

/// Type of flow that the customer will go through.
final PortalFlowsFlowType type;

Map<String, dynamic> toJson() { return {
  'after_completion': afterCompletion.toJson(),
  if (subscriptionCancel.isPresent) 'subscription_cancel': subscriptionCancel.value?.toJson(),
  if (subscriptionUpdate.isPresent) 'subscription_update': subscriptionUpdate.value?.toJson(),
  if (subscriptionUpdateConfirm.isPresent) 'subscription_update_confirm': subscriptionUpdateConfirm.value?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('after_completion') &&
      json.containsKey('type'); } 
PortalFlowsFlow copyWith({PortalFlowsFlowAfterCompletion? afterCompletion, Omittable<PortalFlowsFlowSubscriptionCancel?>? subscriptionCancel, Omittable<PortalFlowsFlowSubscriptionUpdate?>? subscriptionUpdate, Omittable<PortalFlowsFlowSubscriptionUpdateConfirm?>? subscriptionUpdateConfirm, PortalFlowsFlowType? type, }) { return PortalFlowsFlow(
  afterCompletion: afterCompletion ?? this.afterCompletion,
  subscriptionCancel: subscriptionCancel ?? this.subscriptionCancel,
  subscriptionUpdate: subscriptionUpdate ?? this.subscriptionUpdate,
  subscriptionUpdateConfirm: subscriptionUpdateConfirm ?? this.subscriptionUpdateConfirm,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PortalFlowsFlow &&
          afterCompletion == other.afterCompletion &&
          subscriptionCancel == other.subscriptionCancel &&
          subscriptionUpdate == other.subscriptionUpdate &&
          subscriptionUpdateConfirm == other.subscriptionUpdateConfirm &&
          type == other.type; } 
@override int get hashCode { return Object.hash(afterCompletion, subscriptionCancel, subscriptionUpdate, subscriptionUpdateConfirm, type); } 
@override String toString() { return 'PortalFlowsFlow(afterCompletion: $afterCompletion, subscriptionCancel: $subscriptionCancel, subscriptionUpdate: $subscriptionUpdate, subscriptionUpdateConfirm: $subscriptionUpdateConfirm, type: $type)'; } 
 }
