// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// This hash contains details about the online acceptance.
@immutable final class ConfirmationTokensResourceMandateDataResourceCustomerAcceptanceResourceOnline {const ConfirmationTokensResourceMandateDataResourceCustomerAcceptanceResourceOnline({this.ipAddress = const Omittable.absent(), this.userAgent = const Omittable.absent(), });

factory ConfirmationTokensResourceMandateDataResourceCustomerAcceptanceResourceOnline.fromJson(Map<String, dynamic> json) { return ConfirmationTokensResourceMandateDataResourceCustomerAcceptanceResourceOnline(
  ipAddress: json.containsKey('ip_address') ? Omittable(json['ip_address'] as String?) : const Omittable.absent(),
  userAgent: json.containsKey('user_agent') ? Omittable(json['user_agent'] as String?) : const Omittable.absent(),
); }

/// The IP address from which the Mandate was accepted by the customer.
final Omittable<String?> ipAddress;

/// The user agent of the browser from which the Mandate was accepted by the customer.
final Omittable<String?> userAgent;

Map<String, dynamic> toJson() { return {
  if (ipAddress.isPresent) 'ip_address': ipAddress.value,
  if (userAgent.isPresent) 'user_agent': userAgent.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ip_address', 'user_agent'}.contains(key)); } 
ConfirmationTokensResourceMandateDataResourceCustomerAcceptanceResourceOnline copyWith({Omittable<String?>? ipAddress, Omittable<String?>? userAgent, }) { return ConfirmationTokensResourceMandateDataResourceCustomerAcceptanceResourceOnline(
  ipAddress: ipAddress ?? this.ipAddress,
  userAgent: userAgent ?? this.userAgent,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ConfirmationTokensResourceMandateDataResourceCustomerAcceptanceResourceOnline &&
          ipAddress == other.ipAddress &&
          userAgent == other.userAgent; } 
@override int get hashCode { return Object.hash(ipAddress, userAgent); } 
@override String toString() { return 'ConfirmationTokensResourceMandateDataResourceCustomerAcceptanceResourceOnline(ipAddress: $ipAddress, userAgent: $userAgent)'; } 
 }
