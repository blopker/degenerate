// GENERATED CODE - DO NOT MODIFY BY HAND

import 'bot_management_fight_mode_turned_on.dart';import 'bot_management_sbfm_likely_automated_turned_on.dart';/// A read-only field that shows which unauthorized settings are currently active on the zone. These settings typically result from upgrades or downgrades.
final class BotManagementSbfmDefinitelyConfigStaleZoneConfiguration {const BotManagementSbfmDefinitelyConfigStaleZoneConfiguration({this.fightMode, this.sbfmLikelyAutomated, });

factory BotManagementSbfmDefinitelyConfigStaleZoneConfiguration.fromJson(Map<String, dynamic> json) { return BotManagementSbfmDefinitelyConfigStaleZoneConfiguration(
  fightMode: json['fight_mode'] != null ? BotManagementFightModeTurnedOn.fromJson(json['fight_mode'] as bool) : null,
  sbfmLikelyAutomated: json['sbfm_likely_automated'] != null ? BotManagementSbfmLikelyAutomatedTurnedOn.fromJson(json['sbfm_likely_automated'] as String) : null,
); }

/// Indicates that the zone's Bot Fight Mode is turned on.
final BotManagementFightModeTurnedOn? fightMode;

final BotManagementSbfmLikelyAutomatedTurnedOn? sbfmLikelyAutomated;

Map<String, dynamic> toJson() { return {
  if (fightMode != null) 'fight_mode': fightMode?.toJson(),
  if (sbfmLikelyAutomated != null) 'sbfm_likely_automated': sbfmLikelyAutomated?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'fight_mode', 'sbfm_likely_automated'}.contains(key)); } 
BotManagementSbfmDefinitelyConfigStaleZoneConfiguration copyWith({BotManagementFightModeTurnedOn Function()? fightMode, BotManagementSbfmLikelyAutomatedTurnedOn Function()? sbfmLikelyAutomated, }) { return BotManagementSbfmDefinitelyConfigStaleZoneConfiguration(
  fightMode: fightMode != null ? fightMode() : this.fightMode,
  sbfmLikelyAutomated: sbfmLikelyAutomated != null ? sbfmLikelyAutomated() : this.sbfmLikelyAutomated,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BotManagementSbfmDefinitelyConfigStaleZoneConfiguration &&
          fightMode == other.fightMode &&
          sbfmLikelyAutomated == other.sbfmLikelyAutomated; } 
@override int get hashCode { return Object.hash(fightMode, sbfmLikelyAutomated); } 
@override String toString() { return 'BotManagementSbfmDefinitelyConfigStaleZoneConfiguration(fightMode: $fightMode, sbfmLikelyAutomated: $sbfmLikelyAutomated)'; } 
 }
