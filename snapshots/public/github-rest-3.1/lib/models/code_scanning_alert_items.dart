// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'alert_created_at.dart';import 'alert_dismissed_at.dart';import 'alert_fixed_at.dart';import 'alert_html_url.dart';import 'alert_instances_url.dart';import 'alert_number.dart';import 'alert_updated_at.dart';import 'alert_url.dart';import 'code_scanning_alert_dismissed_comment.dart';import 'code_scanning_alert_dismissed_reason.dart';import 'code_scanning_alert_instance.dart';import 'code_scanning_alert_rule_summary.dart';import 'code_scanning_alert_state.dart';import 'code_scanning_analysis_tool.dart';import 'simple_user.dart';@immutable final class CodeScanningAlertItems {const CodeScanningAlertItems({required this.number, required this.createdAt, required this.url, required this.htmlUrl, required this.instancesUrl, required this.state, required this.dismissedBy, required this.dismissedAt, required this.dismissedReason, required this.rule, required this.tool, required this.mostRecentInstance, this.updatedAt, this.fixedAt, this.dismissedComment, this.dismissalApprovedBy, this.assignees, });

factory CodeScanningAlertItems.fromJson(Map<String, dynamic> json) { return CodeScanningAlertItems(
  number: AlertNumber.fromJson(json['number'] as num),
  createdAt: AlertCreatedAt.fromJson(json['created_at'] as String),
  updatedAt: json['updated_at'] != null ? AlertUpdatedAt.fromJson(json['updated_at'] as String) : null,
  url: AlertUrl.fromJson(json['url'] as String),
  htmlUrl: AlertHtmlUrl.fromJson(json['html_url'] as String),
  instancesUrl: AlertInstancesUrl.fromJson(json['instances_url'] as String),
  state: json['state'] != null ? CodeScanningAlertState.fromJson(json['state'] as String) : null,
  fixedAt: json['fixed_at'] != null ? AlertFixedAt.fromJson(json['fixed_at'] as String) : null,
  dismissedBy: json['dismissed_by'] != null ? SimpleUser.fromJson(json['dismissed_by'] as Map<String, dynamic>) : null,
  dismissedAt: json['dismissed_at'] != null ? AlertDismissedAt.fromJson(json['dismissed_at'] as String) : null,
  dismissedReason: json['dismissed_reason'] != null ? CodeScanningAlertDismissedReason.fromJson(json['dismissed_reason'] as String) : null,
  dismissedComment: json['dismissed_comment'] != null ? CodeScanningAlertDismissedComment.fromJson(json['dismissed_comment'] as String) : null,
  rule: CodeScanningAlertRuleSummary.fromJson(json['rule'] as Map<String, dynamic>),
  tool: CodeScanningAnalysisTool.fromJson(json['tool'] as Map<String, dynamic>),
  mostRecentInstance: CodeScanningAlertInstance.fromJson(json['most_recent_instance'] as Map<String, dynamic>),
  dismissalApprovedBy: json['dismissal_approved_by'] != null ? SimpleUser.fromJson(json['dismissal_approved_by'] as Map<String, dynamic>) : null,
  assignees: (json['assignees'] as List<dynamic>?)?.map((e) => SimpleUser.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The security alert number.
final AlertNumber number;

/// The time that the alert was created in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
final AlertCreatedAt createdAt;

/// The time that the alert was last updated in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
final AlertUpdatedAt? updatedAt;

/// The REST API URL of the alert resource.
final AlertUrl url;

/// The GitHub URL of the alert resource.
final AlertHtmlUrl htmlUrl;

/// The REST API URL for fetching the list of instances for an alert.
final AlertInstancesUrl instancesUrl;

/// State of a code scanning alert.
final CodeScanningAlertState? state;

/// The time that the alert was no longer detected and was considered fixed in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
final AlertFixedAt? fixedAt;

final SimpleUser? dismissedBy;

/// The time that the alert was dismissed in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
final AlertDismissedAt? dismissedAt;

/// **Required when the state is dismissed.** The reason for dismissing or closing the alert.
final CodeScanningAlertDismissedReason? dismissedReason;

/// The dismissal comment associated with the dismissal of the alert.
final CodeScanningAlertDismissedComment? dismissedComment;

final CodeScanningAlertRuleSummary rule;

final CodeScanningAnalysisTool tool;

final CodeScanningAlertInstance mostRecentInstance;

final SimpleUser? dismissalApprovedBy;

final List<SimpleUser>? assignees;

Map<String, dynamic> toJson() { return {
  'number': number.toJson(),
  'created_at': createdAt.toJson(),
  if (updatedAt != null) 'updated_at': updatedAt?.toJson(),
  'url': url.toJson(),
  'html_url': htmlUrl.toJson(),
  'instances_url': instancesUrl.toJson(),
  if (state != null) 'state': state?.toJson(),
  if (fixedAt != null) 'fixed_at': fixedAt?.toJson(),
  if (dismissedBy != null) 'dismissed_by': dismissedBy?.toJson(),
  if (dismissedAt != null) 'dismissed_at': dismissedAt?.toJson(),
  if (dismissedReason != null) 'dismissed_reason': dismissedReason?.toJson(),
  if (dismissedComment != null) 'dismissed_comment': dismissedComment?.toJson(),
  'rule': rule.toJson(),
  'tool': tool.toJson(),
  'most_recent_instance': mostRecentInstance.toJson(),
  if (dismissalApprovedBy != null) 'dismissal_approved_by': dismissalApprovedBy?.toJson(),
  if (assignees != null) 'assignees': assignees?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('number') &&
      json.containsKey('created_at') &&
      json.containsKey('url') &&
      json.containsKey('html_url') &&
      json.containsKey('instances_url') &&
      json.containsKey('state') &&
      json.containsKey('dismissed_by') &&
      json.containsKey('dismissed_at') &&
      json.containsKey('dismissed_reason') &&
      json.containsKey('rule') &&
      json.containsKey('tool') &&
      json.containsKey('most_recent_instance'); } 
CodeScanningAlertItems copyWith({AlertNumber? number, AlertCreatedAt? createdAt, AlertUpdatedAt Function()? updatedAt, AlertUrl? url, AlertHtmlUrl? htmlUrl, AlertInstancesUrl? instancesUrl, CodeScanningAlertState? Function()? state, AlertFixedAt? Function()? fixedAt, SimpleUser? Function()? dismissedBy, AlertDismissedAt? Function()? dismissedAt, CodeScanningAlertDismissedReason? Function()? dismissedReason, CodeScanningAlertDismissedComment? Function()? dismissedComment, CodeScanningAlertRuleSummary? rule, CodeScanningAnalysisTool? tool, CodeScanningAlertInstance? mostRecentInstance, SimpleUser? Function()? dismissalApprovedBy, List<SimpleUser> Function()? assignees, }) { return CodeScanningAlertItems(
  number: number ?? this.number,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
  url: url ?? this.url,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  instancesUrl: instancesUrl ?? this.instancesUrl,
  state: state != null ? state() : this.state,
  fixedAt: fixedAt != null ? fixedAt() : this.fixedAt,
  dismissedBy: dismissedBy != null ? dismissedBy() : this.dismissedBy,
  dismissedAt: dismissedAt != null ? dismissedAt() : this.dismissedAt,
  dismissedReason: dismissedReason != null ? dismissedReason() : this.dismissedReason,
  dismissedComment: dismissedComment != null ? dismissedComment() : this.dismissedComment,
  rule: rule ?? this.rule,
  tool: tool ?? this.tool,
  mostRecentInstance: mostRecentInstance ?? this.mostRecentInstance,
  dismissalApprovedBy: dismissalApprovedBy != null ? dismissalApprovedBy() : this.dismissalApprovedBy,
  assignees: assignees != null ? assignees() : this.assignees,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodeScanningAlertItems &&
          number == other.number &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          url == other.url &&
          htmlUrl == other.htmlUrl &&
          instancesUrl == other.instancesUrl &&
          state == other.state &&
          fixedAt == other.fixedAt &&
          dismissedBy == other.dismissedBy &&
          dismissedAt == other.dismissedAt &&
          dismissedReason == other.dismissedReason &&
          dismissedComment == other.dismissedComment &&
          rule == other.rule &&
          tool == other.tool &&
          mostRecentInstance == other.mostRecentInstance &&
          dismissalApprovedBy == other.dismissalApprovedBy &&
          listEquals(assignees, other.assignees); } 
@override int get hashCode { return Object.hash(number, createdAt, updatedAt, url, htmlUrl, instancesUrl, state, fixedAt, dismissedBy, dismissedAt, dismissedReason, dismissedComment, rule, tool, mostRecentInstance, dismissalApprovedBy, Object.hashAll(assignees ?? const [])); } 
@override String toString() { return 'CodeScanningAlertItems(number: $number, createdAt: $createdAt, updatedAt: $updatedAt, url: $url, htmlUrl: $htmlUrl, instancesUrl: $instancesUrl, state: $state, fixedAt: $fixedAt, dismissedBy: $dismissedBy, dismissedAt: $dismissedAt, dismissedReason: $dismissedReason, dismissedComment: $dismissedComment, rule: $rule, tool: $tool, mostRecentInstance: $mostRecentInstance, dismissalApprovedBy: $dismissalApprovedBy, assignees: $assignees)'; } 
 }
