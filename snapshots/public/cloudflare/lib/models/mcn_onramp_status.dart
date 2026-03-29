// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mcn_apply_progress.dart';import 'mcn_error.dart';import 'mcn_plan_progress.dart';extension type const McnConduitRouteId(String value) {
factory McnConduitRouteId.fromJson(String json) => McnConduitRouteId(json);

String toJson() => value;

}
extension type const McnConduitTunnelId(String value) {
factory McnConduitTunnelId.fromJson(String json) => McnConduitTunnelId(json);

String toJson() => value;

}
final class McnOnrampLifecycleState {const McnOnrampLifecycleState._(this.value);

factory McnOnrampLifecycleState.fromJson(String json) { return switch (json) {
  'OnrampNeedsApply' => onrampNeedsApply,
  'OnrampPendingPlan' => onrampPendingPlan,
  'OnrampPlanning' => onrampPlanning,
  'OnrampPlanFailed' => onrampPlanFailed,
  'OnrampPendingApproval' => onrampPendingApproval,
  'OnrampPendingApply' => onrampPendingApply,
  'OnrampApplying' => onrampApplying,
  'OnrampApplyFailed' => onrampApplyFailed,
  'OnrampActive' => onrampActive,
  'OnrampPendingDestroy' => onrampPendingDestroy,
  'OnrampDestroying' => onrampDestroying,
  'OnrampDestroyFailed' => onrampDestroyFailed,
  _ => McnOnrampLifecycleState._(json),
}; }

static const McnOnrampLifecycleState onrampNeedsApply = McnOnrampLifecycleState._('OnrampNeedsApply');

static const McnOnrampLifecycleState onrampPendingPlan = McnOnrampLifecycleState._('OnrampPendingPlan');

static const McnOnrampLifecycleState onrampPlanning = McnOnrampLifecycleState._('OnrampPlanning');

static const McnOnrampLifecycleState onrampPlanFailed = McnOnrampLifecycleState._('OnrampPlanFailed');

static const McnOnrampLifecycleState onrampPendingApproval = McnOnrampLifecycleState._('OnrampPendingApproval');

static const McnOnrampLifecycleState onrampPendingApply = McnOnrampLifecycleState._('OnrampPendingApply');

static const McnOnrampLifecycleState onrampApplying = McnOnrampLifecycleState._('OnrampApplying');

static const McnOnrampLifecycleState onrampApplyFailed = McnOnrampLifecycleState._('OnrampApplyFailed');

static const McnOnrampLifecycleState onrampActive = McnOnrampLifecycleState._('OnrampActive');

static const McnOnrampLifecycleState onrampPendingDestroy = McnOnrampLifecycleState._('OnrampPendingDestroy');

static const McnOnrampLifecycleState onrampDestroying = McnOnrampLifecycleState._('OnrampDestroying');

static const McnOnrampLifecycleState onrampDestroyFailed = McnOnrampLifecycleState._('OnrampDestroyFailed');

static const List<McnOnrampLifecycleState> values = [onrampNeedsApply, onrampPendingPlan, onrampPlanning, onrampPlanFailed, onrampPendingApproval, onrampPendingApply, onrampApplying, onrampApplyFailed, onrampActive, onrampPendingDestroy, onrampDestroying, onrampDestroyFailed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is McnOnrampLifecycleState && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'McnOnrampLifecycleState($value)'; } 
 }
final class McnOnrampStatus {const McnOnrampStatus({required this.applyProgress, this.lifecycleErrors, required this.lifecycleState, required this.planProgress, required this.routes, required this.tunnels, });

factory McnOnrampStatus.fromJson(Map<String, dynamic> json) { return McnOnrampStatus(
  applyProgress: McnApplyProgress.fromJson(json['apply_progress'] as Map<String, dynamic>),
  lifecycleErrors: (json['lifecycle_errors'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, McnError.fromJson(v as Map<String, dynamic>))),
  lifecycleState: McnOnrampLifecycleState.fromJson(json['lifecycle_state'] as String),
  planProgress: McnPlanProgress.fromJson(json['plan_progress'] as Map<String, dynamic>),
  routes: (json['routes'] as List<dynamic>).map((e) => McnConduitRouteId.fromJson(e as String)).toList(),
  tunnels: (json['tunnels'] as List<dynamic>).map((e) => McnConduitTunnelId.fromJson(e as String)).toList(),
); }

final McnApplyProgress applyProgress;

final Map<String,McnError>? lifecycleErrors;

final McnOnrampLifecycleState lifecycleState;

final McnPlanProgress planProgress;

final List<McnConduitRouteId> routes;

final List<McnConduitTunnelId> tunnels;

Map<String, dynamic> toJson() { return {
  'apply_progress': applyProgress.toJson(),
  if (lifecycleErrors != null) 'lifecycle_errors': lifecycleErrors?.map((k, v) => MapEntry(k, v.toJson())),
  'lifecycle_state': lifecycleState.toJson(),
  'plan_progress': planProgress.toJson(),
  'routes': routes.map((e) => e.toJson()).toList(),
  'tunnels': tunnels.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('apply_progress') &&
      json.containsKey('lifecycle_state') &&
      json.containsKey('plan_progress') &&
      json.containsKey('routes') &&
      json.containsKey('tunnels'); } 
McnOnrampStatus copyWith({McnApplyProgress? applyProgress, Map<String, McnError> Function()? lifecycleErrors, McnOnrampLifecycleState? lifecycleState, McnPlanProgress? planProgress, List<McnConduitRouteId>? routes, List<McnConduitTunnelId>? tunnels, }) { return McnOnrampStatus(
  applyProgress: applyProgress ?? this.applyProgress,
  lifecycleErrors: lifecycleErrors != null ? lifecycleErrors() : this.lifecycleErrors,
  lifecycleState: lifecycleState ?? this.lifecycleState,
  planProgress: planProgress ?? this.planProgress,
  routes: routes ?? this.routes,
  tunnels: tunnels ?? this.tunnels,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnOnrampStatus &&
          applyProgress == other.applyProgress &&
          lifecycleErrors == other.lifecycleErrors &&
          lifecycleState == other.lifecycleState &&
          planProgress == other.planProgress &&
          listEquals(routes, other.routes) &&
          listEquals(tunnels, other.tunnels); } 
@override int get hashCode { return Object.hash(applyProgress, lifecycleErrors, lifecycleState, planProgress, Object.hashAll(routes), Object.hashAll(tunnels)); } 
@override String toString() { return 'McnOnrampStatus(applyProgress: $applyProgress, lifecycleErrors: $lifecycleErrors, lifecycleState: $lifecycleState, planProgress: $planProgress, routes: $routes, tunnels: $tunnels)'; } 
 }
