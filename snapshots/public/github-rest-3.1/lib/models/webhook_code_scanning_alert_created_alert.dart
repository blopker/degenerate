// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'code_scanning_alert_dismissed_comment.dart';import 'simple_user.dart';import 'webhook_code_scanning_alert_created_alert_most_recent_instance.dart';import 'webhook_code_scanning_alert_created_alert_rule.dart';import 'webhook_code_scanning_alert_created_alert_tool.dart';/// State of a code scanning alert. Events for alerts found outside the default branch will return a `null` value until they are dismissed or fixed.
@immutable final class WebhookCodeScanningAlertCreatedAlertState {const WebhookCodeScanningAlertCreatedAlertState._(this.value);

factory WebhookCodeScanningAlertCreatedAlertState.fromJson(String json) { return switch (json) {
  'open' => open,
  'dismissed' => dismissed,
  'null' => $null,
  _ => WebhookCodeScanningAlertCreatedAlertState._(json),
}; }

static const WebhookCodeScanningAlertCreatedAlertState open = WebhookCodeScanningAlertCreatedAlertState._('open');

static const WebhookCodeScanningAlertCreatedAlertState dismissed = WebhookCodeScanningAlertCreatedAlertState._('dismissed');

static const WebhookCodeScanningAlertCreatedAlertState $null = WebhookCodeScanningAlertCreatedAlertState._('null');

static const List<WebhookCodeScanningAlertCreatedAlertState> values = [open, dismissed, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookCodeScanningAlertCreatedAlertState && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookCodeScanningAlertCreatedAlertState($value)'; } 
 }
/// The code scanning alert involved in the event.
@immutable final class WebhookCodeScanningAlertCreatedAlert {const WebhookCodeScanningAlertCreatedAlert({required this.createdAt, required this.dismissedAt, required this.dismissedBy, required this.dismissedReason, required this.htmlUrl, required this.number, required this.rule, required this.state, required this.tool, required this.url, this.dismissedComment = const Omittable.absent(), this.fixedAt = const Omittable.absent(), this.instancesUrl, this.mostRecentInstance = const Omittable.absent(), this.updatedAt = const Omittable.absent(), this.dismissalApprovedBy = const Omittable.absent(), this.assignees, });

factory WebhookCodeScanningAlertCreatedAlert.fromJson(Map<String, dynamic> json) { return WebhookCodeScanningAlertCreatedAlert(
  createdAt: json['created_at'] != null ? DateTime.parse(json['created_at'] as String) : null,
  dismissedAt: json['dismissed_at'],
  dismissedBy: json['dismissed_by'],
  dismissedComment: json.containsKey('dismissed_comment') ? Omittable(json['dismissed_comment'] != null ? CodeScanningAlertDismissedComment.fromJson(json['dismissed_comment'] as String) : null) : const Omittable.absent(),
  dismissedReason: json['dismissed_reason'],
  fixedAt: json.containsKey('fixed_at') ? Omittable(json['fixed_at']) : const Omittable.absent(),
  htmlUrl: Uri.parse(json['html_url'] as String),
  instancesUrl: json['instances_url'] as String?,
  mostRecentInstance: json.containsKey('most_recent_instance') ? Omittable(json['most_recent_instance'] != null ? WebhookCodeScanningAlertCreatedAlertMostRecentInstance.fromJson(json['most_recent_instance'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  number: (json['number'] as num).toInt(),
  rule: WebhookCodeScanningAlertCreatedAlertRule.fromJson(json['rule'] as Map<String, dynamic>),
  state: json['state'] != null ? WebhookCodeScanningAlertCreatedAlertState.fromJson(json['state'] as String) : null,
  tool: json['tool'] != null ? WebhookCodeScanningAlertCreatedAlertTool.fromJson(json['tool'] as Map<String, dynamic>) : null,
  updatedAt: json.containsKey('updated_at') ? Omittable(json['updated_at'] as String?) : const Omittable.absent(),
  url: Uri.parse(json['url'] as String),
  dismissalApprovedBy: json.containsKey('dismissal_approved_by') ? Omittable(json['dismissal_approved_by']) : const Omittable.absent(),
  assignees: (json['assignees'] as List<dynamic>?)?.map((e) => SimpleUser.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The time that the alert was created in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ.`
final DateTime? createdAt;

/// The time that the alert was dismissed in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
final dynamic dismissedAt;

final dynamic dismissedBy;

/// The dismissal comment associated with the dismissal of the alert.
final Omittable<CodeScanningAlertDismissedComment?> dismissedComment;

/// The reason for dismissing or closing the alert. Can be one of: `false positive`, `won't fix`, and `used in tests`.
final dynamic dismissedReason;

/// The time that the alert was fixed in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
final Omittable<dynamic> fixedAt;

/// The GitHub URL of the alert resource.
final Uri htmlUrl;

final String? instancesUrl;

final Omittable<WebhookCodeScanningAlertCreatedAlertMostRecentInstance?> mostRecentInstance;

/// The code scanning alert number.
final int number;

final WebhookCodeScanningAlertCreatedAlertRule rule;

/// State of a code scanning alert. Events for alerts found outside the default branch will return a `null` value until they are dismissed or fixed.
final WebhookCodeScanningAlertCreatedAlertState? state;

final WebhookCodeScanningAlertCreatedAlertTool? tool;

final Omittable<String?> updatedAt;

final Uri url;

final Omittable<dynamic> dismissalApprovedBy;

final List<SimpleUser>? assignees;

Map<String, dynamic> toJson() { return {
  'created_at': createdAt?.toIso8601String(),
  'dismissed_at': dismissedAt,
  'dismissed_by': dismissedBy,
  if (dismissedComment.isPresent) 'dismissed_comment': dismissedComment.value?.toJson(),
  'dismissed_reason': dismissedReason,
  if (fixedAt.isPresent) 'fixed_at': fixedAt.value,
  'html_url': htmlUrl.toString(),
  'instances_url': ?instancesUrl,
  if (mostRecentInstance.isPresent) 'most_recent_instance': mostRecentInstance.value?.toJson(),
  'number': number,
  'rule': rule.toJson(),
  'state': state?.toJson(),
  'tool': tool?.toJson(),
  if (updatedAt.isPresent) 'updated_at': updatedAt.value,
  'url': url.toString(),
  if (dismissalApprovedBy.isPresent) 'dismissal_approved_by': dismissalApprovedBy.value,
  if (assignees != null) 'assignees': assignees?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('dismissed_at') &&
      json.containsKey('dismissed_by') &&
      json.containsKey('dismissed_reason') &&
      json.containsKey('html_url') && json['html_url'] is String &&
      json.containsKey('number') && json['number'] is num &&
      json.containsKey('rule') &&
      json.containsKey('state') &&
      json.containsKey('tool') &&
      json.containsKey('url') && json['url'] is String; } 
WebhookCodeScanningAlertCreatedAlert copyWith({DateTime? Function()? createdAt, dynamic Function()? dismissedAt, dynamic Function()? dismissedBy, Omittable<CodeScanningAlertDismissedComment?>? dismissedComment, dynamic Function()? dismissedReason, Omittable<dynamic>? fixedAt, Uri? htmlUrl, String? Function()? instancesUrl, Omittable<WebhookCodeScanningAlertCreatedAlertMostRecentInstance?>? mostRecentInstance, int? number, WebhookCodeScanningAlertCreatedAlertRule? rule, WebhookCodeScanningAlertCreatedAlertState? Function()? state, WebhookCodeScanningAlertCreatedAlertTool? Function()? tool, Omittable<String?>? updatedAt, Uri? url, Omittable<dynamic>? dismissalApprovedBy, List<SimpleUser>? Function()? assignees, }) { return WebhookCodeScanningAlertCreatedAlert(
  createdAt: createdAt != null ? createdAt() : this.createdAt,
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
  tool: tool != null ? tool() : this.tool,
  updatedAt: updatedAt ?? this.updatedAt,
  url: url ?? this.url,
  dismissalApprovedBy: dismissalApprovedBy ?? this.dismissalApprovedBy,
  assignees: assignees != null ? assignees() : this.assignees,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookCodeScanningAlertCreatedAlert &&
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
          dismissalApprovedBy == other.dismissalApprovedBy &&
          listEquals(assignees, other.assignees); } 
@override int get hashCode { return Object.hash(createdAt, dismissedAt, dismissedBy, dismissedComment, dismissedReason, fixedAt, htmlUrl, instancesUrl, mostRecentInstance, number, rule, state, tool, updatedAt, url, dismissalApprovedBy, Object.hashAll(assignees ?? const [])); } 
@override String toString() { return 'WebhookCodeScanningAlertCreatedAlert(createdAt: $createdAt, dismissedAt: $dismissedAt, dismissedBy: $dismissedBy, dismissedComment: $dismissedComment, dismissedReason: $dismissedReason, fixedAt: $fixedAt, htmlUrl: $htmlUrl, instancesUrl: $instancesUrl, mostRecentInstance: $mostRecentInstance, number: $number, rule: $rule, state: $state, tool: $tool, updatedAt: $updatedAt, url: $url, dismissalApprovedBy: $dismissalApprovedBy, assignees: $assignees)'; } 
 }
