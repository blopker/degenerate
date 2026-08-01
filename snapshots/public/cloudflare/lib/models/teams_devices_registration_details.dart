// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'teams_devices_policy_summary.dart';/// The summary of a registration.
@immutable final class TeamsDevicesRegistrationDetails {const TeamsDevicesRegistrationDetails({this.policy = const Omittable.absent()});

factory TeamsDevicesRegistrationDetails.fromJson(Map<String, dynamic> json) { return TeamsDevicesRegistrationDetails(
  policy: json.containsKey('policy') ? Omittable(json['policy'] != null ? TeamsDevicesPolicySummary.fromJson(json['policy'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// A summary of the device profile evaluated for the registration.
final Omittable<TeamsDevicesPolicySummary?> policy;

Map<String, dynamic> toJson() { return {
  if (policy.isPresent) 'policy': policy.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'policy'}.contains(key)); } 
TeamsDevicesRegistrationDetails copyWith({Omittable<TeamsDevicesPolicySummary?>? policy}) { return TeamsDevicesRegistrationDetails(
  policy: policy ?? this.policy,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesRegistrationDetails &&
          policy == other.policy; } 
@override int get hashCode { return policy.hashCode; } 
@override String toString() { return 'TeamsDevicesRegistrationDetails(policy: $policy)'; } 
 }
