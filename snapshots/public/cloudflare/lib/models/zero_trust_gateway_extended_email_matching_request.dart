// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Configures user email settings for firewall policies. When you enable this, the system standardizes email addresses in the identity portion of the rule to match extended email variants in firewall policies. When you disable this setting, the system matches email addresses exactly as you provide them. Enable this setting if your email uses `.` or `+` modifiers.
@immutable final class ZeroTrustGatewayExtendedEmailMatchingRequest {const ZeroTrustGatewayExtendedEmailMatchingRequest({this.enabled = const Omittable.absent()});

factory ZeroTrustGatewayExtendedEmailMatchingRequest.fromJson(Map<String, dynamic> json) {return ZeroTrustGatewayExtendedEmailMatchingRequest(
  enabled: json.containsKey('enabled') ? Omittable(json['enabled'] as bool?) : const Omittable.absent(),
);}

/// Specify whether to match all variants of user emails (with + or . modifiers) used as criteria in Firewall policies.
final Omittable<bool?> enabled;

Map<String, dynamic> toJson() {return {
  if (enabled.isPresent) 'enabled': enabled.value,
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'enabled'}.contains(key));}
ZeroTrustGatewayExtendedEmailMatchingRequest copyWith({Omittable<bool?>? enabled}) {return ZeroTrustGatewayExtendedEmailMatchingRequest(
  enabled: enabled ?? this.enabled,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is ZeroTrustGatewayExtendedEmailMatchingRequest &&
          enabled == other.enabled;}
@override int get hashCode {return enabled.hashCode;}
@override String toString() {return 'ZeroTrustGatewayExtendedEmailMatchingRequest(enabled: $enabled)';}
}
