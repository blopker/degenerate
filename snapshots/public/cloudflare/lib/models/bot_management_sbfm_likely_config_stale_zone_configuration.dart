// GENERATED CODE - DO NOT MODIFY BY HAND

import 'bot_management_fight_mode_turned_on.dart';/// A read-only field that shows which unauthorized settings are currently active on the zone. These settings typically result from upgrades or downgrades.
final class BotManagementSbfmLikelyConfigStaleZoneConfiguration {const BotManagementSbfmLikelyConfigStaleZoneConfiguration({this.fightMode});

factory BotManagementSbfmLikelyConfigStaleZoneConfiguration.fromJson(Map<String, dynamic> json) { return BotManagementSbfmLikelyConfigStaleZoneConfiguration(
  fightMode: json['fight_mode'] != null ? BotManagementFightModeTurnedOn.fromJson(json['fight_mode'] as bool) : null,
); }

/// Indicates that the zone's Bot Fight Mode is turned on.
final BotManagementFightModeTurnedOn? fightMode;

Map<String, dynamic> toJson() { return {
  if (fightMode != null) 'fight_mode': fightMode?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'fight_mode'}.contains(key)); } 
BotManagementSbfmLikelyConfigStaleZoneConfiguration copyWith({BotManagementFightModeTurnedOn Function()? fightMode}) { return BotManagementSbfmLikelyConfigStaleZoneConfiguration(
  fightMode: fightMode != null ? fightMode() : this.fightMode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BotManagementSbfmLikelyConfigStaleZoneConfiguration &&
          fightMode == other.fightMode; } 
@override int get hashCode { return fightMode.hashCode; } 
@override String toString() { return 'BotManagementSbfmLikelyConfigStaleZoneConfiguration(fightMode: $fightMode)'; } 
 }
