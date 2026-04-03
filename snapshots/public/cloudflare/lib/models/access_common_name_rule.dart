// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_common_name_rule_common_name.dart';/// Matches a specific common name.
@immutable final class AccessCommonNameRule {const AccessCommonNameRule({required this.commonName});

factory AccessCommonNameRule.fromJson(Map<String, dynamic> json) { return AccessCommonNameRule(
  commonName: AccessCommonNameRuleCommonName.fromJson(json['common_name'] as Map<String, dynamic>),
); }

final AccessCommonNameRuleCommonName commonName;

Map<String, dynamic> toJson() { return {
  'common_name': commonName.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('common_name'); } 
AccessCommonNameRule copyWith({AccessCommonNameRuleCommonName? commonName}) { return AccessCommonNameRule(
  commonName: commonName ?? this.commonName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessCommonNameRule &&
          commonName == other.commonName; } 
@override int get hashCode { return commonName.hashCode; } 
@override String toString() { return 'AccessCommonNameRule(commonName: $commonName)'; } 
 }
