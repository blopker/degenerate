// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class TreasuryOutboundPaymentsResourceOutboundPaymentResourceEndUserDetails {const TreasuryOutboundPaymentsResourceOutboundPaymentResourceEndUserDetails({required this.present, this.ipAddress = const Omittable.absent(), });

factory TreasuryOutboundPaymentsResourceOutboundPaymentResourceEndUserDetails.fromJson(Map<String, dynamic> json) { return TreasuryOutboundPaymentsResourceOutboundPaymentResourceEndUserDetails(
  ipAddress: json.containsKey('ip_address') ? Omittable(json['ip_address'] as String?) : const Omittable.absent(),
  present: json['present'] as bool,
); }

/// IP address of the user initiating the OutboundPayment. Set if `present` is set to `true`. IP address collection is required for risk and compliance reasons. This will be used to help determine if the OutboundPayment is authorized or should be blocked.
final Omittable<String?> ipAddress;

/// `true` if the OutboundPayment creation request is being made on behalf of an end user by a platform. Otherwise, `false`.
final bool present;

Map<String, dynamic> toJson() { return {
  if (ipAddress.isPresent) 'ip_address': ipAddress.value,
  'present': present,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('present') && json['present'] is bool; } 
TreasuryOutboundPaymentsResourceOutboundPaymentResourceEndUserDetails copyWith({Omittable<String?>? ipAddress, bool? present, }) { return TreasuryOutboundPaymentsResourceOutboundPaymentResourceEndUserDetails(
  ipAddress: ipAddress ?? this.ipAddress,
  present: present ?? this.present,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TreasuryOutboundPaymentsResourceOutboundPaymentResourceEndUserDetails &&
          ipAddress == other.ipAddress &&
          present == other.present; } 
@override int get hashCode { return Object.hash(ipAddress, present); } 
@override String toString() { return 'TreasuryOutboundPaymentsResourceOutboundPaymentResourceEndUserDetails(ipAddress: $ipAddress, present: $present)'; } 
 }
