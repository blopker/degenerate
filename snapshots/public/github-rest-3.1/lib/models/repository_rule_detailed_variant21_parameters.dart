// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'repository_rule_params_code_scanning_tool.dart';@immutable final class RepositoryRuleDetailedVariant21Parameters {const RepositoryRuleDetailedVariant21Parameters({required this.codeScanningTools});

factory RepositoryRuleDetailedVariant21Parameters.fromJson(Map<String, dynamic> json) { return RepositoryRuleDetailedVariant21Parameters(
  codeScanningTools: (json['code_scanning_tools'] as List<dynamic>).map((e) => RepositoryRuleParamsCodeScanningTool.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Tools that must provide code scanning results for this rule to pass.
final List<RepositoryRuleParamsCodeScanningTool> codeScanningTools;

Map<String, dynamic> toJson() { return {
  'code_scanning_tools': codeScanningTools.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code_scanning_tools'); } 
RepositoryRuleDetailedVariant21Parameters copyWith({List<RepositoryRuleParamsCodeScanningTool>? codeScanningTools}) { return RepositoryRuleDetailedVariant21Parameters(
  codeScanningTools: codeScanningTools ?? this.codeScanningTools,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleDetailedVariant21Parameters &&
          listEquals(codeScanningTools, other.codeScanningTools); } 
@override int get hashCode { return Object.hashAll(codeScanningTools).hashCode; } 
@override String toString() { return 'RepositoryRuleDetailedVariant21Parameters(codeScanningTools: $codeScanningTools)'; } 
 }
