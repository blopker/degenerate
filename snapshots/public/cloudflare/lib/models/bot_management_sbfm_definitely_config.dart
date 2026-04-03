// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'bot_management_optimize_wordpress.dart';import 'bot_management_sbfm_definitely_automated.dart';import 'bot_management_sbfm_definitely_config_stale_zone_configuration.dart';import 'bot_management_sbfm_static_resource_protection.dart';import 'bot_management_sbfm_verified_bots.dart';@immutable final class BotManagementSbfmDefinitelyConfig {const BotManagementSbfmDefinitelyConfig({this.optimizeWordpress, this.sbfmDefinitelyAutomated, this.sbfmStaticResourceProtection, this.sbfmVerifiedBots, this.staleZoneConfiguration, });

factory BotManagementSbfmDefinitelyConfig.fromJson(Map<String, dynamic> json) { return BotManagementSbfmDefinitelyConfig(
  optimizeWordpress: json['optimize_wordpress'] != null ? BotManagementOptimizeWordpress.fromJson(json['optimize_wordpress'] as bool) : null,
  sbfmDefinitelyAutomated: json['sbfm_definitely_automated'] != null ? BotManagementSbfmDefinitelyAutomated.fromJson(json['sbfm_definitely_automated'] as String) : null,
  sbfmStaticResourceProtection: json['sbfm_static_resource_protection'] != null ? BotManagementSbfmStaticResourceProtection.fromJson(json['sbfm_static_resource_protection'] as bool) : null,
  sbfmVerifiedBots: json['sbfm_verified_bots'] != null ? BotManagementSbfmVerifiedBots.fromJson(json['sbfm_verified_bots'] as String) : null,
  staleZoneConfiguration: json['stale_zone_configuration'] != null ? BotManagementSbfmDefinitelyConfigStaleZoneConfiguration.fromJson(json['stale_zone_configuration'] as Map<String, dynamic>) : null,
); }

/// Whether to optimize Super Bot Fight Mode protections for Wordpress.
final BotManagementOptimizeWordpress? optimizeWordpress;

/// Super Bot Fight Mode (SBFM) action to take on definitely automated requests.
final BotManagementSbfmDefinitelyAutomated? sbfmDefinitelyAutomated;

final BotManagementSbfmStaticResourceProtection? sbfmStaticResourceProtection;

final BotManagementSbfmVerifiedBots? sbfmVerifiedBots;

/// A read-only field that shows which unauthorized settings are currently active on the zone. These settings typically result from upgrades or downgrades.
final BotManagementSbfmDefinitelyConfigStaleZoneConfiguration? staleZoneConfiguration;

Map<String, dynamic> toJson() { return {
  if (optimizeWordpress != null) 'optimize_wordpress': optimizeWordpress?.toJson(),
  if (sbfmDefinitelyAutomated != null) 'sbfm_definitely_automated': sbfmDefinitelyAutomated?.toJson(),
  if (sbfmStaticResourceProtection != null) 'sbfm_static_resource_protection': sbfmStaticResourceProtection?.toJson(),
  if (sbfmVerifiedBots != null) 'sbfm_verified_bots': sbfmVerifiedBots?.toJson(),
  if (staleZoneConfiguration != null) 'stale_zone_configuration': staleZoneConfiguration?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'optimize_wordpress', 'sbfm_definitely_automated', 'sbfm_static_resource_protection', 'sbfm_verified_bots', 'stale_zone_configuration'}.contains(key)); } 
BotManagementSbfmDefinitelyConfig copyWith({BotManagementOptimizeWordpress Function()? optimizeWordpress, BotManagementSbfmDefinitelyAutomated Function()? sbfmDefinitelyAutomated, BotManagementSbfmStaticResourceProtection Function()? sbfmStaticResourceProtection, BotManagementSbfmVerifiedBots Function()? sbfmVerifiedBots, BotManagementSbfmDefinitelyConfigStaleZoneConfiguration Function()? staleZoneConfiguration, }) { return BotManagementSbfmDefinitelyConfig(
  optimizeWordpress: optimizeWordpress != null ? optimizeWordpress() : this.optimizeWordpress,
  sbfmDefinitelyAutomated: sbfmDefinitelyAutomated != null ? sbfmDefinitelyAutomated() : this.sbfmDefinitelyAutomated,
  sbfmStaticResourceProtection: sbfmStaticResourceProtection != null ? sbfmStaticResourceProtection() : this.sbfmStaticResourceProtection,
  sbfmVerifiedBots: sbfmVerifiedBots != null ? sbfmVerifiedBots() : this.sbfmVerifiedBots,
  staleZoneConfiguration: staleZoneConfiguration != null ? staleZoneConfiguration() : this.staleZoneConfiguration,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BotManagementSbfmDefinitelyConfig &&
          optimizeWordpress == other.optimizeWordpress &&
          sbfmDefinitelyAutomated == other.sbfmDefinitelyAutomated &&
          sbfmStaticResourceProtection == other.sbfmStaticResourceProtection &&
          sbfmVerifiedBots == other.sbfmVerifiedBots &&
          staleZoneConfiguration == other.staleZoneConfiguration; } 
@override int get hashCode { return Object.hash(optimizeWordpress, sbfmDefinitelyAutomated, sbfmStaticResourceProtection, sbfmVerifiedBots, staleZoneConfiguration); } 
@override String toString() { return 'BotManagementSbfmDefinitelyConfig(optimizeWordpress: $optimizeWordpress, sbfmDefinitelyAutomated: $sbfmDefinitelyAutomated, sbfmStaticResourceProtection: $sbfmStaticResourceProtection, sbfmVerifiedBots: $sbfmVerifiedBots, staleZoneConfiguration: $staleZoneConfiguration)'; } 
 }
