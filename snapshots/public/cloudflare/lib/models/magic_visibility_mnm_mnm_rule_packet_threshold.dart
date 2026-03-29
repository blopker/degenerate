// GENERATED CODE - DO NOT MODIFY BY HAND

/// The number of packets per second for the rule. When this value is exceeded for the set duration, an alert notification is sent. Minimum of 1 and no maximum.
extension type const MagicVisibilityMnmMnmRulePacketThreshold(double value) {
factory MagicVisibilityMnmMnmRulePacketThreshold.fromJson(num json) => MagicVisibilityMnmMnmRulePacketThreshold(json.toDouble());

num toJson() => value;

}
