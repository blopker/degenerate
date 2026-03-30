// GENERATED CODE - DO NOT MODIFY BY HAND

import 'bot_management_optimize_wordpress_turned_on.dart';import 'bot_management_sbfm_definitely_automated_turned_on.dart';import 'bot_management_sbfm_likely_automated_turned_on.dart';import 'bot_management_sbfm_static_resource_protection_turned_on.dart';import 'bot_management_sbfm_verified_bots_turned_on.dart';/// Indicates that the zone's session score tracking is disabled.
extension type const BotManagementSuppressSessionScoreTurnedOff(bool value) {
factory BotManagementSuppressSessionScoreTurnedOff.fromJson(bool json) => BotManagementSuppressSessionScoreTurnedOff(json);

bool toJson() => value;

}
/// A read-only field that shows which unauthorized settings are currently active on the zone. These settings typically result from upgrades or downgrades.
final class BotManagementBotFightModeConfigStaleZoneConfiguration {const BotManagementBotFightModeConfigStaleZoneConfiguration({this.optimizeWordpress, this.sbfmDefinitelyAutomated, this.sbfmLikelyAutomated, this.sbfmStaticResourceProtection, this.sbfmVerifiedBots, this.suppressSessionScore, });

factory BotManagementBotFightModeConfigStaleZoneConfiguration.fromJson(Map<String, dynamic> json) { return BotManagementBotFightModeConfigStaleZoneConfiguration(
  optimizeWordpress: json['optimize_wordpress'] != null ? BotManagementOptimizeWordpressTurnedOn.fromJson(json['optimize_wordpress'] as bool) : null,
  sbfmDefinitelyAutomated: json['sbfm_definitely_automated'] != null ? BotManagementSbfmDefinitelyAutomatedTurnedOn.fromJson(json['sbfm_definitely_automated'] as String) : null,
  sbfmLikelyAutomated: json['sbfm_likely_automated'] != null ? BotManagementSbfmLikelyAutomatedTurnedOn.fromJson(json['sbfm_likely_automated'] as String) : null,
  sbfmStaticResourceProtection: json['sbfm_static_resource_protection'] != null ? BotManagementSbfmStaticResourceProtectionTurnedOn.fromJson(json['sbfm_static_resource_protection'] as String) : null,
  sbfmVerifiedBots: json['sbfm_verified_bots'] != null ? BotManagementSbfmVerifiedBotsTurnedOn.fromJson(json['sbfm_verified_bots'] as String) : null,
  suppressSessionScore: json['suppress_session_score'] != null ? BotManagementSuppressSessionScoreTurnedOff.fromJson(json['suppress_session_score'] as bool) : null,
); }

final BotManagementOptimizeWordpressTurnedOn? optimizeWordpress;

final BotManagementSbfmDefinitelyAutomatedTurnedOn? sbfmDefinitelyAutomated;

final BotManagementSbfmLikelyAutomatedTurnedOn? sbfmLikelyAutomated;

final BotManagementSbfmStaticResourceProtectionTurnedOn? sbfmStaticResourceProtection;

final BotManagementSbfmVerifiedBotsTurnedOn? sbfmVerifiedBots;

final BotManagementSuppressSessionScoreTurnedOff? suppressSessionScore;

Map<String, dynamic> toJson() { return {
  if (optimizeWordpress != null) 'optimize_wordpress': optimizeWordpress?.toJson(),
  if (sbfmDefinitelyAutomated != null) 'sbfm_definitely_automated': sbfmDefinitelyAutomated?.toJson(),
  if (sbfmLikelyAutomated != null) 'sbfm_likely_automated': sbfmLikelyAutomated?.toJson(),
  if (sbfmStaticResourceProtection != null) 'sbfm_static_resource_protection': sbfmStaticResourceProtection?.toJson(),
  if (sbfmVerifiedBots != null) 'sbfm_verified_bots': sbfmVerifiedBots?.toJson(),
  if (suppressSessionScore != null) 'suppress_session_score': suppressSessionScore?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'optimize_wordpress', 'sbfm_definitely_automated', 'sbfm_likely_automated', 'sbfm_static_resource_protection', 'sbfm_verified_bots', 'suppress_session_score'}.contains(key)); } 
BotManagementBotFightModeConfigStaleZoneConfiguration copyWith({BotManagementOptimizeWordpressTurnedOn Function()? optimizeWordpress, BotManagementSbfmDefinitelyAutomatedTurnedOn Function()? sbfmDefinitelyAutomated, BotManagementSbfmLikelyAutomatedTurnedOn Function()? sbfmLikelyAutomated, BotManagementSbfmStaticResourceProtectionTurnedOn Function()? sbfmStaticResourceProtection, BotManagementSbfmVerifiedBotsTurnedOn Function()? sbfmVerifiedBots, BotManagementSuppressSessionScoreTurnedOff Function()? suppressSessionScore, }) { return BotManagementBotFightModeConfigStaleZoneConfiguration(
  optimizeWordpress: optimizeWordpress != null ? optimizeWordpress() : this.optimizeWordpress,
  sbfmDefinitelyAutomated: sbfmDefinitelyAutomated != null ? sbfmDefinitelyAutomated() : this.sbfmDefinitelyAutomated,
  sbfmLikelyAutomated: sbfmLikelyAutomated != null ? sbfmLikelyAutomated() : this.sbfmLikelyAutomated,
  sbfmStaticResourceProtection: sbfmStaticResourceProtection != null ? sbfmStaticResourceProtection() : this.sbfmStaticResourceProtection,
  sbfmVerifiedBots: sbfmVerifiedBots != null ? sbfmVerifiedBots() : this.sbfmVerifiedBots,
  suppressSessionScore: suppressSessionScore != null ? suppressSessionScore() : this.suppressSessionScore,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BotManagementBotFightModeConfigStaleZoneConfiguration &&
          optimizeWordpress == other.optimizeWordpress &&
          sbfmDefinitelyAutomated == other.sbfmDefinitelyAutomated &&
          sbfmLikelyAutomated == other.sbfmLikelyAutomated &&
          sbfmStaticResourceProtection == other.sbfmStaticResourceProtection &&
          sbfmVerifiedBots == other.sbfmVerifiedBots &&
          suppressSessionScore == other.suppressSessionScore; } 
@override int get hashCode { return Object.hash(optimizeWordpress, sbfmDefinitelyAutomated, sbfmLikelyAutomated, sbfmStaticResourceProtection, sbfmVerifiedBots, suppressSessionScore); } 
@override String toString() { return 'BotManagementBotFightModeConfigStaleZoneConfiguration(optimizeWordpress: $optimizeWordpress, sbfmDefinitelyAutomated: $sbfmDefinitelyAutomated, sbfmLikelyAutomated: $sbfmLikelyAutomated, sbfmStaticResourceProtection: $sbfmStaticResourceProtection, sbfmVerifiedBots: $sbfmVerifiedBots, suppressSessionScore: $suppressSessionScore)'; } 
 }
