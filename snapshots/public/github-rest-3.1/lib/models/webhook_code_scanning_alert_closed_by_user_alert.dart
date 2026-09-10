// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'code_scanning_alert_dismissed_comment.dart';import 'simple_user.dart';import 'webhook_code_scanning_alert_closed_by_user_alert_dismissal_approved_by.dart';import 'webhook_code_scanning_alert_closed_by_user_alert_dismissed_by.dart';import 'webhook_code_scanning_alert_closed_by_user_alert_most_recent_instance.dart';import 'webhook_code_scanning_alert_closed_by_user_alert_rule.dart';import 'webhook_code_scanning_alert_closed_by_user_alert_tool.dart';/// The reason for dismissing or closing the alert.
@immutable final class WebhookCodeScanningAlertClosedByUserAlertDismissedReason {const WebhookCodeScanningAlertClosedByUserAlertDismissedReason._(this.value);

factory WebhookCodeScanningAlertClosedByUserAlertDismissedReason.fromJson(String json) { return switch (json) {
  'false positive' => falsePositive,
  "won't fix" => wontFix,
  'used in tests' => usedInTests,
  'null' => $null,
  _ => WebhookCodeScanningAlertClosedByUserAlertDismissedReason._(json),
}; }

static const WebhookCodeScanningAlertClosedByUserAlertDismissedReason falsePositive = WebhookCodeScanningAlertClosedByUserAlertDismissedReason._('false positive');

static const WebhookCodeScanningAlertClosedByUserAlertDismissedReason wontFix = WebhookCodeScanningAlertClosedByUserAlertDismissedReason._("won't fix");

static const WebhookCodeScanningAlertClosedByUserAlertDismissedReason usedInTests = WebhookCodeScanningAlertClosedByUserAlertDismissedReason._('used in tests');

static const WebhookCodeScanningAlertClosedByUserAlertDismissedReason $null = WebhookCodeScanningAlertClosedByUserAlertDismissedReason._('null');

static const List<WebhookCodeScanningAlertClosedByUserAlertDismissedReason> values = [falsePositive, wontFix, usedInTests, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookCodeScanningAlertClosedByUserAlertDismissedReason && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookCodeScanningAlertClosedByUserAlertDismissedReason($value)'; } 
 }
/// State of a code scanning alert.
@immutable final class WebhookCodeScanningAlertClosedByUserAlertState {const WebhookCodeScanningAlertClosedByUserAlertState._(this.value);

factory WebhookCodeScanningAlertClosedByUserAlertState.fromJson(String json) { return switch (json) {
  'dismissed' => dismissed,
  'fixed' => fixed,
  _ => WebhookCodeScanningAlertClosedByUserAlertState._(json),
}; }

static const WebhookCodeScanningAlertClosedByUserAlertState dismissed = WebhookCodeScanningAlertClosedByUserAlertState._('dismissed');

static const WebhookCodeScanningAlertClosedByUserAlertState fixed = WebhookCodeScanningAlertClosedByUserAlertState._('fixed');

static const List<WebhookCodeScanningAlertClosedByUserAlertState> values = [dismissed, fixed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookCodeScanningAlertClosedByUserAlertState && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookCodeScanningAlertClosedByUserAlertState($value)'; } 
 }
/// The code scanning alert involved in the event.
@immutable final class WebhookCodeScanningAlertClosedByUserAlert {const WebhookCodeScanningAlertClosedByUserAlert({required this.createdAt, required this.dismissedAt, required this.dismissedBy, required this.dismissedReason, required this.htmlUrl, required this.number, required this.rule, required this.state, required this.tool, required this.url, this.assignees, this.dismissedComment = const Omittable.absent(), this.fixedAt = const Omittable.absent(), this.mostRecentInstance = const Omittable.absent(), this.dismissalApprovedBy = const Omittable.absent(), });

factory WebhookCodeScanningAlertClosedByUserAlert.fromJson(Map<String, dynamic> json) { return WebhookCodeScanningAlertClosedByUserAlert(
  assignees: (json['assignees'] as List<dynamic>?)?.map((e) => SimpleUser.fromJson(e as Map<String, dynamic>)).toList(),
  createdAt: DateTime.parse(json['created_at'] as String),
  dismissedAt: DateTime.parse(json['dismissed_at'] as String),
  dismissedBy: json['dismissed_by'] != null ? WebhookCodeScanningAlertClosedByUserAlertDismissedBy.fromJson(json['dismissed_by'] as Map<String, dynamic>) : null,
  dismissedComment: json.containsKey('dismissed_comment') ? Omittable(json['dismissed_comment'] != null ? CodeScanningAlertDismissedComment.fromJson(json['dismissed_comment'] as String) : null) : const Omittable.absent(),
  dismissedReason: json['dismissed_reason'] != null ? WebhookCodeScanningAlertClosedByUserAlertDismissedReason.fromJson(json['dismissed_reason'] as String) : null,
  fixedAt: json.containsKey('fixed_at') ? Omittable(json['fixed_at']) : const Omittable.absent(),
  htmlUrl: Uri.parse(json['html_url'] as String),
  mostRecentInstance: json.containsKey('most_recent_instance') ? Omittable(json['most_recent_instance'] != null ? WebhookCodeScanningAlertClosedByUserAlertMostRecentInstance.fromJson(json['most_recent_instance'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  number: (json['number'] as num).toInt(),
  rule: WebhookCodeScanningAlertClosedByUserAlertRule.fromJson(json['rule'] as Map<String, dynamic>),
  state: WebhookCodeScanningAlertClosedByUserAlertState.fromJson(json['state'] as String),
  tool: WebhookCodeScanningAlertClosedByUserAlertTool.fromJson(json['tool'] as Map<String, dynamic>),
  url: Uri.parse(json['url'] as String),
  dismissalApprovedBy: json.containsKey('dismissal_approved_by') ? Omittable(json['dismissal_approved_by'] != null ? WebhookCodeScanningAlertClosedByUserAlertDismissalApprovedBy.fromJson(json['dismissal_approved_by'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

final List<SimpleUser>? assignees;

/// The time that the alert was created in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ.`
final DateTime createdAt;

/// The time that the alert was dismissed in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
final DateTime dismissedAt;

final WebhookCodeScanningAlertClosedByUserAlertDismissedBy? dismissedBy;

/// The dismissal comment associated with the dismissal of the alert.
final Omittable<CodeScanningAlertDismissedComment?> dismissedComment;

/// The reason for dismissing or closing the alert.
final WebhookCodeScanningAlertClosedByUserAlertDismissedReason? dismissedReason;

/// The time that the alert was fixed in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
final Omittable<dynamic> fixedAt;

/// The GitHub URL of the alert resource.
final Uri htmlUrl;

final Omittable<WebhookCodeScanningAlertClosedByUserAlertMostRecentInstance?> mostRecentInstance;

/// The code scanning alert number.
final int number;

final WebhookCodeScanningAlertClosedByUserAlertRule rule;

/// State of a code scanning alert.
final WebhookCodeScanningAlertClosedByUserAlertState state;

final WebhookCodeScanningAlertClosedByUserAlertTool tool;

final Uri url;

final Omittable<WebhookCodeScanningAlertClosedByUserAlertDismissalApprovedBy?> dismissalApprovedBy;

Map<String, dynamic> toJson() { return {
  if (assignees != null) 'assignees': assignees?.map((e) => e.toJson()).toList(),
  'created_at': createdAt.toIso8601String(),
  'dismissed_at': dismissedAt.toIso8601String(),
  'dismissed_by': dismissedBy?.toJson(),
  if (dismissedComment.isPresent) 'dismissed_comment': dismissedComment.value?.toJson(),
  'dismissed_reason': dismissedReason?.toJson(),
  if (fixedAt.isPresent) 'fixed_at': fixedAt.value,
  'html_url': htmlUrl.toString(),
  if (mostRecentInstance.isPresent) 'most_recent_instance': mostRecentInstance.value?.toJson(),
  'number': number,
  'rule': rule.toJson(),
  'state': state.toJson(),
  'tool': tool.toJson(),
  'url': url.toString(),
  if (dismissalApprovedBy.isPresent) 'dismissal_approved_by': dismissalApprovedBy.value?.toJson(),
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
WebhookCodeScanningAlertClosedByUserAlert copyWith({List<SimpleUser>? Function()? assignees, DateTime? createdAt, DateTime? dismissedAt, WebhookCodeScanningAlertClosedByUserAlertDismissedBy? Function()? dismissedBy, Omittable<CodeScanningAlertDismissedComment?>? dismissedComment, WebhookCodeScanningAlertClosedByUserAlertDismissedReason? Function()? dismissedReason, Omittable<dynamic>? fixedAt, Uri? htmlUrl, Omittable<WebhookCodeScanningAlertClosedByUserAlertMostRecentInstance?>? mostRecentInstance, int? number, WebhookCodeScanningAlertClosedByUserAlertRule? rule, WebhookCodeScanningAlertClosedByUserAlertState? state, WebhookCodeScanningAlertClosedByUserAlertTool? tool, Uri? url, Omittable<WebhookCodeScanningAlertClosedByUserAlertDismissalApprovedBy?>? dismissalApprovedBy, }) { return WebhookCodeScanningAlertClosedByUserAlert(
  assignees: assignees != null ? assignees() : this.assignees,
  createdAt: createdAt ?? this.createdAt,
  dismissedAt: dismissedAt ?? this.dismissedAt,
  dismissedBy: dismissedBy != null ? dismissedBy() : this.dismissedBy,
  dismissedComment: dismissedComment ?? this.dismissedComment,
  dismissedReason: dismissedReason != null ? dismissedReason() : this.dismissedReason,
  fixedAt: fixedAt ?? this.fixedAt,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  mostRecentInstance: mostRecentInstance ?? this.mostRecentInstance,
  number: number ?? this.number,
  rule: rule ?? this.rule,
  state: state ?? this.state,
  tool: tool ?? this.tool,
  url: url ?? this.url,
  dismissalApprovedBy: dismissalApprovedBy ?? this.dismissalApprovedBy,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookCodeScanningAlertClosedByUserAlert &&
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
          url == other.url &&
          dismissalApprovedBy == other.dismissalApprovedBy; } 
@override int get hashCode { return Object.hash(Object.hashAll(assignees ?? const []), createdAt, dismissedAt, dismissedBy, dismissedComment, dismissedReason, fixedAt, htmlUrl, mostRecentInstance, number, rule, state, tool, url, dismissalApprovedBy); } 
@override String toString() { return 'WebhookCodeScanningAlertClosedByUserAlert(assignees: $assignees, createdAt: $createdAt, dismissedAt: $dismissedAt, dismissedBy: $dismissedBy, dismissedComment: $dismissedComment, dismissedReason: $dismissedReason, fixedAt: $fixedAt, htmlUrl: $htmlUrl, mostRecentInstance: $mostRecentInstance, number: $number, rule: $rule, state: $state, tool: $tool, url: $url, dismissalApprovedBy: $dismissalApprovedBy)'; } 
 }
