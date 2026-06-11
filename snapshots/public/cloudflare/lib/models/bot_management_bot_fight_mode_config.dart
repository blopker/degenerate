// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'bot_management_ai_bots_protection.dart';import 'bot_management_bot_fight_mode_config_stale_zone_configuration.dart';import 'bot_management_cf_robots_variant.dart';import 'bot_management_crawler_protection.dart';import 'bot_management_enable_js.dart';import 'bot_management_is_robots_txt_managed.dart';import 'bot_management_using_latest_model.dart';/// Whether to enable Bot Fight Mode.
extension type const BotManagementFightMode(bool value) {
factory BotManagementFightMode.fromJson(bool json) => BotManagementFightMode(json);

bool toJson() => value;

}
@immutable final class BotManagementBotFightModeConfig {const BotManagementBotFightModeConfig({this.aiBotsProtection, this.cfRobotsVariant, this.crawlerProtection, this.enableJs, this.isRobotsTxtManaged, this.usingLatestModel, this.fightMode, this.staleZoneConfiguration, });

factory BotManagementBotFightModeConfig.fromJson(Map<String, dynamic> json) { return BotManagementBotFightModeConfig(
  aiBotsProtection: json['ai_bots_protection'] != null ? BotManagementAiBotsProtection.fromJson(json['ai_bots_protection'] as String) : null,
  cfRobotsVariant: json['cf_robots_variant'] != null ? BotManagementCfRobotsVariant.fromJson(json['cf_robots_variant'] as String) : null,
  crawlerProtection: json['crawler_protection'] != null ? BotManagementCrawlerProtection.fromJson(json['crawler_protection'] as String) : null,
  enableJs: json['enable_js'] != null ? BotManagementEnableJs.fromJson(json['enable_js'] as bool) : null,
  isRobotsTxtManaged: json['is_robots_txt_managed'] != null ? BotManagementIsRobotsTxtManaged.fromJson(json['is_robots_txt_managed'] as bool) : null,
  usingLatestModel: json['using_latest_model'] != null ? BotManagementUsingLatestModel.fromJson(json['using_latest_model'] as bool) : null,
  fightMode: json['fight_mode'] != null ? BotManagementFightMode.fromJson(json['fight_mode'] as bool) : null,
  staleZoneConfiguration: json['stale_zone_configuration'] != null ? BotManagementBotFightModeConfigStaleZoneConfiguration.fromJson(json['stale_zone_configuration'] as Map<String, dynamic>) : null,
); }

/// Enable rule to block AI Scrapers and Crawlers. Please note the value `only_on_ad_pages` is currently not available for Enterprise customers.
final BotManagementAiBotsProtection? aiBotsProtection;

final BotManagementCfRobotsVariant? cfRobotsVariant;

final BotManagementCrawlerProtection? crawlerProtection;

final BotManagementEnableJs? enableJs;

final BotManagementIsRobotsTxtManaged? isRobotsTxtManaged;

final BotManagementUsingLatestModel? usingLatestModel;

final BotManagementFightMode? fightMode;

/// A read-only field that shows which unauthorized settings are currently active on the zone. These settings typically result from upgrades or downgrades.
final BotManagementBotFightModeConfigStaleZoneConfiguration? staleZoneConfiguration;

Map<String, dynamic> toJson() { return {
  if (aiBotsProtection != null) 'ai_bots_protection': aiBotsProtection?.toJson(),
  if (cfRobotsVariant != null) 'cf_robots_variant': cfRobotsVariant?.toJson(),
  if (crawlerProtection != null) 'crawler_protection': crawlerProtection?.toJson(),
  if (enableJs != null) 'enable_js': enableJs?.toJson(),
  if (isRobotsTxtManaged != null) 'is_robots_txt_managed': isRobotsTxtManaged?.toJson(),
  if (usingLatestModel != null) 'using_latest_model': usingLatestModel?.toJson(),
  if (fightMode != null) 'fight_mode': fightMode?.toJson(),
  if (staleZoneConfiguration != null) 'stale_zone_configuration': staleZoneConfiguration?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ai_bots_protection', 'cf_robots_variant', 'crawler_protection', 'enable_js', 'is_robots_txt_managed', 'using_latest_model', 'fight_mode', 'stale_zone_configuration'}.contains(key)); } 
BotManagementBotFightModeConfig copyWith({BotManagementAiBotsProtection Function()? aiBotsProtection, BotManagementCfRobotsVariant Function()? cfRobotsVariant, BotManagementCrawlerProtection Function()? crawlerProtection, BotManagementEnableJs Function()? enableJs, BotManagementIsRobotsTxtManaged Function()? isRobotsTxtManaged, BotManagementUsingLatestModel Function()? usingLatestModel, BotManagementFightMode Function()? fightMode, BotManagementBotFightModeConfigStaleZoneConfiguration Function()? staleZoneConfiguration, }) { return BotManagementBotFightModeConfig(
  aiBotsProtection: aiBotsProtection != null ? aiBotsProtection() : this.aiBotsProtection,
  cfRobotsVariant: cfRobotsVariant != null ? cfRobotsVariant() : this.cfRobotsVariant,
  crawlerProtection: crawlerProtection != null ? crawlerProtection() : this.crawlerProtection,
  enableJs: enableJs != null ? enableJs() : this.enableJs,
  isRobotsTxtManaged: isRobotsTxtManaged != null ? isRobotsTxtManaged() : this.isRobotsTxtManaged,
  usingLatestModel: usingLatestModel != null ? usingLatestModel() : this.usingLatestModel,
  fightMode: fightMode != null ? fightMode() : this.fightMode,
  staleZoneConfiguration: staleZoneConfiguration != null ? staleZoneConfiguration() : this.staleZoneConfiguration,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BotManagementBotFightModeConfig &&
          aiBotsProtection == other.aiBotsProtection &&
          cfRobotsVariant == other.cfRobotsVariant &&
          crawlerProtection == other.crawlerProtection &&
          enableJs == other.enableJs &&
          isRobotsTxtManaged == other.isRobotsTxtManaged &&
          usingLatestModel == other.usingLatestModel &&
          fightMode == other.fightMode &&
          staleZoneConfiguration == other.staleZoneConfiguration; } 
@override int get hashCode { return Object.hash(aiBotsProtection, cfRobotsVariant, crawlerProtection, enableJs, isRobotsTxtManaged, usingLatestModel, fightMode, staleZoneConfiguration); } 
@override String toString() { return 'BotManagementBotFightModeConfig(aiBotsProtection: $aiBotsProtection, cfRobotsVariant: $cfRobotsVariant, crawlerProtection: $crawlerProtection, enableJs: $enableJs, isRobotsTxtManaged: $isRobotsTxtManaged, usingLatestModel: $usingLatestModel, fightMode: $fightMode, staleZoneConfiguration: $staleZoneConfiguration)'; } 
 }
