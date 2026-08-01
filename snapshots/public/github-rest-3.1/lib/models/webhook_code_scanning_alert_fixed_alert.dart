// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'code_scanning_alert_dismissed_comment.dart';import 'simple_user.dart';import 'webhook_code_scanning_alert_fixed_alert_dismissed_by.dart';import 'webhook_code_scanning_alert_fixed_alert_most_recent_instance.dart';import 'webhook_code_scanning_alert_fixed_alert_rule.dart';import 'webhook_code_scanning_alert_fixed_alert_tool.dart';/// The reason for dismissing or closing the alert.
@immutable final class WebhookCodeScanningAlertFixedAlertDismissedReason {const WebhookCodeScanningAlertFixedAlertDismissedReason._(this.value);

factory WebhookCodeScanningAlertFixedAlertDismissedReason.fromJson(String json) { return switch (json) {
  'false positive' => falsePositive,
  "won't fix" => wontFix,
  'used in tests' => usedInTests,
  'null' => $null,
  _ => WebhookCodeScanningAlertFixedAlertDismissedReason._(json),
}; }

static const WebhookCodeScanningAlertFixedAlertDismissedReason falsePositive = WebhookCodeScanningAlertFixedAlertDismissedReason._('false positive');

static const WebhookCodeScanningAlertFixedAlertDismissedReason wontFix = WebhookCodeScanningAlertFixedAlertDismissedReason._("won't fix");

static const WebhookCodeScanningAlertFixedAlertDismissedReason usedInTests = WebhookCodeScanningAlertFixedAlertDismissedReason._('used in tests');

static const WebhookCodeScanningAlertFixedAlertDismissedReason $null = WebhookCodeScanningAlertFixedAlertDismissedReason._('null');

static const List<WebhookCodeScanningAlertFixedAlertDismissedReason> values = [falsePositive, wontFix, usedInTests, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookCodeScanningAlertFixedAlertDismissedReason && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookCodeScanningAlertFixedAlertDismissedReason($value)'; } 
 }
/// State of a code scanning alert. Events for alerts found outside the default branch will return a `null` value until they are dismissed or fixed.
@immutable final class WebhookCodeScanningAlertFixedAlertState {const WebhookCodeScanningAlertFixedAlertState._(this.value);

factory WebhookCodeScanningAlertFixedAlertState.fromJson(String json) { return switch (json) {
  'fixed' => fixed,
  'null' => $null,
  _ => WebhookCodeScanningAlertFixedAlertState._(json),
}; }

static const WebhookCodeScanningAlertFixedAlertState fixed = WebhookCodeScanningAlertFixedAlertState._('fixed');

static const WebhookCodeScanningAlertFixedAlertState $null = WebhookCodeScanningAlertFixedAlertState._('null');

static const List<WebhookCodeScanningAlertFixedAlertState> values = [fixed, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookCodeScanningAlertFixedAlertState && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookCodeScanningAlertFixedAlertState($value)'; } 
 }
/// The code scanning alert involved in the event.
@immutable final class WebhookCodeScanningAlertFixedAlert {const WebhookCodeScanningAlertFixedAlert({required this.createdAt, required this.dismissedAt, required this.dismissedBy, required this.dismissedReason, required this.htmlUrl, required this.number, required this.rule, required this.state, required this.tool, required this.url, this.assignees, this.dismissedComment = const Omittable.absent(), this.fixedAt = const Omittable.absent(), this.instancesUrl, this.mostRecentInstance = const Omittable.absent(), });

factory WebhookCodeScanningAlertFixedAlert.fromJson(Map<String, dynamic> json) { return WebhookCodeScanningAlertFixedAlert(
  assignees: (json['assignees'] as List<dynamic>?)?.map((e) => SimpleUser.fromJson(e as Map<String, dynamic>)).toList(),
  createdAt: DateTime.parse(json['created_at'] as String),
  dismissedAt: json['dismissed_at'] != null ? DateTime.parse(json['dismissed_at'] as String) : null,
  dismissedBy: json['dismissed_by'] != null ? WebhookCodeScanningAlertFixedAlertDismissedBy.fromJson(json['dismissed_by'] as Map<String, dynamic>) : null,
  dismissedComment: json.containsKey('dismissed_comment') ? Omittable(json['dismissed_comment'] != null ? CodeScanningAlertDismissedComment.fromJson(json['dismissed_comment'] as String) : null) : const Omittable.absent(),
  dismissedReason: json['dismissed_reason'] != null ? WebhookCodeScanningAlertFixedAlertDismissedReason.fromJson(json['dismissed_reason'] as String) : null,
  fixedAt: json.containsKey('fixed_at') ? Omittable(json['fixed_at']) : const Omittable.absent(),
  htmlUrl: Uri.parse(json['html_url'] as String),
  instancesUrl: json['instances_url'] != null ? Uri.parse(json['instances_url'] as String) : null,
  mostRecentInstance: json.containsKey('most_recent_instance') ? Omittable(json['most_recent_instance'] != null ? WebhookCodeScanningAlertFixedAlertMostRecentInstance.fromJson(json['most_recent_instance'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  number: (json['number'] as num).toInt(),
  rule: WebhookCodeScanningAlertFixedAlertRule.fromJson(json['rule'] as Map<String, dynamic>),
  state: json['state'] != null ? WebhookCodeScanningAlertFixedAlertState.fromJson(json['state'] as String) : null,
  tool: WebhookCodeScanningAlertFixedAlertTool.fromJson(json['tool'] as Map<String, dynamic>),
  url: Uri.parse(json['url'] as String),
); }

final List<SimpleUser>? assignees;

/// The time that the alert was created in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ.`
final DateTime createdAt;

/// The time that the alert was dismissed in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
final DateTime? dismissedAt;

final WebhookCodeScanningAlertFixedAlertDismissedBy? dismissedBy;

/// The dismissal comment associated with the dismissal of the alert.
final Omittable<CodeScanningAlertDismissedComment?> dismissedComment;

/// The reason for dismissing or closing the alert.
final WebhookCodeScanningAlertFixedAlertDismissedReason? dismissedReason;

/// The time that the alert was fixed in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
final Omittable<dynamic> fixedAt;

/// The GitHub URL of the alert resource.
final Uri htmlUrl;

final Uri? instancesUrl;

final Omittable<WebhookCodeScanningAlertFixedAlertMostRecentInstance?> mostRecentInstance;

/// The code scanning alert number.
final int number;

final WebhookCodeScanningAlertFixedAlertRule rule;

/// State of a code scanning alert. Events for alerts found outside the default branch will return a `null` value until they are dismissed or fixed.
final WebhookCodeScanningAlertFixedAlertState? state;

final WebhookCodeScanningAlertFixedAlertTool tool;

final Uri url;

Map<String, dynamic> toJson() { return {
  if (assignees != null) 'assignees': assignees?.map((e) => e.toJson()).toList(),
  'created_at': createdAt.toIso8601String(),
  'dismissed_at': dismissedAt?.toIso8601String(),
  'dismissed_by': dismissedBy?.toJson(),
  if (dismissedComment.isPresent) 'dismissed_comment': dismissedComment.value?.toJson(),
  'dismissed_reason': dismissedReason?.toJson(),
  if (fixedAt.isPresent) 'fixed_at': fixedAt.value,
  'html_url': htmlUrl.toString(),
  if (instancesUrl != null) 'instances_url': instancesUrl?.toString(),
  if (mostRecentInstance.isPresent) 'most_recent_instance': mostRecentInstance.value?.toJson(),
  'number': number,
  'rule': rule.toJson(),
  'state': state?.toJson(),
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
WebhookCodeScanningAlertFixedAlert copyWith({List<SimpleUser>? Function()? assignees, DateTime? createdAt, DateTime? Function()? dismissedAt, WebhookCodeScanningAlertFixedAlertDismissedBy? Function()? dismissedBy, Omittable<CodeScanningAlertDismissedComment?>? dismissedComment, WebhookCodeScanningAlertFixedAlertDismissedReason? Function()? dismissedReason, Omittable<dynamic>? fixedAt, Uri? htmlUrl, Uri? Function()? instancesUrl, Omittable<WebhookCodeScanningAlertFixedAlertMostRecentInstance?>? mostRecentInstance, int? number, WebhookCodeScanningAlertFixedAlertRule? rule, WebhookCodeScanningAlertFixedAlertState? Function()? state, WebhookCodeScanningAlertFixedAlertTool? tool, Uri? url, }) { return WebhookCodeScanningAlertFixedAlert(
  assignees: assignees != null ? assignees() : this.assignees,
  createdAt: createdAt ?? this.createdAt,
  dismissedAt: dismissedAt != null ? dismissedAt() : this.dismissedAt,
  dismissedBy: dismissedBy != null ? dismissedBy() : this.dismissedBy,
  dismissedComment: dismissedComment ?? this.dismissedComment,
  dismissedReason: dismissedReason != null ? dismissedReason() : this.dismissedReason,
  fixedAt: fixedAt ?? this.fixedAt,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  instancesUrl: instancesUrl != null ? instancesUrl() : this.instancesUrl,
  mostRecentInstance: mostRecentInstance ?? this.mostRecentInstance,
  number: number ?? this.number,
  rule: rule ?? this.rule,
  state: state != null ? state() : this.state,
  tool: tool ?? this.tool,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookCodeScanningAlertFixedAlert &&
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
          url == other.url; } 
@override int get hashCode { return Object.hash(Object.hashAll(assignees ?? const []), createdAt, dismissedAt, dismissedBy, dismissedComment, dismissedReason, fixedAt, htmlUrl, instancesUrl, mostRecentInstance, number, rule, state, tool, url); } 
@override String toString() { return 'WebhookCodeScanningAlertFixedAlert(assignees: $assignees, createdAt: $createdAt, dismissedAt: $dismissedAt, dismissedBy: $dismissedBy, dismissedComment: $dismissedComment, dismissedReason: $dismissedReason, fixedAt: $fixedAt, htmlUrl: $htmlUrl, instancesUrl: $instancesUrl, mostRecentInstance: $mostRecentInstance, number: $number, rule: $rule, state: $state, tool: $tool, url: $url)'; } 
 }
