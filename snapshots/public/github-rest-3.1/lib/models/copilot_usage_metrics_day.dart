// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'copilot_dotcom_chat.dart';import 'copilot_dotcom_pull_requests.dart';import 'copilot_ide_chat.dart';import 'copilot_ide_code_completions.dart';/// Copilot usage metrics for a given day.
@immutable final class CopilotUsageMetricsDay {const CopilotUsageMetricsDay({required this.date, this.totalActiveUsers, this.totalEngagedUsers, this.copilotIdeCodeCompletions = const Omittable.absent(), this.copilotIdeChat = const Omittable.absent(), this.copilotDotcomChat = const Omittable.absent(), this.copilotDotcomPullRequests = const Omittable.absent(), this.additionalProperties = const {}, });

factory CopilotUsageMetricsDay.fromJson(Map<String, dynamic> json) { return CopilotUsageMetricsDay(
  date: json['date'] as String,
  totalActiveUsers: json['total_active_users'] != null ? (json['total_active_users'] as num).toInt() : null,
  totalEngagedUsers: json['total_engaged_users'] != null ? (json['total_engaged_users'] as num).toInt() : null,
  copilotIdeCodeCompletions: json.containsKey('copilot_ide_code_completions') ? Omittable(json['copilot_ide_code_completions'] != null ? CopilotIdeCodeCompletions.fromJson(json['copilot_ide_code_completions'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  copilotIdeChat: json.containsKey('copilot_ide_chat') ? Omittable(json['copilot_ide_chat'] != null ? CopilotIdeChat.fromJson(json['copilot_ide_chat'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  copilotDotcomChat: json.containsKey('copilot_dotcom_chat') ? Omittable(json['copilot_dotcom_chat'] != null ? CopilotDotcomChat.fromJson(json['copilot_dotcom_chat'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  copilotDotcomPullRequests: json.containsKey('copilot_dotcom_pull_requests') ? Omittable(json['copilot_dotcom_pull_requests'] != null ? CopilotDotcomPullRequests.fromJson(json['copilot_dotcom_pull_requests'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  additionalProperties: Map.fromEntries(json.entries.where((e) => !const {'date', 'total_active_users', 'total_engaged_users', 'copilot_ide_code_completions', 'copilot_ide_chat', 'copilot_dotcom_chat', 'copilot_dotcom_pull_requests'}.contains(e.key))),
); }

/// The date for which the usage metrics are aggregated, in `YYYY-MM-DD` format.
final String date;

/// The total number of Copilot users with activity belonging to any Copilot feature, globally, for the given day. Includes passive activity such as receiving a code suggestion, as well as engagement activity such as accepting a code suggestion or prompting chat. Does not include authentication events. Is not limited to the individual features detailed on the endpoint.
final int? totalActiveUsers;

/// The total number of Copilot users who engaged with any Copilot feature, for the given day. Examples include but are not limited to accepting a code suggestion, prompting Copilot chat, or triggering a PR Summary. Does not include authentication events. Is not limited to the individual features detailed on the endpoint.
final int? totalEngagedUsers;

final Omittable<CopilotIdeCodeCompletions?> copilotIdeCodeCompletions;

final Omittable<CopilotIdeChat?> copilotIdeChat;

final Omittable<CopilotDotcomChat?> copilotDotcomChat;

final Omittable<CopilotDotcomPullRequests?> copilotDotcomPullRequests;

final Map<String,dynamic> additionalProperties;

Map<String, dynamic> toJson() { return {
  'date': date,
  'total_active_users': ?totalActiveUsers,
  'total_engaged_users': ?totalEngagedUsers,
  if (copilotIdeCodeCompletions.isPresent) 'copilot_ide_code_completions': copilotIdeCodeCompletions.value?.toJson(),
  if (copilotIdeChat.isPresent) 'copilot_ide_chat': copilotIdeChat.value?.toJson(),
  if (copilotDotcomChat.isPresent) 'copilot_dotcom_chat': copilotDotcomChat.value?.toJson(),
  if (copilotDotcomPullRequests.isPresent) 'copilot_dotcom_pull_requests': copilotDotcomPullRequests.value?.toJson(),
  ...additionalProperties,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('date') && json['date'] is String; } 
CopilotUsageMetricsDay copyWith({String? date, int? Function()? totalActiveUsers, int? Function()? totalEngagedUsers, Omittable<CopilotIdeCodeCompletions?>? copilotIdeCodeCompletions, Omittable<CopilotIdeChat?>? copilotIdeChat, Omittable<CopilotDotcomChat?>? copilotDotcomChat, Omittable<CopilotDotcomPullRequests?>? copilotDotcomPullRequests, Map<String, dynamic>? additionalProperties, }) { return CopilotUsageMetricsDay(
  date: date ?? this.date,
  totalActiveUsers: totalActiveUsers != null ? totalActiveUsers() : this.totalActiveUsers,
  totalEngagedUsers: totalEngagedUsers != null ? totalEngagedUsers() : this.totalEngagedUsers,
  copilotIdeCodeCompletions: copilotIdeCodeCompletions ?? this.copilotIdeCodeCompletions,
  copilotIdeChat: copilotIdeChat ?? this.copilotIdeChat,
  copilotDotcomChat: copilotDotcomChat ?? this.copilotDotcomChat,
  copilotDotcomPullRequests: copilotDotcomPullRequests ?? this.copilotDotcomPullRequests,
  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CopilotUsageMetricsDay &&
          date == other.date &&
          totalActiveUsers == other.totalActiveUsers &&
          totalEngagedUsers == other.totalEngagedUsers &&
          copilotIdeCodeCompletions == other.copilotIdeCodeCompletions &&
          copilotIdeChat == other.copilotIdeChat &&
          copilotDotcomChat == other.copilotDotcomChat &&
          copilotDotcomPullRequests == other.copilotDotcomPullRequests &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hash(date, totalActiveUsers, totalEngagedUsers, copilotIdeCodeCompletions, copilotIdeChat, copilotDotcomChat, copilotDotcomPullRequests, mapHash(additionalProperties)); } 
@override String toString() { return 'CopilotUsageMetricsDay(date: $date, totalActiveUsers: $totalActiveUsers, totalEngagedUsers: $totalEngagedUsers, copilotIdeCodeCompletions: $copilotIdeCodeCompletions, copilotIdeChat: $copilotIdeChat, copilotDotcomChat: $copilotDotcomChat, copilotDotcomPullRequests: $copilotDotcomPullRequests, additionalProperties: $additionalProperties)'; } 
 }
