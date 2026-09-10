// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'bot_management_ai_bots_protection.dart';import 'bot_management_cf_robots_variant.dart';import 'bot_management_crawler_protection.dart';import 'bot_management_enable_js.dart';import 'bot_management_fight_mode.dart';import 'bot_management_is_robots_txt_managed.dart';@immutable final class BotManagementBotFightModeConfigRequest {const BotManagementBotFightModeConfigRequest({this.aiBotsProtection, this.cfRobotsVariant, this.crawlerProtection, this.enableJs, this.isRobotsTxtManaged, this.fightMode, });

factory BotManagementBotFightModeConfigRequest.fromJson(Map<String, dynamic> json) { return BotManagementBotFightModeConfigRequest(
  aiBotsProtection: json['ai_bots_protection'] != null ? BotManagementAiBotsProtection.fromJson(json['ai_bots_protection'] as String) : null,
  cfRobotsVariant: json['cf_robots_variant'] != null ? BotManagementCfRobotsVariant.fromJson(json['cf_robots_variant'] as String) : null,
  crawlerProtection: json['crawler_protection'] != null ? BotManagementCrawlerProtection.fromJson(json['crawler_protection'] as String) : null,
  enableJs: json['enable_js'] != null ? BotManagementEnableJs.fromJson(json['enable_js'] as bool) : null,
  isRobotsTxtManaged: json['is_robots_txt_managed'] != null ? BotManagementIsRobotsTxtManaged.fromJson(json['is_robots_txt_managed'] as bool) : null,
  fightMode: json['fight_mode'] != null ? BotManagementFightMode.fromJson(json['fight_mode'] as bool) : null,
); }

/// Enable rule to block AI Scrapers and Crawlers. Please note the value `only_on_ad_pages` is currently not available for Enterprise customers.
final BotManagementAiBotsProtection? aiBotsProtection;

/// Specifies the Robots Access Control License variant to use.
final BotManagementCfRobotsVariant? cfRobotsVariant;

/// Enable rule to punish AI Scrapers and Crawlers via a link maze.
final BotManagementCrawlerProtection? crawlerProtection;

/// Use lightweight, invisible JavaScript detections to improve Bot Management. [Learn more about JavaScript Detections](https://developers.cloudflare.com/bots/reference/javascript-detections/).
final BotManagementEnableJs? enableJs;

/// Enable cloudflare managed robots.txt. If an existing robots.txt is detected, then managed robots.txt will be prepended to the existing robots.txt.
final BotManagementIsRobotsTxtManaged? isRobotsTxtManaged;

/// Whether to enable Bot Fight Mode.
final BotManagementFightMode? fightMode;

Map<String, dynamic> toJson() { return {
  if (aiBotsProtection != null) 'ai_bots_protection': aiBotsProtection?.toJson(),
  if (cfRobotsVariant != null) 'cf_robots_variant': cfRobotsVariant?.toJson(),
  if (crawlerProtection != null) 'crawler_protection': crawlerProtection?.toJson(),
  if (enableJs != null) 'enable_js': enableJs?.toJson(),
  if (isRobotsTxtManaged != null) 'is_robots_txt_managed': isRobotsTxtManaged?.toJson(),
  if (fightMode != null) 'fight_mode': fightMode?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ai_bots_protection', 'cf_robots_variant', 'crawler_protection', 'enable_js', 'is_robots_txt_managed', 'fight_mode'}.contains(key)); } 
BotManagementBotFightModeConfigRequest copyWith({BotManagementAiBotsProtection? Function()? aiBotsProtection, BotManagementCfRobotsVariant? Function()? cfRobotsVariant, BotManagementCrawlerProtection? Function()? crawlerProtection, BotManagementEnableJs? Function()? enableJs, BotManagementIsRobotsTxtManaged? Function()? isRobotsTxtManaged, BotManagementFightMode? Function()? fightMode, }) { return BotManagementBotFightModeConfigRequest(
  aiBotsProtection: aiBotsProtection != null ? aiBotsProtection() : this.aiBotsProtection,
  cfRobotsVariant: cfRobotsVariant != null ? cfRobotsVariant() : this.cfRobotsVariant,
  crawlerProtection: crawlerProtection != null ? crawlerProtection() : this.crawlerProtection,
  enableJs: enableJs != null ? enableJs() : this.enableJs,
  isRobotsTxtManaged: isRobotsTxtManaged != null ? isRobotsTxtManaged() : this.isRobotsTxtManaged,
  fightMode: fightMode != null ? fightMode() : this.fightMode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BotManagementBotFightModeConfigRequest &&
          aiBotsProtection == other.aiBotsProtection &&
          cfRobotsVariant == other.cfRobotsVariant &&
          crawlerProtection == other.crawlerProtection &&
          enableJs == other.enableJs &&
          isRobotsTxtManaged == other.isRobotsTxtManaged &&
          fightMode == other.fightMode; } 
@override int get hashCode { return Object.hash(aiBotsProtection, cfRobotsVariant, crawlerProtection, enableJs, isRobotsTxtManaged, fightMode); } 
@override String toString() { return 'BotManagementBotFightModeConfigRequest(aiBotsProtection: $aiBotsProtection, cfRobotsVariant: $cfRobotsVariant, crawlerProtection: $crawlerProtection, enableJs: $enableJs, isRobotsTxtManaged: $isRobotsTxtManaged, fightMode: $fightMode)'; } 
 }
