// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_visibility_mnm_mnm_rule_automatic_advertisement.dart';import 'magic_visibility_mnm_mnm_rule_bandwidth_threshold.dart';import 'magic_visibility_mnm_mnm_rule_duration.dart';import 'magic_visibility_mnm_mnm_rule_ip_prefix.dart';import 'magic_visibility_mnm_mnm_rule_name.dart';import 'magic_visibility_mnm_mnm_rule_packet_threshold.dart';import 'magic_visibility_mnm_rule_identifier.dart';@immutable final class MagicNetworkMonitoringRulesUpdateRulesRequest {const MagicNetworkMonitoringRulesUpdateRulesRequest({required this.duration, required this.name, this.automaticAdvertisement, this.bandwidth, this.id, this.packetThreshold, this.prefixes, });

factory MagicNetworkMonitoringRulesUpdateRulesRequest.fromJson(Map<String, dynamic> json) { return MagicNetworkMonitoringRulesUpdateRulesRequest(
  automaticAdvertisement: json['automatic_advertisement'] != null ? MagicVisibilityMnmMnmRuleAutomaticAdvertisement.fromJson(json['automatic_advertisement'] as bool) : null,
  bandwidth: json['bandwidth'] != null ? MagicVisibilityMnmMnmRuleBandwidthThreshold.fromJson(json['bandwidth'] as num) : null,
  duration: MagicVisibilityMnmMnmRuleDuration.fromJson(json['duration'] as String),
  id: json['id'] != null ? MagicVisibilityMnmRuleIdentifier.fromJson(json['id'] as String) : null,
  name: MagicVisibilityMnmMnmRuleName.fromJson(json['name'] as String),
  packetThreshold: json['packet_threshold'] != null ? MagicVisibilityMnmMnmRulePacketThreshold.fromJson(json['packet_threshold'] as num) : null,
  prefixes: (json['prefixes'] as List<dynamic>?)?.map((e) => MagicVisibilityMnmMnmRuleIpPrefix.fromJson(e as String)).toList(),
); }

/// Toggle on if you would like Cloudflare to automatically advertise the IP Prefixes within the rule via Magic Transit when the rule is triggered. Only available for users of Magic Transit.
final MagicVisibilityMnmMnmRuleAutomaticAdvertisement? automaticAdvertisement;

/// The number of bits per second for the rule. When this value is exceeded for the set duration, an alert notification is sent. Minimum of 1 and no maximum.
final MagicVisibilityMnmMnmRuleBandwidthThreshold? bandwidth;

/// The amount of time that the rule threshold must be exceeded to send an alert notification. The final value must be equivalent to one of the following 8 values ["1m","5m","10m","15m","20m","30m","45m","60m"].
final MagicVisibilityMnmMnmRuleDuration duration;

/// The id of the rule. Must be unique.
final MagicVisibilityMnmRuleIdentifier? id;

/// The name of the rule. Must be unique. Supports characters A-Z, a-z, 0-9, underscore (_), dash (-), period (.), and tilde (~). You can’t have a space in the rule name. Max 256 characters.
final MagicVisibilityMnmMnmRuleName name;

/// The number of packets per second for the rule. When this value is exceeded for the set duration, an alert notification is sent. Minimum of 1 and no maximum.
final MagicVisibilityMnmMnmRulePacketThreshold? packetThreshold;

final List<MagicVisibilityMnmMnmRuleIpPrefix>? prefixes;

Map<String, dynamic> toJson() { return {
  if (automaticAdvertisement != null) 'automatic_advertisement': automaticAdvertisement?.toJson(),
  if (bandwidth != null) 'bandwidth': bandwidth?.toJson(),
  'duration': duration.toJson(),
  if (id != null) 'id': id?.toJson(),
  'name': name.toJson(),
  if (packetThreshold != null) 'packet_threshold': packetThreshold?.toJson(),
  if (prefixes != null) 'prefixes': prefixes?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('duration') &&
      json.containsKey('name'); } 
MagicNetworkMonitoringRulesUpdateRulesRequest copyWith({MagicVisibilityMnmMnmRuleAutomaticAdvertisement? Function()? automaticAdvertisement, MagicVisibilityMnmMnmRuleBandwidthThreshold Function()? bandwidth, MagicVisibilityMnmMnmRuleDuration? duration, MagicVisibilityMnmRuleIdentifier Function()? id, MagicVisibilityMnmMnmRuleName? name, MagicVisibilityMnmMnmRulePacketThreshold Function()? packetThreshold, List<MagicVisibilityMnmMnmRuleIpPrefix> Function()? prefixes, }) { return MagicNetworkMonitoringRulesUpdateRulesRequest(
  automaticAdvertisement: automaticAdvertisement != null ? automaticAdvertisement() : this.automaticAdvertisement,
  bandwidth: bandwidth != null ? bandwidth() : this.bandwidth,
  duration: duration ?? this.duration,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  packetThreshold: packetThreshold != null ? packetThreshold() : this.packetThreshold,
  prefixes: prefixes != null ? prefixes() : this.prefixes,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicNetworkMonitoringRulesUpdateRulesRequest &&
          automaticAdvertisement == other.automaticAdvertisement &&
          bandwidth == other.bandwidth &&
          duration == other.duration &&
          id == other.id &&
          name == other.name &&
          packetThreshold == other.packetThreshold &&
          listEquals(prefixes, other.prefixes); } 
@override int get hashCode { return Object.hash(automaticAdvertisement, bandwidth, duration, id, name, packetThreshold, Object.hashAll(prefixes ?? const [])); } 
@override String toString() { return 'MagicNetworkMonitoringRulesUpdateRulesRequest(automaticAdvertisement: $automaticAdvertisement, bandwidth: $bandwidth, duration: $duration, id: $id, name: $name, packetThreshold: $packetThreshold, prefixes: $prefixes)'; } 
 }
