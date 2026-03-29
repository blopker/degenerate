// GENERATED CODE - DO NOT MODIFY BY HAND

import 'copilot_dotcom_chat.dart';import 'copilot_dotcom_pull_requests.dart';import 'copilot_ide_chat.dart';import 'copilot_ide_code_completions.dart';/// Copilot usage metrics for a given day.
final class CopilotUsageMetricsDay {const CopilotUsageMetricsDay({required this.date, this.totalActiveUsers, this.totalEngagedUsers, this.copilotIdeCodeCompletions, this.copilotIdeChat, this.copilotDotcomChat, this.copilotDotcomPullRequests, });

factory CopilotUsageMetricsDay.fromJson(Map<String, dynamic> json) { return CopilotUsageMetricsDay(
  date: json['date'] as String,
  totalActiveUsers: json['total_active_users'] != null ? (json['total_active_users'] as num).toInt() : null,
  totalEngagedUsers: json['total_engaged_users'] != null ? (json['total_engaged_users'] as num).toInt() : null,
  copilotIdeCodeCompletions: json['copilot_ide_code_completions'] != null ? CopilotIdeCodeCompletions.fromJson(json['copilot_ide_code_completions'] as Map<String, dynamic>) : null,
  copilotIdeChat: json['copilot_ide_chat'] != null ? CopilotIdeChat.fromJson(json['copilot_ide_chat'] as Map<String, dynamic>) : null,
  copilotDotcomChat: json['copilot_dotcom_chat'] != null ? CopilotDotcomChat.fromJson(json['copilot_dotcom_chat'] as Map<String, dynamic>) : null,
  copilotDotcomPullRequests: json['copilot_dotcom_pull_requests'] != null ? CopilotDotcomPullRequests.fromJson(json['copilot_dotcom_pull_requests'] as Map<String, dynamic>) : null,
); }

/// The date for which the usage metrics are aggregated, in `YYYY-MM-DD` format.
final String date;

/// The total number of Copilot users with activity belonging to any Copilot feature, globally, for the given day. Includes passive activity such as receiving a code suggestion, as well as engagement activity such as accepting a code suggestion or prompting chat. Does not include authentication events. Is not limited to the individual features detailed on the endpoint.
final int? totalActiveUsers;

/// The total number of Copilot users who engaged with any Copilot feature, for the given day. Examples include but are not limited to accepting a code suggestion, prompting Copilot chat, or triggering a PR Summary. Does not include authentication events. Is not limited to the individual features detailed on the endpoint.
final int? totalEngagedUsers;

final CopilotIdeCodeCompletions? copilotIdeCodeCompletions;

final CopilotIdeChat? copilotIdeChat;

final CopilotDotcomChat? copilotDotcomChat;

final CopilotDotcomPullRequests? copilotDotcomPullRequests;

Map<String, dynamic> toJson() { return {
  'date': date,
  'total_active_users': ?totalActiveUsers,
  'total_engaged_users': ?totalEngagedUsers,
  if (copilotIdeCodeCompletions != null) 'copilot_ide_code_completions': copilotIdeCodeCompletions?.toJson(),
  if (copilotIdeChat != null) 'copilot_ide_chat': copilotIdeChat?.toJson(),
  if (copilotDotcomChat != null) 'copilot_dotcom_chat': copilotDotcomChat?.toJson(),
  if (copilotDotcomPullRequests != null) 'copilot_dotcom_pull_requests': copilotDotcomPullRequests?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('date') && json['date'] is String; } 
CopilotUsageMetricsDay copyWith({String? date, int Function()? totalActiveUsers, int Function()? totalEngagedUsers, CopilotIdeCodeCompletions Function()? copilotIdeCodeCompletions, CopilotIdeChat Function()? copilotIdeChat, CopilotDotcomChat Function()? copilotDotcomChat, CopilotDotcomPullRequests Function()? copilotDotcomPullRequests, }) { return CopilotUsageMetricsDay(
  date: date ?? this.date,
  totalActiveUsers: totalActiveUsers != null ? totalActiveUsers() : this.totalActiveUsers,
  totalEngagedUsers: totalEngagedUsers != null ? totalEngagedUsers() : this.totalEngagedUsers,
  copilotIdeCodeCompletions: copilotIdeCodeCompletions != null ? copilotIdeCodeCompletions() : this.copilotIdeCodeCompletions,
  copilotIdeChat: copilotIdeChat != null ? copilotIdeChat() : this.copilotIdeChat,
  copilotDotcomChat: copilotDotcomChat != null ? copilotDotcomChat() : this.copilotDotcomChat,
  copilotDotcomPullRequests: copilotDotcomPullRequests != null ? copilotDotcomPullRequests() : this.copilotDotcomPullRequests,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CopilotUsageMetricsDay &&
          date == other.date &&
          totalActiveUsers == other.totalActiveUsers &&
          totalEngagedUsers == other.totalEngagedUsers &&
          copilotIdeCodeCompletions == other.copilotIdeCodeCompletions &&
          copilotIdeChat == other.copilotIdeChat &&
          copilotDotcomChat == other.copilotDotcomChat &&
          copilotDotcomPullRequests == other.copilotDotcomPullRequests; } 
@override int get hashCode { return Object.hash(date, totalActiveUsers, totalEngagedUsers, copilotIdeCodeCompletions, copilotIdeChat, copilotDotcomChat, copilotDotcomPullRequests); } 
@override String toString() { return 'CopilotUsageMetricsDay(date: $date, totalActiveUsers: $totalActiveUsers, totalEngagedUsers: $totalEngagedUsers, copilotIdeCodeCompletions: $copilotIdeCodeCompletions, copilotIdeChat: $copilotIdeChat, copilotDotcomChat: $copilotDotcomChat, copilotDotcomPullRequests: $copilotDotcomPullRequests)'; } 
 }
