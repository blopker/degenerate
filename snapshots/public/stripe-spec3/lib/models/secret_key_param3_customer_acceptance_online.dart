// GENERATED CODE - DO NOT MODIFY BY HAND

final class SecretKeyParam3CustomerAcceptanceOnline {const SecretKeyParam3CustomerAcceptanceOnline({required this.ipAddress, required this.userAgent, });

factory SecretKeyParam3CustomerAcceptanceOnline.fromJson(Map<String, dynamic> json) { return SecretKeyParam3CustomerAcceptanceOnline(
  ipAddress: json['ip_address'] as String,
  userAgent: json['user_agent'] as String,
); }

final String ipAddress;

final String userAgent;

Map<String, dynamic> toJson() { return {
  'ip_address': ipAddress,
  'user_agent': userAgent,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('ip_address') && json['ip_address'] is String &&
      json.containsKey('user_agent') && json['user_agent'] is String; } 
SecretKeyParam3CustomerAcceptanceOnline copyWith({String? ipAddress, String? userAgent, }) { return SecretKeyParam3CustomerAcceptanceOnline(
  ipAddress: ipAddress ?? this.ipAddress,
  userAgent: userAgent ?? this.userAgent,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecretKeyParam3CustomerAcceptanceOnline &&
          ipAddress == other.ipAddress &&
          userAgent == other.userAgent; } 
@override int get hashCode { return Object.hash(ipAddress, userAgent); } 
@override String toString() { return 'SecretKeyParam3CustomerAcceptanceOnline(ipAddress: $ipAddress, userAgent: $userAgent)'; } 
 }
