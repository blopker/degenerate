// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'code_scanning_alert_dismissed_comment.dart';import 'simple_user.dart';import 'webhook_code_scanning_alert_updated_assignment_alert_dismissed_by.dart';import 'webhook_code_scanning_alert_updated_assignment_alert_most_recent_instance.dart';import 'webhook_code_scanning_alert_updated_assignment_alert_rule.dart';import 'webhook_code_scanning_alert_updated_assignment_alert_tool.dart';/// The reason for dismissing or closing the alert.
final class WebhookCodeScanningAlertUpdatedAssignmentAlertDismissedReason {const WebhookCodeScanningAlertUpdatedAssignmentAlertDismissedReason._(this.value);

factory WebhookCodeScanningAlertUpdatedAssignmentAlertDismissedReason.fromJson(String json) { return switch (json) {
  'false positive' => falsePositive,
  'won\'t fix' => wontFix,
  'used in tests' => usedInTests,
  'null' => $null,
  _ => WebhookCodeScanningAlertUpdatedAssignmentAlertDismissedReason._(json),
}; }

static const WebhookCodeScanningAlertUpdatedAssignmentAlertDismissedReason falsePositive = WebhookCodeScanningAlertUpdatedAssignmentAlertDismissedReason._('false positive');

static const WebhookCodeScanningAlertUpdatedAssignmentAlertDismissedReason wontFix = WebhookCodeScanningAlertUpdatedAssignmentAlertDismissedReason._('won\'t fix');

static const WebhookCodeScanningAlertUpdatedAssignmentAlertDismissedReason usedInTests = WebhookCodeScanningAlertUpdatedAssignmentAlertDismissedReason._('used in tests');

static const WebhookCodeScanningAlertUpdatedAssignmentAlertDismissedReason $null = WebhookCodeScanningAlertUpdatedAssignmentAlertDismissedReason._('null');

static const List<WebhookCodeScanningAlertUpdatedAssignmentAlertDismissedReason> values = [falsePositive, wontFix, usedInTests, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookCodeScanningAlertUpdatedAssignmentAlertDismissedReason && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookCodeScanningAlertUpdatedAssignmentAlertDismissedReason($value)'; } 
 }
/// State of a code scanning alert. Events for alerts found outside the default branch will return a `null` value until they are dismissed or fixed.
final class WebhookCodeScanningAlertUpdatedAssignmentAlertState {const WebhookCodeScanningAlertUpdatedAssignmentAlertState._(this.value);

factory WebhookCodeScanningAlertUpdatedAssignmentAlertState.fromJson(String json) { return switch (json) {
  'open' => open,
  'dismissed' => dismissed,
  'fixed' => fixed,
  'null' => $null,
  _ => WebhookCodeScanningAlertUpdatedAssignmentAlertState._(json),
}; }

static const WebhookCodeScanningAlertUpdatedAssignmentAlertState open = WebhookCodeScanningAlertUpdatedAssignmentAlertState._('open');

static const WebhookCodeScanningAlertUpdatedAssignmentAlertState dismissed = WebhookCodeScanningAlertUpdatedAssignmentAlertState._('dismissed');

static const WebhookCodeScanningAlertUpdatedAssignmentAlertState fixed = WebhookCodeScanningAlertUpdatedAssignmentAlertState._('fixed');

static const WebhookCodeScanningAlertUpdatedAssignmentAlertState $null = WebhookCodeScanningAlertUpdatedAssignmentAlertState._('null');

static const List<WebhookCodeScanningAlertUpdatedAssignmentAlertState> values = [open, dismissed, fixed, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookCodeScanningAlertUpdatedAssignmentAlertState && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookCodeScanningAlertUpdatedAssignmentAlertState($value)'; } 
 }
/// The code scanning alert involved in the event.
final class WebhookCodeScanningAlertUpdatedAssignmentAlert {const WebhookCodeScanningAlertUpdatedAssignmentAlert({this.assignees, required this.createdAt, required this.dismissedAt, required this.dismissedBy, this.dismissedComment, required this.dismissedReason, this.fixedAt, required this.htmlUrl, this.mostRecentInstance, required this.number, required this.rule, required this.state, required this.tool, required this.url, });

factory WebhookCodeScanningAlertUpdatedAssignmentAlert.fromJson(Map<String, dynamic> json) { return WebhookCodeScanningAlertUpdatedAssignmentAlert(
  assignees: (json['assignees'] as List<dynamic>?)?.map((e) => SimpleUser.fromJson(e as Map<String, dynamic>)).toList(),
  createdAt: DateTime.parse(json['created_at'] as String),
  dismissedAt: json['dismissed_at'] != null ? DateTime.parse(json['dismissed_at'] as String) : null,
  dismissedBy: json['dismissed_by'] != null ? WebhookCodeScanningAlertUpdatedAssignmentAlertDismissedBy.fromJson(json['dismissed_by'] as Map<String, dynamic>) : null,
  dismissedComment: json['dismissed_comment'] != null ? CodeScanningAlertDismissedComment.fromJson(json['dismissed_comment'] as String) : null,
  dismissedReason: json['dismissed_reason'] != null ? WebhookCodeScanningAlertUpdatedAssignmentAlertDismissedReason.fromJson(json['dismissed_reason'] as String) : null,
  fixedAt: json['fixed_at'],
  htmlUrl: Uri.parse(json['html_url'] as String),
  mostRecentInstance: json['most_recent_instance'] != null ? WebhookCodeScanningAlertUpdatedAssignmentAlertMostRecentInstance.fromJson(json['most_recent_instance'] as Map<String, dynamic>) : null,
  number: (json['number'] as num).toInt(),
  rule: WebhookCodeScanningAlertUpdatedAssignmentAlertRule.fromJson(json['rule'] as Map<String, dynamic>),
  state: json['state'] != null ? WebhookCodeScanningAlertUpdatedAssignmentAlertState.fromJson(json['state'] as String) : null,
  tool: WebhookCodeScanningAlertUpdatedAssignmentAlertTool.fromJson(json['tool'] as Map<String, dynamic>),
  url: Uri.parse(json['url'] as String),
); }

final List<SimpleUser>? assignees;

/// The time that the alert was created in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ.`
final DateTime createdAt;

/// The time that the alert was dismissed in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
final DateTime? dismissedAt;

final WebhookCodeScanningAlertUpdatedAssignmentAlertDismissedBy? dismissedBy;

/// The dismissal comment associated with the dismissal of the alert.
final CodeScanningAlertDismissedComment? dismissedComment;

/// The reason for dismissing or closing the alert.
final WebhookCodeScanningAlertUpdatedAssignmentAlertDismissedReason? dismissedReason;

/// The time that the alert was fixed in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
final dynamic fixedAt;

/// The GitHub URL of the alert resource.
final Uri htmlUrl;

final WebhookCodeScanningAlertUpdatedAssignmentAlertMostRecentInstance? mostRecentInstance;

/// The code scanning alert number.
final int number;

final WebhookCodeScanningAlertUpdatedAssignmentAlertRule rule;

/// State of a code scanning alert. Events for alerts found outside the default branch will return a `null` value until they are dismissed or fixed.
final WebhookCodeScanningAlertUpdatedAssignmentAlertState? state;

final WebhookCodeScanningAlertUpdatedAssignmentAlertTool tool;

final Uri url;

Map<String, dynamic> toJson() { return {
  if (assignees != null) 'assignees': assignees?.map((e) => e.toJson()).toList(),
  'created_at': createdAt.toIso8601String(),
  if (dismissedAt != null) 'dismissed_at': dismissedAt?.toIso8601String(),
  if (dismissedBy != null) 'dismissed_by': dismissedBy?.toJson(),
  if (dismissedComment != null) 'dismissed_comment': dismissedComment?.toJson(),
  if (dismissedReason != null) 'dismissed_reason': dismissedReason?.toJson(),
  'fixed_at': ?fixedAt,
  'html_url': htmlUrl.toString(),
  if (mostRecentInstance != null) 'most_recent_instance': mostRecentInstance?.toJson(),
  'number': number,
  'rule': rule.toJson(),
  if (state != null) 'state': state?.toJson(),
  'tool': tool.toJson(),
  'url': url.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('dismissed_at') && json['dismissed_at'] is String &&
      json.containsKey('dismissed_by') &&
      json.containsKey('dismissed_reason') &&
      json.containsKey('html_url') && json['html_url'] is String &&
      json.containsKey('number') && json['number'] is num &&
      json.containsKey('rule') &&
      json.containsKey('state') &&
      json.containsKey('tool') &&
      json.containsKey('url') && json['url'] is String; } 
WebhookCodeScanningAlertUpdatedAssignmentAlert copyWith({List<SimpleUser> Function()? assignees, DateTime? createdAt, DateTime? Function()? dismissedAt, WebhookCodeScanningAlertUpdatedAssignmentAlertDismissedBy? Function()? dismissedBy, CodeScanningAlertDismissedComment? Function()? dismissedComment, WebhookCodeScanningAlertUpdatedAssignmentAlertDismissedReason? Function()? dismissedReason, dynamic Function()? fixedAt, Uri? htmlUrl, WebhookCodeScanningAlertUpdatedAssignmentAlertMostRecentInstance? Function()? mostRecentInstance, int? number, WebhookCodeScanningAlertUpdatedAssignmentAlertRule? rule, WebhookCodeScanningAlertUpdatedAssignmentAlertState? Function()? state, WebhookCodeScanningAlertUpdatedAssignmentAlertTool? tool, Uri? url, }) { return WebhookCodeScanningAlertUpdatedAssignmentAlert(
  assignees: assignees != null ? assignees() : this.assignees,
  createdAt: createdAt ?? this.createdAt,
  dismissedAt: dismissedAt != null ? dismissedAt() : this.dismissedAt,
  dismissedBy: dismissedBy != null ? dismissedBy() : this.dismissedBy,
  dismissedComment: dismissedComment != null ? dismissedComment() : this.dismissedComment,
  dismissedReason: dismissedReason != null ? dismissedReason() : this.dismissedReason,
  fixedAt: fixedAt != null ? fixedAt() : this.fixedAt,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  mostRecentInstance: mostRecentInstance != null ? mostRecentInstance() : this.mostRecentInstance,
  number: number ?? this.number,
  rule: rule ?? this.rule,
  state: state != null ? state() : this.state,
  tool: tool ?? this.tool,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookCodeScanningAlertUpdatedAssignmentAlert &&
          listEquals(assignees, other.assignees) &&
          createdAt == other.createdAt &&
          dismissedAt == other.dismissedAt &&
          dismissedBy == other.dismissedBy &&
          dismissedComment == other.dismissedComment &&
          dismissedReason == other.dismissedReason &&
          fixedAt == other.fixedAt &&
          htmlUrl == other.htmlUrl &&
          mostRecentInstance == other.mostRecentInstance &&
          number == other.number &&
          rule == other.rule &&
          state == other.state &&
          tool == other.tool &&
          url == other.url; } 
@override int get hashCode { return Object.hash(Object.hashAll(assignees ?? const []), createdAt, dismissedAt, dismissedBy, dismissedComment, dismissedReason, fixedAt, htmlUrl, mostRecentInstance, number, rule, state, tool, url); } 
@override String toString() { return 'WebhookCodeScanningAlertUpdatedAssignmentAlert(assignees: $assignees, createdAt: $createdAt, dismissedAt: $dismissedAt, dismissedBy: $dismissedBy, dismissedComment: $dismissedComment, dismissedReason: $dismissedReason, fixedAt: $fixedAt, htmlUrl: $htmlUrl, mostRecentInstance: $mostRecentInstance, number: $number, rule: $rule, state: $state, tool: $tool, url: $url)'; } 
 }
