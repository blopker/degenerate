// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'deployment_protection_rule.dart';final class ReposGetAllDeploymentProtectionRulesResponse {const ReposGetAllDeploymentProtectionRulesResponse({this.totalCount, this.customDeploymentProtectionRules, });

factory ReposGetAllDeploymentProtectionRulesResponse.fromJson(Map<String, dynamic> json) { return ReposGetAllDeploymentProtectionRulesResponse(
  totalCount: json['total_count'] != null ? (json['total_count'] as num).toInt() : null,
  customDeploymentProtectionRules: (json['custom_deployment_protection_rules'] as List<dynamic>?)?.map((e) => DeploymentProtectionRule.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The number of enabled custom deployment protection rules for this environment
final int? totalCount;

final List<DeploymentProtectionRule>? customDeploymentProtectionRules;

Map<String, dynamic> toJson() { return {
  'total_count': ?totalCount,
  if (customDeploymentProtectionRules != null) 'custom_deployment_protection_rules': customDeploymentProtectionRules?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ReposGetAllDeploymentProtectionRulesResponse copyWith({int Function()? totalCount, List<DeploymentProtectionRule> Function()? customDeploymentProtectionRules, }) { return ReposGetAllDeploymentProtectionRulesResponse(
  totalCount: totalCount != null ? totalCount() : this.totalCount,
  customDeploymentProtectionRules: customDeploymentProtectionRules != null ? customDeploymentProtectionRules() : this.customDeploymentProtectionRules,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposGetAllDeploymentProtectionRulesResponse &&
          totalCount == other.totalCount &&
          listEquals(customDeploymentProtectionRules, other.customDeploymentProtectionRules); } 
@override int get hashCode { return Object.hash(totalCount, Object.hashAll(customDeploymentProtectionRules ?? const [])); } 
@override String toString() { return 'ReposGetAllDeploymentProtectionRulesResponse(totalCount: $totalCount, customDeploymentProtectionRules: $customDeploymentProtectionRules)'; } 
 }
