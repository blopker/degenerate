// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'code_scanning_alert_dismissed_comment.dart';import 'simple_user.dart';import 'webhook_code_scanning_alert_reopened_alert_most_recent_instance.dart';import 'webhook_code_scanning_alert_reopened_alert_rule.dart';import 'webhook_code_scanning_alert_reopened_alert_tool.dart';/// State of a code scanning alert. Events for alerts found outside the default branch will return a `null` value until they are dismissed or fixed.
@immutable final class WebhookCodeScanningAlertReopenedAlertState {const WebhookCodeScanningAlertReopenedAlertState._(this.value);

factory WebhookCodeScanningAlertReopenedAlertState.fromJson(String json) { return switch (json) {
  'open' => open,
  'dismissed' => dismissed,
  'fixed' => fixed,
  'null' => $null,
  _ => WebhookCodeScanningAlertReopenedAlertState._(json),
}; }

static const WebhookCodeScanningAlertReopenedAlertState open = WebhookCodeScanningAlertReopenedAlertState._('open');

static const WebhookCodeScanningAlertReopenedAlertState dismissed = WebhookCodeScanningAlertReopenedAlertState._('dismissed');

static const WebhookCodeScanningAlertReopenedAlertState fixed = WebhookCodeScanningAlertReopenedAlertState._('fixed');

static const WebhookCodeScanningAlertReopenedAlertState $null = WebhookCodeScanningAlertReopenedAlertState._('null');

static const List<WebhookCodeScanningAlertReopenedAlertState> values = [open, dismissed, fixed, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookCodeScanningAlertReopenedAlertState && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookCodeScanningAlertReopenedAlertState($value)'; } 
 }
/// The code scanning alert involved in the event.
@immutable final class WebhookCodeScanningAlertReopenedAlert {const WebhookCodeScanningAlertReopenedAlert({required this.createdAt, required this.dismissedAt, required this.dismissedBy, required this.dismissedReason, required this.htmlUrl, required this.number, required this.rule, required this.state, required this.tool, required this.url, this.assignees, this.dismissedComment, this.fixedAt, this.instancesUrl, this.mostRecentInstance, this.updatedAt, this.dismissalApprovedBy, });

factory WebhookCodeScanningAlertReopenedAlert.fromJson(Map<String, dynamic> json) { return WebhookCodeScanningAlertReopenedAlert(
  assignees: (json['assignees'] as List<dynamic>?)?.map((e) => SimpleUser.fromJson(e as Map<String, dynamic>)).toList(),
  createdAt: DateTime.parse(json['created_at'] as String),
  dismissedAt: json['dismissed_at'] as String?,
  dismissedBy: json['dismissed_by'] as Map<String, dynamic>?,
  dismissedComment: json['dismissed_comment'] != null ? CodeScanningAlertDismissedComment.fromJson(json['dismissed_comment'] as String) : null,
  dismissedReason: json['dismissed_reason'] as String?,
  fixedAt: json['fixed_at'],
  htmlUrl: Uri.parse(json['html_url'] as String),
  instancesUrl: json['instances_url'] as String?,
  mostRecentInstance: json['most_recent_instance'] != null ? WebhookCodeScanningAlertReopenedAlertMostRecentInstance.fromJson(json['most_recent_instance'] as Map<String, dynamic>) : null,
  number: (json['number'] as num).toInt(),
  rule: WebhookCodeScanningAlertReopenedAlertRule.fromJson(json['rule'] as Map<String, dynamic>),
  state: json['state'] != null ? WebhookCodeScanningAlertReopenedAlertState.fromJson(json['state'] as String) : null,
  tool: WebhookCodeScanningAlertReopenedAlertTool.fromJson(json['tool'] as Map<String, dynamic>),
  updatedAt: json['updated_at'] as String?,
  url: Uri.parse(json['url'] as String),
  dismissalApprovedBy: json['dismissal_approved_by'],
); }

final List<SimpleUser>? assignees;

/// The time that the alert was created in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ.`
final DateTime createdAt;

/// The time that the alert was dismissed in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
final String? dismissedAt;

final Map<String,dynamic>? dismissedBy;

/// The dismissal comment associated with the dismissal of the alert.
final CodeScanningAlertDismissedComment? dismissedComment;

/// The reason for dismissing or closing the alert. Can be one of: `false positive`, `won't fix`, and `used in tests`.
final String? dismissedReason;

/// The time that the alert was fixed in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
final dynamic fixedAt;

/// The GitHub URL of the alert resource.
final Uri htmlUrl;

final String? instancesUrl;

final WebhookCodeScanningAlertReopenedAlertMostRecentInstance? mostRecentInstance;

/// The code scanning alert number.
final int number;

final WebhookCodeScanningAlertReopenedAlertRule rule;

/// State of a code scanning alert. Events for alerts found outside the default branch will return a `null` value until they are dismissed or fixed.
final WebhookCodeScanningAlertReopenedAlertState? state;

final WebhookCodeScanningAlertReopenedAlertTool tool;

final String? updatedAt;

final Uri url;

final dynamic dismissalApprovedBy;

Map<String, dynamic> toJson() { return {
  if (assignees != null) 'assignees': assignees?.map((e) => e.toJson()).toList(),
  'created_at': createdAt.toIso8601String(),
  'dismissed_at': ?dismissedAt,
  'dismissed_by': ?dismissedBy,
  if (dismissedComment != null) 'dismissed_comment': dismissedComment?.toJson(),
  'dismissed_reason': ?dismissedReason,
  'fixed_at': ?fixedAt,
  'html_url': htmlUrl.toString(),
  'instances_url': ?instancesUrl,
  if (mostRecentInstance != null) 'most_recent_instance': mostRecentInstance?.toJson(),
  'number': number,
  'rule': rule.toJson(),
  if (state != null) 'state': state?.toJson(),
  'tool': tool.toJson(),
  'updated_at': ?updatedAt,
  'url': url.toString(),
  'dismissal_approved_by': ?dismissalApprovedBy,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('dismissed_at') && json['dismissed_at'] is String &&
      json.containsKey('dismissed_by') &&
      json.containsKey('dismissed_reason') && json['dismissed_reason'] is String &&
      json.containsKey('html_url') && json['html_url'] is String &&
      json.containsKey('number') && json['number'] is num &&
      json.containsKey('rule') &&
      json.containsKey('state') &&
      json.containsKey('tool') &&
      json.containsKey('url') && json['url'] is String; } 
WebhookCodeScanningAlertReopenedAlert copyWith({List<SimpleUser> Function()? assignees, DateTime? createdAt, String? Function()? dismissedAt, Map<String, dynamic>? Function()? dismissedBy, CodeScanningAlertDismissedComment? Function()? dismissedComment, String? Function()? dismissedReason, dynamic Function()? fixedAt, Uri? htmlUrl, String Function()? instancesUrl, WebhookCodeScanningAlertReopenedAlertMostRecentInstance? Function()? mostRecentInstance, int? number, WebhookCodeScanningAlertReopenedAlertRule? rule, WebhookCodeScanningAlertReopenedAlertState? Function()? state, WebhookCodeScanningAlertReopenedAlertTool? tool, String? Function()? updatedAt, Uri? url, dynamic Function()? dismissalApprovedBy, }) { return WebhookCodeScanningAlertReopenedAlert(
  assignees: assignees != null ? assignees() : this.assignees,
  createdAt: createdAt ?? this.createdAt,
  dismissedAt: dismissedAt != null ? dismissedAt() : this.dismissedAt,
  dismissedBy: dismissedBy != null ? dismissedBy() : this.dismissedBy,
  dismissedComment: dismissedComment != null ? dismissedComment() : this.dismissedComment,
  dismissedReason: dismissedReason != null ? dismissedReason() : this.dismissedReason,
  fixedAt: fixedAt != null ? fixedAt() : this.fixedAt,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  instancesUrl: instancesUrl != null ? instancesUrl() : this.instancesUrl,
  mostRecentInstance: mostRecentInstance != null ? mostRecentInstance() : this.mostRecentInstance,
  number: number ?? this.number,
  rule: rule ?? this.rule,
  state: state != null ? state() : this.state,
  tool: tool ?? this.tool,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
  url: url ?? this.url,
  dismissalApprovedBy: dismissalApprovedBy != null ? dismissalApprovedBy() : this.dismissalApprovedBy,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookCodeScanningAlertReopenedAlert &&
          listEquals(assignees, other.assignees) &&
          createdAt == other.createdAt &&
          dismissedAt == other.dismissedAt &&
          dismissedBy == other.dismissedBy &&
          dismissedComment == other.dismissedComment &&
          dismissedReason == other.dismissedReason &&
          fixedAt == other.fixedAt &&
          htmlUrl == other.htmlUrl &&
          instancesUrl == other.instancesUrl &&
          mostRecentInstance == other.mostRecentInstance &&
          number == other.number &&
          rule == other.rule &&
          state == other.state &&
          tool == other.tool &&
          updatedAt == other.updatedAt &&
          url == other.url &&
          dismissalApprovedBy == other.dismissalApprovedBy; } 
@override int get hashCode { return Object.hash(Object.hashAll(assignees ?? const []), createdAt, dismissedAt, dismissedBy, dismissedComment, dismissedReason, fixedAt, htmlUrl, instancesUrl, mostRecentInstance, number, rule, state, tool, updatedAt, url, dismissalApprovedBy); } 
@override String toString() { return 'WebhookCodeScanningAlertReopenedAlert(assignees: $assignees, createdAt: $createdAt, dismissedAt: $dismissedAt, dismissedBy: $dismissedBy, dismissedComment: $dismissedComment, dismissedReason: $dismissedReason, fixedAt: $fixedAt, htmlUrl: $htmlUrl, instancesUrl: $instancesUrl, mostRecentInstance: $mostRecentInstance, number: $number, rule: $rule, state: $state, tool: $tool, updatedAt: $updatedAt, url: $url, dismissalApprovedBy: $dismissalApprovedBy)'; } 
 }
