// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'code_scanning_alert_dismissed_comment.dart';import 'simple_user.dart';import 'webhook_code_scanning_alert_appeared_in_branch_alert_dismissed_by.dart';import 'webhook_code_scanning_alert_appeared_in_branch_alert_most_recent_instance.dart';import 'webhook_code_scanning_alert_appeared_in_branch_alert_rule.dart';import 'webhook_code_scanning_alert_appeared_in_branch_alert_tool.dart';/// The reason for dismissing or closing the alert.
@immutable final class WebhookCodeScanningAlertAppearedInBranchAlertDismissedReason {const WebhookCodeScanningAlertAppearedInBranchAlertDismissedReason._(this.value);

factory WebhookCodeScanningAlertAppearedInBranchAlertDismissedReason.fromJson(String json) { return switch (json) {
  'false positive' => falsePositive,
  'won\'t fix' => wontFix,
  'used in tests' => usedInTests,
  'null' => $null,
  _ => WebhookCodeScanningAlertAppearedInBranchAlertDismissedReason._(json),
}; }

static const WebhookCodeScanningAlertAppearedInBranchAlertDismissedReason falsePositive = WebhookCodeScanningAlertAppearedInBranchAlertDismissedReason._('false positive');

static const WebhookCodeScanningAlertAppearedInBranchAlertDismissedReason wontFix = WebhookCodeScanningAlertAppearedInBranchAlertDismissedReason._('won\'t fix');

static const WebhookCodeScanningAlertAppearedInBranchAlertDismissedReason usedInTests = WebhookCodeScanningAlertAppearedInBranchAlertDismissedReason._('used in tests');

static const WebhookCodeScanningAlertAppearedInBranchAlertDismissedReason $null = WebhookCodeScanningAlertAppearedInBranchAlertDismissedReason._('null');

static const List<WebhookCodeScanningAlertAppearedInBranchAlertDismissedReason> values = [falsePositive, wontFix, usedInTests, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookCodeScanningAlertAppearedInBranchAlertDismissedReason && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookCodeScanningAlertAppearedInBranchAlertDismissedReason($value)'; } 
 }
/// State of a code scanning alert. Events for alerts found outside the default branch will return a `null` value until they are dismissed or fixed.
@immutable final class WebhookCodeScanningAlertAppearedInBranchAlertState {const WebhookCodeScanningAlertAppearedInBranchAlertState._(this.value);

factory WebhookCodeScanningAlertAppearedInBranchAlertState.fromJson(String json) { return switch (json) {
  'open' => open,
  'dismissed' => dismissed,
  'fixed' => fixed,
  'null' => $null,
  _ => WebhookCodeScanningAlertAppearedInBranchAlertState._(json),
}; }

static const WebhookCodeScanningAlertAppearedInBranchAlertState open = WebhookCodeScanningAlertAppearedInBranchAlertState._('open');

static const WebhookCodeScanningAlertAppearedInBranchAlertState dismissed = WebhookCodeScanningAlertAppearedInBranchAlertState._('dismissed');

static const WebhookCodeScanningAlertAppearedInBranchAlertState fixed = WebhookCodeScanningAlertAppearedInBranchAlertState._('fixed');

static const WebhookCodeScanningAlertAppearedInBranchAlertState $null = WebhookCodeScanningAlertAppearedInBranchAlertState._('null');

static const List<WebhookCodeScanningAlertAppearedInBranchAlertState> values = [open, dismissed, fixed, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookCodeScanningAlertAppearedInBranchAlertState && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookCodeScanningAlertAppearedInBranchAlertState($value)'; } 
 }
/// The code scanning alert involved in the event.
@immutable final class WebhookCodeScanningAlertAppearedInBranchAlert {const WebhookCodeScanningAlertAppearedInBranchAlert({required this.createdAt, required this.dismissedAt, required this.dismissedBy, required this.dismissedReason, required this.htmlUrl, required this.number, required this.rule, required this.state, required this.tool, required this.url, this.assignees, this.dismissedComment, this.fixedAt, this.mostRecentInstance, });

factory WebhookCodeScanningAlertAppearedInBranchAlert.fromJson(Map<String, dynamic> json) { return WebhookCodeScanningAlertAppearedInBranchAlert(
  assignees: (json['assignees'] as List<dynamic>?)?.map((e) => SimpleUser.fromJson(e as Map<String, dynamic>)).toList(),
  createdAt: DateTime.parse(json['created_at'] as String),
  dismissedAt: json['dismissed_at'] != null ? DateTime.parse(json['dismissed_at'] as String) : null,
  dismissedBy: json['dismissed_by'] != null ? WebhookCodeScanningAlertAppearedInBranchAlertDismissedBy.fromJson(json['dismissed_by'] as Map<String, dynamic>) : null,
  dismissedComment: json['dismissed_comment'] != null ? CodeScanningAlertDismissedComment.fromJson(json['dismissed_comment'] as String) : null,
  dismissedReason: json['dismissed_reason'] != null ? WebhookCodeScanningAlertAppearedInBranchAlertDismissedReason.fromJson(json['dismissed_reason'] as String) : null,
  fixedAt: json['fixed_at'],
  htmlUrl: Uri.parse(json['html_url'] as String),
  mostRecentInstance: json['most_recent_instance'] != null ? WebhookCodeScanningAlertAppearedInBranchAlertMostRecentInstance.fromJson(json['most_recent_instance'] as Map<String, dynamic>) : null,
  number: (json['number'] as num).toInt(),
  rule: WebhookCodeScanningAlertAppearedInBranchAlertRule.fromJson(json['rule'] as Map<String, dynamic>),
  state: json['state'] != null ? WebhookCodeScanningAlertAppearedInBranchAlertState.fromJson(json['state'] as String) : null,
  tool: WebhookCodeScanningAlertAppearedInBranchAlertTool.fromJson(json['tool'] as Map<String, dynamic>),
  url: Uri.parse(json['url'] as String),
); }

final List<SimpleUser>? assignees;

/// The time that the alert was created in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ.`
final DateTime createdAt;

/// The time that the alert was dismissed in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
final DateTime? dismissedAt;

final WebhookCodeScanningAlertAppearedInBranchAlertDismissedBy? dismissedBy;

/// The dismissal comment associated with the dismissal of the alert.
final CodeScanningAlertDismissedComment? dismissedComment;

/// The reason for dismissing or closing the alert.
final WebhookCodeScanningAlertAppearedInBranchAlertDismissedReason? dismissedReason;

/// The time that the alert was fixed in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
final dynamic fixedAt;

/// The GitHub URL of the alert resource.
final Uri htmlUrl;

final WebhookCodeScanningAlertAppearedInBranchAlertMostRecentInstance? mostRecentInstance;

/// The code scanning alert number.
final int number;

final WebhookCodeScanningAlertAppearedInBranchAlertRule rule;

/// State of a code scanning alert. Events for alerts found outside the default branch will return a `null` value until they are dismissed or fixed.
final WebhookCodeScanningAlertAppearedInBranchAlertState? state;

final WebhookCodeScanningAlertAppearedInBranchAlertTool tool;

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
WebhookCodeScanningAlertAppearedInBranchAlert copyWith({List<SimpleUser> Function()? assignees, DateTime? createdAt, DateTime? Function()? dismissedAt, WebhookCodeScanningAlertAppearedInBranchAlertDismissedBy? Function()? dismissedBy, CodeScanningAlertDismissedComment? Function()? dismissedComment, WebhookCodeScanningAlertAppearedInBranchAlertDismissedReason? Function()? dismissedReason, dynamic Function()? fixedAt, Uri? htmlUrl, WebhookCodeScanningAlertAppearedInBranchAlertMostRecentInstance? Function()? mostRecentInstance, int? number, WebhookCodeScanningAlertAppearedInBranchAlertRule? rule, WebhookCodeScanningAlertAppearedInBranchAlertState? Function()? state, WebhookCodeScanningAlertAppearedInBranchAlertTool? tool, Uri? url, }) { return WebhookCodeScanningAlertAppearedInBranchAlert(
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
      other is WebhookCodeScanningAlertAppearedInBranchAlert &&
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
@override String toString() { return 'WebhookCodeScanningAlertAppearedInBranchAlert(assignees: $assignees, createdAt: $createdAt, dismissedAt: $dismissedAt, dismissedBy: $dismissedBy, dismissedComment: $dismissedComment, dismissedReason: $dismissedReason, fixedAt: $fixedAt, htmlUrl: $htmlUrl, mostRecentInstance: $mostRecentInstance, number: $number, rule: $rule, state: $state, tool: $tool, url: $url)'; } 
 }
