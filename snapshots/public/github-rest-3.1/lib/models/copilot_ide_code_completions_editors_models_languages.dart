// GENERATED CODE - DO NOT MODIFY BY HAND

/// Usage metrics for a given language for the given editor for Copilot code completions.
final class CopilotIdeCodeCompletionsEditorsModelsLanguages {const CopilotIdeCodeCompletionsEditorsModelsLanguages({this.name, this.totalEngagedUsers, this.totalCodeSuggestions, this.totalCodeAcceptances, this.totalCodeLinesSuggested, this.totalCodeLinesAccepted, });

factory CopilotIdeCodeCompletionsEditorsModelsLanguages.fromJson(Map<String, dynamic> json) { return CopilotIdeCodeCompletionsEditorsModelsLanguages(
  name: json['name'] as String?,
  totalEngagedUsers: json['total_engaged_users'] != null ? (json['total_engaged_users'] as num).toInt() : null,
  totalCodeSuggestions: json['total_code_suggestions'] != null ? (json['total_code_suggestions'] as num).toInt() : null,
  totalCodeAcceptances: json['total_code_acceptances'] != null ? (json['total_code_acceptances'] as num).toInt() : null,
  totalCodeLinesSuggested: json['total_code_lines_suggested'] != null ? (json['total_code_lines_suggested'] as num).toInt() : null,
  totalCodeLinesAccepted: json['total_code_lines_accepted'] != null ? (json['total_code_lines_accepted'] as num).toInt() : null,
); }

/// Name of the language used for Copilot code completion suggestions, for the given editor.
final String? name;

/// Number of users who accepted at least one Copilot code completion suggestion for the given editor, for the given language. Includes both full and partial acceptances.
final int? totalEngagedUsers;

/// The number of Copilot code suggestions generated for the given editor, for the given language.
final int? totalCodeSuggestions;

/// The number of Copilot code suggestions accepted for the given editor, for the given language. Includes both full and partial acceptances.
final int? totalCodeAcceptances;

/// The number of lines of code suggested by Copilot code completions for the given editor, for the given language.
final int? totalCodeLinesSuggested;

/// The number of lines of code accepted from Copilot code suggestions for the given editor, for the given language.
final int? totalCodeLinesAccepted;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  'total_engaged_users': ?totalEngagedUsers,
  'total_code_suggestions': ?totalCodeSuggestions,
  'total_code_acceptances': ?totalCodeAcceptances,
  'total_code_lines_suggested': ?totalCodeLinesSuggested,
  'total_code_lines_accepted': ?totalCodeLinesAccepted,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name', 'total_engaged_users', 'total_code_suggestions', 'total_code_acceptances', 'total_code_lines_suggested', 'total_code_lines_accepted'}.contains(key)); } 
CopilotIdeCodeCompletionsEditorsModelsLanguages copyWith({String Function()? name, int Function()? totalEngagedUsers, int Function()? totalCodeSuggestions, int Function()? totalCodeAcceptances, int Function()? totalCodeLinesSuggested, int Function()? totalCodeLinesAccepted, }) { return CopilotIdeCodeCompletionsEditorsModelsLanguages(
  name: name != null ? name() : this.name,
  totalEngagedUsers: totalEngagedUsers != null ? totalEngagedUsers() : this.totalEngagedUsers,
  totalCodeSuggestions: totalCodeSuggestions != null ? totalCodeSuggestions() : this.totalCodeSuggestions,
  totalCodeAcceptances: totalCodeAcceptances != null ? totalCodeAcceptances() : this.totalCodeAcceptances,
  totalCodeLinesSuggested: totalCodeLinesSuggested != null ? totalCodeLinesSuggested() : this.totalCodeLinesSuggested,
  totalCodeLinesAccepted: totalCodeLinesAccepted != null ? totalCodeLinesAccepted() : this.totalCodeLinesAccepted,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CopilotIdeCodeCompletionsEditorsModelsLanguages &&
          name == other.name &&
          totalEngagedUsers == other.totalEngagedUsers &&
          totalCodeSuggestions == other.totalCodeSuggestions &&
          totalCodeAcceptances == other.totalCodeAcceptances &&
          totalCodeLinesSuggested == other.totalCodeLinesSuggested &&
          totalCodeLinesAccepted == other.totalCodeLinesAccepted; } 
@override int get hashCode { return Object.hash(name, totalEngagedUsers, totalCodeSuggestions, totalCodeAcceptances, totalCodeLinesSuggested, totalCodeLinesAccepted); } 
@override String toString() { return 'CopilotIdeCodeCompletionsEditorsModelsLanguages(name: $name, totalEngagedUsers: $totalEngagedUsers, totalCodeSuggestions: $totalCodeSuggestions, totalCodeAcceptances: $totalCodeAcceptances, totalCodeLinesSuggested: $totalCodeLinesSuggested, totalCodeLinesAccepted: $totalCodeLinesAccepted)'; } 
 }
