// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'bot_management_optimize_wordpress.dart';import 'bot_management_sbfm_definitely_automated.dart';import 'bot_management_sbfm_likely_config_stale_zone_configuration.dart';import 'bot_management_sbfm_static_resource_protection.dart';import 'bot_management_sbfm_verified_bots.dart';/// Super Bot Fight Mode (SBFM) action to take on likely automated requests.
@immutable final class BotManagementSbfmLikelyAutomated {const BotManagementSbfmLikelyAutomated._(this.value);

factory BotManagementSbfmLikelyAutomated.fromJson(String json) { return switch (json) {
  'allow' => allow,
  'block' => block,
  'managed_challenge' => managedChallenge,
  _ => BotManagementSbfmLikelyAutomated._(json),
}; }

static const BotManagementSbfmLikelyAutomated allow = BotManagementSbfmLikelyAutomated._('allow');

static const BotManagementSbfmLikelyAutomated block = BotManagementSbfmLikelyAutomated._('block');

static const BotManagementSbfmLikelyAutomated managedChallenge = BotManagementSbfmLikelyAutomated._('managed_challenge');

static const List<BotManagementSbfmLikelyAutomated> values = [allow, block, managedChallenge];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BotManagementSbfmLikelyAutomated && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BotManagementSbfmLikelyAutomated($value)'; } 
 }
@immutable final class BotManagementSbfmLikelyConfig {const BotManagementSbfmLikelyConfig({this.optimizeWordpress, this.sbfmDefinitelyAutomated, this.sbfmLikelyAutomated, this.sbfmStaticResourceProtection, this.sbfmVerifiedBots, this.staleZoneConfiguration, });

factory BotManagementSbfmLikelyConfig.fromJson(Map<String, dynamic> json) { return BotManagementSbfmLikelyConfig(
  optimizeWordpress: json['optimize_wordpress'] != null ? BotManagementOptimizeWordpress.fromJson(json['optimize_wordpress'] as bool) : null,
  sbfmDefinitelyAutomated: json['sbfm_definitely_automated'] != null ? BotManagementSbfmDefinitelyAutomated.fromJson(json['sbfm_definitely_automated'] as String) : null,
  sbfmLikelyAutomated: json['sbfm_likely_automated'] != null ? BotManagementSbfmLikelyAutomated.fromJson(json['sbfm_likely_automated'] as String) : null,
  sbfmStaticResourceProtection: json['sbfm_static_resource_protection'] != null ? BotManagementSbfmStaticResourceProtection.fromJson(json['sbfm_static_resource_protection'] as bool) : null,
  sbfmVerifiedBots: json['sbfm_verified_bots'] != null ? BotManagementSbfmVerifiedBots.fromJson(json['sbfm_verified_bots'] as String) : null,
  staleZoneConfiguration: json['stale_zone_configuration'] != null ? BotManagementSbfmLikelyConfigStaleZoneConfiguration.fromJson(json['stale_zone_configuration'] as Map<String, dynamic>) : null,
); }

/// Whether to optimize Super Bot Fight Mode protections for Wordpress.
final BotManagementOptimizeWordpress? optimizeWordpress;

/// Super Bot Fight Mode (SBFM) action to take on definitely automated requests.
final BotManagementSbfmDefinitelyAutomated? sbfmDefinitelyAutomated;

/// Super Bot Fight Mode (SBFM) action to take on likely automated requests.
final BotManagementSbfmLikelyAutomated? sbfmLikelyAutomated;

final BotManagementSbfmStaticResourceProtection? sbfmStaticResourceProtection;

final BotManagementSbfmVerifiedBots? sbfmVerifiedBots;

/// A read-only field that shows which unauthorized settings are currently active on the zone. These settings typically result from upgrades or downgrades.
final BotManagementSbfmLikelyConfigStaleZoneConfiguration? staleZoneConfiguration;

Map<String, dynamic> toJson() { return {
  if (optimizeWordpress != null) 'optimize_wordpress': optimizeWordpress?.toJson(),
  if (sbfmDefinitelyAutomated != null) 'sbfm_definitely_automated': sbfmDefinitelyAutomated?.toJson(),
  if (sbfmLikelyAutomated != null) 'sbfm_likely_automated': sbfmLikelyAutomated?.toJson(),
  if (sbfmStaticResourceProtection != null) 'sbfm_static_resource_protection': sbfmStaticResourceProtection?.toJson(),
  if (sbfmVerifiedBots != null) 'sbfm_verified_bots': sbfmVerifiedBots?.toJson(),
  if (staleZoneConfiguration != null) 'stale_zone_configuration': staleZoneConfiguration?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'optimize_wordpress', 'sbfm_definitely_automated', 'sbfm_likely_automated', 'sbfm_static_resource_protection', 'sbfm_verified_bots', 'stale_zone_configuration'}.contains(key)); } 
BotManagementSbfmLikelyConfig copyWith({BotManagementOptimizeWordpress Function()? optimizeWordpress, BotManagementSbfmDefinitelyAutomated Function()? sbfmDefinitelyAutomated, BotManagementSbfmLikelyAutomated Function()? sbfmLikelyAutomated, BotManagementSbfmStaticResourceProtection Function()? sbfmStaticResourceProtection, BotManagementSbfmVerifiedBots Function()? sbfmVerifiedBots, BotManagementSbfmLikelyConfigStaleZoneConfiguration Function()? staleZoneConfiguration, }) { return BotManagementSbfmLikelyConfig(
  optimizeWordpress: optimizeWordpress != null ? optimizeWordpress() : this.optimizeWordpress,
  sbfmDefinitelyAutomated: sbfmDefinitelyAutomated != null ? sbfmDefinitelyAutomated() : this.sbfmDefinitelyAutomated,
  sbfmLikelyAutomated: sbfmLikelyAutomated != null ? sbfmLikelyAutomated() : this.sbfmLikelyAutomated,
  sbfmStaticResourceProtection: sbfmStaticResourceProtection != null ? sbfmStaticResourceProtection() : this.sbfmStaticResourceProtection,
  sbfmVerifiedBots: sbfmVerifiedBots != null ? sbfmVerifiedBots() : this.sbfmVerifiedBots,
  staleZoneConfiguration: staleZoneConfiguration != null ? staleZoneConfiguration() : this.staleZoneConfiguration,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BotManagementSbfmLikelyConfig &&
          optimizeWordpress == other.optimizeWordpress &&
          sbfmDefinitelyAutomated == other.sbfmDefinitelyAutomated &&
          sbfmLikelyAutomated == other.sbfmLikelyAutomated &&
          sbfmStaticResourceProtection == other.sbfmStaticResourceProtection &&
          sbfmVerifiedBots == other.sbfmVerifiedBots &&
          staleZoneConfiguration == other.staleZoneConfiguration; } 
@override int get hashCode { return Object.hash(optimizeWordpress, sbfmDefinitelyAutomated, sbfmLikelyAutomated, sbfmStaticResourceProtection, sbfmVerifiedBots, staleZoneConfiguration); } 
@override String toString() { return 'BotManagementSbfmLikelyConfig(optimizeWordpress: $optimizeWordpress, sbfmDefinitelyAutomated: $sbfmDefinitelyAutomated, sbfmLikelyAutomated: $sbfmLikelyAutomated, sbfmStaticResourceProtection: $sbfmStaticResourceProtection, sbfmVerifiedBots: $sbfmVerifiedBots, staleZoneConfiguration: $staleZoneConfiguration)'; } 
 }
