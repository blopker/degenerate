// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'repository_rule_params_workflow_file_reference.dart';@immutable final class RepositoryRuleDetailedVariant20Parameters {const RepositoryRuleDetailedVariant20Parameters({required this.workflows, this.doNotEnforceOnCreate, });

factory RepositoryRuleDetailedVariant20Parameters.fromJson(Map<String, dynamic> json) { return RepositoryRuleDetailedVariant20Parameters(
  doNotEnforceOnCreate: json['do_not_enforce_on_create'] as bool?,
  workflows: (json['workflows'] as List<dynamic>).map((e) => RepositoryRuleParamsWorkflowFileReference.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Allow repositories and branches to be created if a check would otherwise prohibit it.
final bool? doNotEnforceOnCreate;

/// Workflows that must pass for this rule to pass.
final List<RepositoryRuleParamsWorkflowFileReference> workflows;

Map<String, dynamic> toJson() { return {
  'do_not_enforce_on_create': ?doNotEnforceOnCreate,
  'workflows': workflows.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('workflows'); } 
RepositoryRuleDetailedVariant20Parameters copyWith({bool Function()? doNotEnforceOnCreate, List<RepositoryRuleParamsWorkflowFileReference>? workflows, }) { return RepositoryRuleDetailedVariant20Parameters(
  doNotEnforceOnCreate: doNotEnforceOnCreate != null ? doNotEnforceOnCreate() : this.doNotEnforceOnCreate,
  workflows: workflows ?? this.workflows,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleDetailedVariant20Parameters &&
          doNotEnforceOnCreate == other.doNotEnforceOnCreate &&
          listEquals(workflows, other.workflows); } 
@override int get hashCode { return Object.hash(doNotEnforceOnCreate, Object.hashAll(workflows)); } 
@override String toString() { return 'RepositoryRuleDetailedVariant20Parameters(doNotEnforceOnCreate: $doNotEnforceOnCreate, workflows: $workflows)'; } 
 }
