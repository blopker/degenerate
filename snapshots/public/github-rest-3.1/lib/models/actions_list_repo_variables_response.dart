// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'actions_variable.dart';final class ActionsListRepoVariablesResponse {const ActionsListRepoVariablesResponse({required this.totalCount, required this.variables, });

factory ActionsListRepoVariablesResponse.fromJson(Map<String, dynamic> json) { return ActionsListRepoVariablesResponse(
  totalCount: (json['total_count'] as num).toInt(),
  variables: (json['variables'] as List<dynamic>).map((e) => ActionsVariable.fromJson(e as Map<String, dynamic>)).toList(),
); }

final int totalCount;

final List<ActionsVariable> variables;

Map<String, dynamic> toJson() { return {
  'total_count': totalCount,
  'variables': variables.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('total_count') && json['total_count'] is num &&
      json.containsKey('variables'); } 
ActionsListRepoVariablesResponse copyWith({int? totalCount, List<ActionsVariable>? variables, }) { return ActionsListRepoVariablesResponse(
  totalCount: totalCount ?? this.totalCount,
  variables: variables ?? this.variables,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsListRepoVariablesResponse &&
          totalCount == other.totalCount &&
          listEquals(variables, other.variables); } 
@override int get hashCode { return Object.hash(totalCount, Object.hashAll(variables)); } 
@override String toString() { return 'ActionsListRepoVariablesResponse(totalCount: $totalCount, variables: $variables)'; } 
 }
