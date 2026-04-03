// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'copilot_ide_chat_editors.dart';/// Usage metrics for Copilot Chat in the IDE.
@immutable final class CopilotIdeChat {const CopilotIdeChat({this.totalEngagedUsers, this.editors, this.additionalProperties = const {}, });

factory CopilotIdeChat.fromJson(Map<String, dynamic> json) { return CopilotIdeChat(
  totalEngagedUsers: json['total_engaged_users'] != null ? (json['total_engaged_users'] as num).toInt() : null,
  editors: (json['editors'] as List<dynamic>?)?.map((e) => CopilotIdeChatEditors.fromJson(e as Map<String, dynamic>)).toList(),
  additionalProperties: Map.fromEntries(json.entries.where((e) => !const {'total_engaged_users', 'editors'}.contains(e.key))),
); }

/// Total number of users who prompted Copilot Chat in the IDE.
final int? totalEngagedUsers;

final List<CopilotIdeChatEditors>? editors;

final Map<String,dynamic> additionalProperties;

Map<String, dynamic> toJson() { return {
  'total_engaged_users': ?totalEngagedUsers,
  if (editors != null) 'editors': editors?.map((e) => e.toJson()).toList(),
  ...additionalProperties,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'total_engaged_users', 'editors'}.contains(key)); } 
CopilotIdeChat copyWith({int Function()? totalEngagedUsers, List<CopilotIdeChatEditors> Function()? editors, Map<String, dynamic>? additionalProperties, }) { return CopilotIdeChat(
  totalEngagedUsers: totalEngagedUsers != null ? totalEngagedUsers() : this.totalEngagedUsers,
  editors: editors != null ? editors() : this.editors,
  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CopilotIdeChat &&
          totalEngagedUsers == other.totalEngagedUsers &&
          listEquals(editors, other.editors) &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hash(totalEngagedUsers, Object.hashAll(editors ?? const []), Object.hashAll(additionalProperties.entries)); } 
@override String toString() { return 'CopilotIdeChat(totalEngagedUsers: $totalEngagedUsers, editors: $editors, additionalProperties: $additionalProperties)'; } 
 }
