// GENERATED CODE - DO NOT MODIFY BY HAND

final class ClientKeyParam2CustomerAcceptanceOnline {const ClientKeyParam2CustomerAcceptanceOnline({this.ipAddress, this.userAgent, });

factory ClientKeyParam2CustomerAcceptanceOnline.fromJson(Map<String, dynamic> json) { return ClientKeyParam2CustomerAcceptanceOnline(
  ipAddress: json['ip_address'] as String?,
  userAgent: json['user_agent'] as String?,
); }

final String? ipAddress;

final String? userAgent;

Map<String, dynamic> toJson() { return {
  'ip_address': ?ipAddress,
  'user_agent': ?userAgent,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ip_address', 'user_agent'}.contains(key)); } 
ClientKeyParam2CustomerAcceptanceOnline copyWith({String Function()? ipAddress, String Function()? userAgent, }) { return ClientKeyParam2CustomerAcceptanceOnline(
  ipAddress: ipAddress != null ? ipAddress() : this.ipAddress,
  userAgent: userAgent != null ? userAgent() : this.userAgent,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ClientKeyParam2CustomerAcceptanceOnline &&
          ipAddress == other.ipAddress &&
          userAgent == other.userAgent; } 
@override int get hashCode { return Object.hash(ipAddress, userAgent); } 
@override String toString() { return 'ClientKeyParam2CustomerAcceptanceOnline(ipAddress: $ipAddress, userAgent: $userAgent)'; } 
 }
