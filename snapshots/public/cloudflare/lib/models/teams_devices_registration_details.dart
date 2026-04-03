// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'teams_devices_policy_summary.dart';/// The summary of a registration.
@immutable final class TeamsDevicesRegistrationDetails {const TeamsDevicesRegistrationDetails({this.policy});

factory TeamsDevicesRegistrationDetails.fromJson(Map<String, dynamic> json) { return TeamsDevicesRegistrationDetails(
  policy: json['policy'] != null ? TeamsDevicesPolicySummary.fromJson(json['policy'] as Map<String, dynamic>) : null,
); }

/// A summary of the device profile evaluated for the registration.
final TeamsDevicesPolicySummary? policy;

Map<String, dynamic> toJson() { return {
  if (policy != null) 'policy': policy?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'policy'}.contains(key)); } 
TeamsDevicesRegistrationDetails copyWith({TeamsDevicesPolicySummary? Function()? policy}) { return TeamsDevicesRegistrationDetails(
  policy: policy != null ? policy() : this.policy,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesRegistrationDetails &&
          policy == other.policy; } 
@override int get hashCode { return policy.hashCode; } 
@override String toString() { return 'TeamsDevicesRegistrationDetails(policy: $policy)'; } 
 }
