// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'organization_actions_variable.dart';final class ActionsListOrgVariablesResponse {const ActionsListOrgVariablesResponse({required this.totalCount, required this.variables, });

factory ActionsListOrgVariablesResponse.fromJson(Map<String, dynamic> json) { return ActionsListOrgVariablesResponse(
  totalCount: (json['total_count'] as num).toInt(),
  variables: (json['variables'] as List<dynamic>).map((e) => OrganizationActionsVariable.fromJson(e as Map<String, dynamic>)).toList(),
); }

final int totalCount;

final List<OrganizationActionsVariable> variables;

Map<String, dynamic> toJson() { return {
  'total_count': totalCount,
  'variables': variables.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('total_count') && json['total_count'] is num &&
      json.containsKey('variables'); } 
ActionsListOrgVariablesResponse copyWith({int? totalCount, List<OrganizationActionsVariable>? variables, }) { return ActionsListOrgVariablesResponse(
  totalCount: totalCount ?? this.totalCount,
  variables: variables ?? this.variables,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsListOrgVariablesResponse &&
          totalCount == other.totalCount &&
          listEquals(variables, other.variables); } 
@override int get hashCode { return Object.hash(totalCount, Object.hashAll(variables)); } 
@override String toString() { return 'ActionsListOrgVariablesResponse(totalCount: $totalCount, variables: $variables)'; } 
 }
