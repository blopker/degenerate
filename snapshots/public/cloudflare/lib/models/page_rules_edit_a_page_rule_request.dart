// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_actions2.dart';import 'zones_priority.dart';import 'zones_status.dart';import 'zones_target.dart';@immutable final class PageRulesEditAPageRuleRequest {const PageRulesEditAPageRuleRequest({this.actions, this.priority, this.status, this.targets, });

factory PageRulesEditAPageRuleRequest.fromJson(Map<String, dynamic> json) { return PageRulesEditAPageRuleRequest(
  actions: (json['actions'] as List<dynamic>?)?.map((e) => ZonesActions2.fromJson(e as Map<String, dynamic>)).toList(),
  priority: json['priority'] != null ? ZonesPriority.fromJson(json['priority'] as num) : null,
  status: json['status'] != null ? ZonesStatus.fromJson(json['status'] as String) : null,
  targets: (json['targets'] as List<dynamic>?)?.map((e) => ZonesTarget.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The set of actions to perform if the targets of this rule match the
/// request. Actions can redirect to another URL or override settings, but
/// not both.
/// 
final List<ZonesActions2>? actions;

/// The priority of the rule, used to define which Page Rule is processed
/// over another. A higher number indicates a higher priority. For example,
/// if you have a catch-all Page Rule (rule A: `/images/*`) but want a more
/// specific Page Rule to take precedence (rule B: `/images/special/*`),
/// specify a higher priority for rule B so it overrides rule A.
/// 
final ZonesPriority? priority;

/// The status of the Page Rule.
final ZonesStatus? status;

/// The rule targets to evaluate on each request.
final List<ZonesTarget>? targets;

Map<String, dynamic> toJson() { return {
  if (actions != null) 'actions': actions?.map((e) => e.toJson()).toList(),
  if (priority != null) 'priority': priority?.toJson(),
  if (status != null) 'status': status?.toJson(),
  if (targets != null) 'targets': targets?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'actions', 'priority', 'status', 'targets'}.contains(key)); } 
PageRulesEditAPageRuleRequest copyWith({List<ZonesActions2> Function()? actions, ZonesPriority Function()? priority, ZonesStatus Function()? status, List<ZonesTarget> Function()? targets, }) { return PageRulesEditAPageRuleRequest(
  actions: actions != null ? actions() : this.actions,
  priority: priority != null ? priority() : this.priority,
  status: status != null ? status() : this.status,
  targets: targets != null ? targets() : this.targets,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PageRulesEditAPageRuleRequest &&
          listEquals(actions, other.actions) &&
          priority == other.priority &&
          status == other.status &&
          listEquals(targets, other.targets); } 
@override int get hashCode { return Object.hash(Object.hashAll(actions ?? const []), priority, status, Object.hashAll(targets ?? const [])); } 
@override String toString() { return 'PageRulesEditAPageRuleRequest(actions: $actions, priority: $priority, status: $status, targets: $targets)'; } 
 }
