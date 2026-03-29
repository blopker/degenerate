// GENERATED CODE - DO NOT MODIFY BY HAND

final class AccessIpRuleIp {const AccessIpRuleIp({required this.ip});

factory AccessIpRuleIp.fromJson(Map<String, dynamic> json) { return AccessIpRuleIp(
  ip: json['ip'] as String,
); }

/// An IPv4 or IPv6 CIDR block.
final String ip;

Map<String, dynamic> toJson() { return {
  'ip': ip,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('ip') && json['ip'] is String; } 
AccessIpRuleIp copyWith({String? ip}) { return AccessIpRuleIp(
  ip: ip ?? this.ip,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessIpRuleIp &&
          ip == other.ip; } 
@override int get hashCode { return ip.hashCode; } 
@override String toString() { return 'AccessIpRuleIp(ip: $ip)'; } 
 }
