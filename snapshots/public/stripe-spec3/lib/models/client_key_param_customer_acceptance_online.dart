// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ClientKeyParamCustomerAcceptanceOnline {const ClientKeyParamCustomerAcceptanceOnline({this.ipAddress, this.userAgent, });

factory ClientKeyParamCustomerAcceptanceOnline.fromJson(Map<String, dynamic> json) { return ClientKeyParamCustomerAcceptanceOnline(
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
ClientKeyParamCustomerAcceptanceOnline copyWith({String Function()? ipAddress, String Function()? userAgent, }) { return ClientKeyParamCustomerAcceptanceOnline(
  ipAddress: ipAddress != null ? ipAddress() : this.ipAddress,
  userAgent: userAgent != null ? userAgent() : this.userAgent,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ClientKeyParamCustomerAcceptanceOnline &&
          ipAddress == other.ipAddress &&
          userAgent == other.userAgent; } 
@override int get hashCode { return Object.hash(ipAddress, userAgent); } 
@override String toString() { return 'ClientKeyParamCustomerAcceptanceOnline(ipAddress: $ipAddress, userAgent: $userAgent)'; } 
 }
