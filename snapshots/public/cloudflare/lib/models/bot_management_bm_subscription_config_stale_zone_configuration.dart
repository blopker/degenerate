// GENERATED CODE - DO NOT MODIFY BY HAND

import 'bot_management_fight_mode_turned_on.dart';import 'bot_management_optimize_wordpress_turned_on.dart';import 'bot_management_sbfm_definitely_automated_turned_on.dart';import 'bot_management_sbfm_likely_automated_turned_on.dart';import 'bot_management_sbfm_static_resource_protection_turned_on.dart';import 'bot_management_sbfm_verified_bots_turned_on.dart';/// A read-only field that shows which unauthorized settings are currently active on the zone. These settings typically result from upgrades or downgrades.
final class BotManagementBmSubscriptionConfigStaleZoneConfiguration {const BotManagementBmSubscriptionConfigStaleZoneConfiguration({this.fightMode, this.optimizeWordpress, this.sbfmDefinitelyAutomated, this.sbfmLikelyAutomated, this.sbfmStaticResourceProtection, this.sbfmVerifiedBots, });

factory BotManagementBmSubscriptionConfigStaleZoneConfiguration.fromJson(Map<String, dynamic> json) { return BotManagementBmSubscriptionConfigStaleZoneConfiguration(
  fightMode: json['fight_mode'] != null ? BotManagementFightModeTurnedOn.fromJson(json['fight_mode'] as bool) : null,
  optimizeWordpress: json['optimize_wordpress'] != null ? BotManagementOptimizeWordpressTurnedOn.fromJson(json['optimize_wordpress'] as bool) : null,
  sbfmDefinitelyAutomated: json['sbfm_definitely_automated'] != null ? BotManagementSbfmDefinitelyAutomatedTurnedOn.fromJson(json['sbfm_definitely_automated'] as String) : null,
  sbfmLikelyAutomated: json['sbfm_likely_automated'] != null ? BotManagementSbfmLikelyAutomatedTurnedOn.fromJson(json['sbfm_likely_automated'] as String) : null,
  sbfmStaticResourceProtection: json['sbfm_static_resource_protection'] != null ? BotManagementSbfmStaticResourceProtectionTurnedOn.fromJson(json['sbfm_static_resource_protection'] as String) : null,
  sbfmVerifiedBots: json['sbfm_verified_bots'] != null ? BotManagementSbfmVerifiedBotsTurnedOn.fromJson(json['sbfm_verified_bots'] as String) : null,
); }

final BotManagementFightModeTurnedOn? fightMode;

final BotManagementOptimizeWordpressTurnedOn? optimizeWordpress;

final BotManagementSbfmDefinitelyAutomatedTurnedOn? sbfmDefinitelyAutomated;

final BotManagementSbfmLikelyAutomatedTurnedOn? sbfmLikelyAutomated;

final BotManagementSbfmStaticResourceProtectionTurnedOn? sbfmStaticResourceProtection;

final BotManagementSbfmVerifiedBotsTurnedOn? sbfmVerifiedBots;

Map<String, dynamic> toJson() { return {
  if (fightMode != null) 'fight_mode': fightMode?.toJson(),
  if (optimizeWordpress != null) 'optimize_wordpress': optimizeWordpress?.toJson(),
  if (sbfmDefinitelyAutomated != null) 'sbfm_definitely_automated': sbfmDefinitelyAutomated?.toJson(),
  if (sbfmLikelyAutomated != null) 'sbfm_likely_automated': sbfmLikelyAutomated?.toJson(),
  if (sbfmStaticResourceProtection != null) 'sbfm_static_resource_protection': sbfmStaticResourceProtection?.toJson(),
  if (sbfmVerifiedBots != null) 'sbfm_verified_bots': sbfmVerifiedBots?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'fight_mode', 'optimize_wordpress', 'sbfm_definitely_automated', 'sbfm_likely_automated', 'sbfm_static_resource_protection', 'sbfm_verified_bots'}.contains(key)); } 
BotManagementBmSubscriptionConfigStaleZoneConfiguration copyWith({BotManagementFightModeTurnedOn Function()? fightMode, BotManagementOptimizeWordpressTurnedOn Function()? optimizeWordpress, BotManagementSbfmDefinitelyAutomatedTurnedOn Function()? sbfmDefinitelyAutomated, BotManagementSbfmLikelyAutomatedTurnedOn Function()? sbfmLikelyAutomated, BotManagementSbfmStaticResourceProtectionTurnedOn Function()? sbfmStaticResourceProtection, BotManagementSbfmVerifiedBotsTurnedOn Function()? sbfmVerifiedBots, }) { return BotManagementBmSubscriptionConfigStaleZoneConfiguration(
  fightMode: fightMode != null ? fightMode() : this.fightMode,
  optimizeWordpress: optimizeWordpress != null ? optimizeWordpress() : this.optimizeWordpress,
  sbfmDefinitelyAutomated: sbfmDefinitelyAutomated != null ? sbfmDefinitelyAutomated() : this.sbfmDefinitelyAutomated,
  sbfmLikelyAutomated: sbfmLikelyAutomated != null ? sbfmLikelyAutomated() : this.sbfmLikelyAutomated,
  sbfmStaticResourceProtection: sbfmStaticResourceProtection != null ? sbfmStaticResourceProtection() : this.sbfmStaticResourceProtection,
  sbfmVerifiedBots: sbfmVerifiedBots != null ? sbfmVerifiedBots() : this.sbfmVerifiedBots,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BotManagementBmSubscriptionConfigStaleZoneConfiguration &&
          fightMode == other.fightMode &&
          optimizeWordpress == other.optimizeWordpress &&
          sbfmDefinitelyAutomated == other.sbfmDefinitelyAutomated &&
          sbfmLikelyAutomated == other.sbfmLikelyAutomated &&
          sbfmStaticResourceProtection == other.sbfmStaticResourceProtection &&
          sbfmVerifiedBots == other.sbfmVerifiedBots; } 
@override int get hashCode { return Object.hash(fightMode, optimizeWordpress, sbfmDefinitelyAutomated, sbfmLikelyAutomated, sbfmStaticResourceProtection, sbfmVerifiedBots); } 
@override String toString() { return 'BotManagementBmSubscriptionConfigStaleZoneConfiguration(fightMode: $fightMode, optimizeWordpress: $optimizeWordpress, sbfmDefinitelyAutomated: $sbfmDefinitelyAutomated, sbfmLikelyAutomated: $sbfmLikelyAutomated, sbfmStaticResourceProtection: $sbfmStaticResourceProtection, sbfmVerifiedBots: $sbfmVerifiedBots)'; } 
 }
