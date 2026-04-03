// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_ip_list_rule_ip_list.dart';/// Matches an IP address from a list.
@immutable final class AccessIpListRule {const AccessIpListRule({required this.ipList});

factory AccessIpListRule.fromJson(Map<String, dynamic> json) { return AccessIpListRule(
  ipList: AccessIpListRuleIpList.fromJson(json['ip_list'] as Map<String, dynamic>),
); }

final AccessIpListRuleIpList ipList;

Map<String, dynamic> toJson() { return {
  'ip_list': ipList.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('ip_list'); } 
AccessIpListRule copyWith({AccessIpListRuleIpList? ipList}) { return AccessIpListRule(
  ipList: ipList ?? this.ipList,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessIpListRule &&
          ipList == other.ipList; } 
@override int get hashCode { return ipList.hashCode; } 
@override String toString() { return 'AccessIpListRule(ipList: $ipList)'; } 
 }
