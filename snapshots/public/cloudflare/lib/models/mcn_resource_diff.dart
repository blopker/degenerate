// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mcn_cost_diff.dart';import 'mcn_resource_preview.dart';import 'mcn_yaml_diff.dart';@immutable final class McnPlannedAction {const McnPlannedAction._(this.value);

factory McnPlannedAction.fromJson(String json) { return switch (json) {
  'no_op' => noOp,
  'create' => create,
  'update' => update,
  'replace' => replace,
  'destroy' => destroy,
  _ => McnPlannedAction._(json),
}; }

static const McnPlannedAction noOp = McnPlannedAction._('no_op');

static const McnPlannedAction create = McnPlannedAction._('create');

static const McnPlannedAction update = McnPlannedAction._('update');

static const McnPlannedAction replace = McnPlannedAction._('replace');

static const McnPlannedAction destroy = McnPlannedAction._('destroy');

static const List<McnPlannedAction> values = [noOp, create, update, replace, destroy];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is McnPlannedAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'McnPlannedAction($value)'; } 
 }
@immutable final class McnResourceDiff {const McnResourceDiff({required this.diff, required this.keysRequireReplace, required this.monthlyCostEstimateDiff, required this.plannedAction, required this.resource, });

factory McnResourceDiff.fromJson(Map<String, dynamic> json) { return McnResourceDiff(
  diff: McnYamlDiff.fromJson(json['diff'] as Map<String, dynamic>),
  keysRequireReplace: (json['keys_require_replace'] as List<dynamic>).map((e) => e as String).toList(),
  monthlyCostEstimateDiff: McnCostDiff.fromJson(json['monthly_cost_estimate_diff'] as Map<String, dynamic>),
  plannedAction: McnPlannedAction.fromJson(json['planned_action'] as String),
  resource: McnResourcePreview.fromJson(json['resource'] as Map<String, dynamic>),
); }

final McnYamlDiff diff;

final List<String> keysRequireReplace;

final McnCostDiff monthlyCostEstimateDiff;

final McnPlannedAction plannedAction;

final McnResourcePreview resource;

Map<String, dynamic> toJson() { return {
  'diff': diff.toJson(),
  'keys_require_replace': keysRequireReplace,
  'monthly_cost_estimate_diff': monthlyCostEstimateDiff.toJson(),
  'planned_action': plannedAction.toJson(),
  'resource': resource.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('diff') &&
      json.containsKey('keys_require_replace') &&
      json.containsKey('monthly_cost_estimate_diff') &&
      json.containsKey('planned_action') &&
      json.containsKey('resource'); } 
McnResourceDiff copyWith({McnYamlDiff? diff, List<String>? keysRequireReplace, McnCostDiff? monthlyCostEstimateDiff, McnPlannedAction? plannedAction, McnResourcePreview? resource, }) { return McnResourceDiff(
  diff: diff ?? this.diff,
  keysRequireReplace: keysRequireReplace ?? this.keysRequireReplace,
  monthlyCostEstimateDiff: monthlyCostEstimateDiff ?? this.monthlyCostEstimateDiff,
  plannedAction: plannedAction ?? this.plannedAction,
  resource: resource ?? this.resource,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnResourceDiff &&
          diff == other.diff &&
          listEquals(keysRequireReplace, other.keysRequireReplace) &&
          monthlyCostEstimateDiff == other.monthlyCostEstimateDiff &&
          plannedAction == other.plannedAction &&
          resource == other.resource; } 
@override int get hashCode { return Object.hash(diff, Object.hashAll(keysRequireReplace), monthlyCostEstimateDiff, plannedAction, resource); } 
@override String toString() { return 'McnResourceDiff(diff: $diff, keysRequireReplace: $keysRequireReplace, monthlyCostEstimateDiff: $monthlyCostEstimateDiff, plannedAction: $plannedAction, resource: $resource)'; } 
 }
