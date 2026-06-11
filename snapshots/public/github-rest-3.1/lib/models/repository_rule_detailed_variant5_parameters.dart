// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// When set to ALLGREEN, the merge commit created by merge queue for each PR in the group must pass all required checks to merge. When set to HEADGREEN, only the commit at the head of the merge group, i.e. the commit containing changes from all of the PRs in the group, must pass its required checks to merge.
@immutable final class RepositoryRuleDetailedVariant5ParametersGroupingStrategy {const RepositoryRuleDetailedVariant5ParametersGroupingStrategy._(this.value);

factory RepositoryRuleDetailedVariant5ParametersGroupingStrategy.fromJson(String json) { return switch (json) {
  'ALLGREEN' => allgreen,
  'HEADGREEN' => headgreen,
  _ => RepositoryRuleDetailedVariant5ParametersGroupingStrategy._(json),
}; }

static const RepositoryRuleDetailedVariant5ParametersGroupingStrategy allgreen = RepositoryRuleDetailedVariant5ParametersGroupingStrategy._('ALLGREEN');

static const RepositoryRuleDetailedVariant5ParametersGroupingStrategy headgreen = RepositoryRuleDetailedVariant5ParametersGroupingStrategy._('HEADGREEN');

static const List<RepositoryRuleDetailedVariant5ParametersGroupingStrategy> values = [allgreen, headgreen];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedVariant5ParametersGroupingStrategy && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailedVariant5ParametersGroupingStrategy($value)'; } 
 }
/// Method to use when merging changes from queued pull requests.
@immutable final class RepositoryRuleDetailedVariant5ParametersMergeMethod {const RepositoryRuleDetailedVariant5ParametersMergeMethod._(this.value);

factory RepositoryRuleDetailedVariant5ParametersMergeMethod.fromJson(String json) { return switch (json) {
  'MERGE' => merge,
  'SQUASH' => squash,
  'REBASE' => rebase,
  _ => RepositoryRuleDetailedVariant5ParametersMergeMethod._(json),
}; }

static const RepositoryRuleDetailedVariant5ParametersMergeMethod merge = RepositoryRuleDetailedVariant5ParametersMergeMethod._('MERGE');

static const RepositoryRuleDetailedVariant5ParametersMergeMethod squash = RepositoryRuleDetailedVariant5ParametersMergeMethod._('SQUASH');

static const RepositoryRuleDetailedVariant5ParametersMergeMethod rebase = RepositoryRuleDetailedVariant5ParametersMergeMethod._('REBASE');

static const List<RepositoryRuleDetailedVariant5ParametersMergeMethod> values = [merge, squash, rebase];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedVariant5ParametersMergeMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailedVariant5ParametersMergeMethod($value)'; } 
 }
@immutable final class RepositoryRuleDetailedVariant5Parameters {const RepositoryRuleDetailedVariant5Parameters({required this.checkResponseTimeoutMinutes, required this.groupingStrategy, required this.maxEntriesToBuild, required this.maxEntriesToMerge, required this.mergeMethod, required this.minEntriesToMerge, required this.minEntriesToMergeWaitMinutes, });

factory RepositoryRuleDetailedVariant5Parameters.fromJson(Map<String, dynamic> json) { return RepositoryRuleDetailedVariant5Parameters(
  checkResponseTimeoutMinutes: (json['check_response_timeout_minutes'] as num).toInt(),
  groupingStrategy: RepositoryRuleDetailedVariant5ParametersGroupingStrategy.fromJson(json['grouping_strategy'] as String),
  maxEntriesToBuild: (json['max_entries_to_build'] as num).toInt(),
  maxEntriesToMerge: (json['max_entries_to_merge'] as num).toInt(),
  mergeMethod: RepositoryRuleDetailedVariant5ParametersMergeMethod.fromJson(json['merge_method'] as String),
  minEntriesToMerge: (json['min_entries_to_merge'] as num).toInt(),
  minEntriesToMergeWaitMinutes: (json['min_entries_to_merge_wait_minutes'] as num).toInt(),
); }

/// Maximum time for a required status check to report a conclusion. After this much time has elapsed, checks that have not reported a conclusion will be assumed to have failed
final int checkResponseTimeoutMinutes;

/// When set to ALLGREEN, the merge commit created by merge queue for each PR in the group must pass all required checks to merge. When set to HEADGREEN, only the commit at the head of the merge group, i.e. the commit containing changes from all of the PRs in the group, must pass its required checks to merge.
final RepositoryRuleDetailedVariant5ParametersGroupingStrategy groupingStrategy;

/// Limit the number of queued pull requests requesting checks and workflow runs at the same time.
final int maxEntriesToBuild;

/// The maximum number of PRs that will be merged together in a group.
final int maxEntriesToMerge;

/// Method to use when merging changes from queued pull requests.
final RepositoryRuleDetailedVariant5ParametersMergeMethod mergeMethod;

/// The minimum number of PRs that will be merged together in a group.
final int minEntriesToMerge;

/// The time merge queue should wait after the first PR is added to the queue for the minimum group size to be met. After this time has elapsed, the minimum group size will be ignored and a smaller group will be merged.
final int minEntriesToMergeWaitMinutes;

Map<String, dynamic> toJson() { return {
  'check_response_timeout_minutes': checkResponseTimeoutMinutes,
  'grouping_strategy': groupingStrategy.toJson(),
  'max_entries_to_build': maxEntriesToBuild,
  'max_entries_to_merge': maxEntriesToMerge,
  'merge_method': mergeMethod.toJson(),
  'min_entries_to_merge': minEntriesToMerge,
  'min_entries_to_merge_wait_minutes': minEntriesToMergeWaitMinutes,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('check_response_timeout_minutes') && json['check_response_timeout_minutes'] is num &&
      json.containsKey('grouping_strategy') &&
      json.containsKey('max_entries_to_build') && json['max_entries_to_build'] is num &&
      json.containsKey('max_entries_to_merge') && json['max_entries_to_merge'] is num &&
      json.containsKey('merge_method') &&
      json.containsKey('min_entries_to_merge') && json['min_entries_to_merge'] is num &&
      json.containsKey('min_entries_to_merge_wait_minutes') && json['min_entries_to_merge_wait_minutes'] is num; } 
RepositoryRuleDetailedVariant5Parameters copyWith({int? checkResponseTimeoutMinutes, RepositoryRuleDetailedVariant5ParametersGroupingStrategy? groupingStrategy, int? maxEntriesToBuild, int? maxEntriesToMerge, RepositoryRuleDetailedVariant5ParametersMergeMethod? mergeMethod, int? minEntriesToMerge, int? minEntriesToMergeWaitMinutes, }) { return RepositoryRuleDetailedVariant5Parameters(
  checkResponseTimeoutMinutes: checkResponseTimeoutMinutes ?? this.checkResponseTimeoutMinutes,
  groupingStrategy: groupingStrategy ?? this.groupingStrategy,
  maxEntriesToBuild: maxEntriesToBuild ?? this.maxEntriesToBuild,
  maxEntriesToMerge: maxEntriesToMerge ?? this.maxEntriesToMerge,
  mergeMethod: mergeMethod ?? this.mergeMethod,
  minEntriesToMerge: minEntriesToMerge ?? this.minEntriesToMerge,
  minEntriesToMergeWaitMinutes: minEntriesToMergeWaitMinutes ?? this.minEntriesToMergeWaitMinutes,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleDetailedVariant5Parameters &&
          checkResponseTimeoutMinutes == other.checkResponseTimeoutMinutes &&
          groupingStrategy == other.groupingStrategy &&
          maxEntriesToBuild == other.maxEntriesToBuild &&
          maxEntriesToMerge == other.maxEntriesToMerge &&
          mergeMethod == other.mergeMethod &&
          minEntriesToMerge == other.minEntriesToMerge &&
          minEntriesToMergeWaitMinutes == other.minEntriesToMergeWaitMinutes; } 
@override int get hashCode { return Object.hash(checkResponseTimeoutMinutes, groupingStrategy, maxEntriesToBuild, maxEntriesToMerge, mergeMethod, minEntriesToMerge, minEntriesToMergeWaitMinutes); } 
@override String toString() { return 'RepositoryRuleDetailedVariant5Parameters(checkResponseTimeoutMinutes: $checkResponseTimeoutMinutes, groupingStrategy: $groupingStrategy, maxEntriesToBuild: $maxEntriesToBuild, maxEntriesToMerge: $maxEntriesToMerge, mergeMethod: $mergeMethod, minEntriesToMerge: $minEntriesToMerge, minEntriesToMergeWaitMinutes: $minEntriesToMergeWaitMinutes)'; } 
 }
