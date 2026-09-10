// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class OnlineAcceptance {const OnlineAcceptance({this.ipAddress = const Omittable.absent(), this.userAgent = const Omittable.absent(), });

factory OnlineAcceptance.fromJson(Map<String, dynamic> json) { return OnlineAcceptance(
  ipAddress: json.containsKey('ip_address') ? Omittable(json['ip_address'] as String?) : const Omittable.absent(),
  userAgent: json.containsKey('user_agent') ? Omittable(json['user_agent'] as String?) : const Omittable.absent(),
); }

/// The customer accepts the mandate from this IP address.
final Omittable<String?> ipAddress;

/// The customer accepts the mandate using the user agent of the browser.
final Omittable<String?> userAgent;

Map<String, dynamic> toJson() { return {
  if (ipAddress.isPresent) 'ip_address': ipAddress.value,
  if (userAgent.isPresent) 'user_agent': userAgent.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ip_address', 'user_agent'}.contains(key)); } 
OnlineAcceptance copyWith({Omittable<String?>? ipAddress, Omittable<String?>? userAgent, }) { return OnlineAcceptance(
  ipAddress: ipAddress ?? this.ipAddress,
  userAgent: userAgent ?? this.userAgent,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OnlineAcceptance &&
          ipAddress == other.ipAddress &&
          userAgent == other.userAgent; } 
@override int get hashCode { return Object.hash(ipAddress, userAgent); } 
@override String toString() { return 'OnlineAcceptance(ipAddress: $ipAddress, userAgent: $userAgent)'; } 
 }
