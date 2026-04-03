// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_azure_group_rule_azure_ad.dart';/// Matches an Azure group.
/// Requires an Azure identity provider.
@immutable final class AccessAzureGroupRule {const AccessAzureGroupRule({required this.azureAd});

factory AccessAzureGroupRule.fromJson(Map<String, dynamic> json) { return AccessAzureGroupRule(
  azureAd: AccessAzureGroupRuleAzureAd.fromJson(json['azureAD'] as Map<String, dynamic>),
); }

final AccessAzureGroupRuleAzureAd azureAd;

Map<String, dynamic> toJson() { return {
  'azureAD': azureAd.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('azureAD'); } 
AccessAzureGroupRule copyWith({AccessAzureGroupRuleAzureAd? azureAd}) { return AccessAzureGroupRule(
  azureAd: azureAd ?? this.azureAd,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessAzureGroupRule &&
          azureAd == other.azureAd; } 
@override int get hashCode { return azureAd.hashCode; } 
@override String toString() { return 'AccessAzureGroupRule(azureAd: $azureAd)'; } 
 }
