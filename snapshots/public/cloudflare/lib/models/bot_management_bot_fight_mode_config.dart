// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'bot_management_bot_fight_mode_config_stale_zone_configuration.dart';/// Whether to enable Bot Fight Mode.
extension type const BotManagementFightMode(bool value) {
factory BotManagementFightMode.fromJson(bool json) => BotManagementFightMode(json);

bool toJson() => value;

}
@immutable final class BotManagementBotFightModeConfig {const BotManagementBotFightModeConfig({this.fightMode, this.staleZoneConfiguration, });

factory BotManagementBotFightModeConfig.fromJson(Map<String, dynamic> json) { return BotManagementBotFightModeConfig(
  fightMode: json['fight_mode'] != null ? BotManagementFightMode.fromJson(json['fight_mode'] as bool) : null,
  staleZoneConfiguration: json['stale_zone_configuration'] != null ? BotManagementBotFightModeConfigStaleZoneConfiguration.fromJson(json['stale_zone_configuration'] as Map<String, dynamic>) : null,
); }

final BotManagementFightMode? fightMode;

/// A read-only field that shows which unauthorized settings are currently active on the zone. These settings typically result from upgrades or downgrades.
final BotManagementBotFightModeConfigStaleZoneConfiguration? staleZoneConfiguration;

Map<String, dynamic> toJson() { return {
  if (fightMode != null) 'fight_mode': fightMode?.toJson(),
  if (staleZoneConfiguration != null) 'stale_zone_configuration': staleZoneConfiguration?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'fight_mode', 'stale_zone_configuration'}.contains(key)); } 
BotManagementBotFightModeConfig copyWith({BotManagementFightMode Function()? fightMode, BotManagementBotFightModeConfigStaleZoneConfiguration Function()? staleZoneConfiguration, }) { return BotManagementBotFightModeConfig(
  fightMode: fightMode != null ? fightMode() : this.fightMode,
  staleZoneConfiguration: staleZoneConfiguration != null ? staleZoneConfiguration() : this.staleZoneConfiguration,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BotManagementBotFightModeConfig &&
          fightMode == other.fightMode &&
          staleZoneConfiguration == other.staleZoneConfiguration; } 
@override int get hashCode { return Object.hash(fightMode, staleZoneConfiguration); } 
@override String toString() { return 'BotManagementBotFightModeConfig(fightMode: $fightMode, staleZoneConfiguration: $staleZoneConfiguration)'; } 
 }
