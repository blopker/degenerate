// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'repository_rule_params_code_scanning_tool.dart';@immutable final class RepositoryRuleCodeScanningParameters {const RepositoryRuleCodeScanningParameters({required this.codeScanningTools});

factory RepositoryRuleCodeScanningParameters.fromJson(Map<String, dynamic> json) { return RepositoryRuleCodeScanningParameters(
  codeScanningTools: (json['code_scanning_tools'] as List<dynamic>).map((e) => RepositoryRuleParamsCodeScanningTool.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Tools that must provide code scanning results for this rule to pass.
final List<RepositoryRuleParamsCodeScanningTool> codeScanningTools;

Map<String, dynamic> toJson() { return {
  'code_scanning_tools': codeScanningTools.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code_scanning_tools'); } 
RepositoryRuleCodeScanningParameters copyWith({List<RepositoryRuleParamsCodeScanningTool>? codeScanningTools}) { return RepositoryRuleCodeScanningParameters(
  codeScanningTools: codeScanningTools ?? this.codeScanningTools,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleCodeScanningParameters &&
          listEquals(codeScanningTools, other.codeScanningTools); } 
@override int get hashCode { return Object.hashAll(codeScanningTools).hashCode; } 
@override String toString() { return 'RepositoryRuleCodeScanningParameters(codeScanningTools: $codeScanningTools)'; } 
 }
