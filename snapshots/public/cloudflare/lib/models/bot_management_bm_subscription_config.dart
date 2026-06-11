// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'bot_management_ai_bots_protection.dart';import 'bot_management_bm_subscription_config_stale_zone_configuration.dart';import 'bot_management_cf_robots_variant.dart';import 'bot_management_crawler_protection.dart';import 'bot_management_enable_js.dart';import 'bot_management_is_robots_txt_managed.dart';import 'bot_management_using_latest_model.dart';/// Automatically update to the newest bot detection models created by Cloudflare as they are released. [Learn more.](https://developers.cloudflare.com/bots/reference/machine-learning-models#model-versions-and-release-notes)
extension type const BotManagementAutoUpdateModel(bool value) {
factory BotManagementAutoUpdateModel.fromJson(bool json) => BotManagementAutoUpdateModel(json);

bool toJson() => value;

}
/// Indicates that the bot management cookie can be placed on end user devices accessing the site. Defaults to true
extension type const BotManagementBmCookieEnabled(bool value) {
factory BotManagementBmCookieEnabled.fromJson(bool json) => BotManagementBmCookieEnabled(json);

bool toJson() => value;

}
/// Whether to disable tracking the highest bot score for a session in the Bot Management cookie.
extension type const BotManagementSuppressSessionScore(bool value) {
factory BotManagementSuppressSessionScore.fromJson(bool json) => BotManagementSuppressSessionScore(json);

bool toJson() => value;

}
@immutable final class BotManagementBmSubscriptionConfig {const BotManagementBmSubscriptionConfig({this.aiBotsProtection, this.cfRobotsVariant, this.crawlerProtection, this.enableJs, this.isRobotsTxtManaged, this.usingLatestModel, this.autoUpdateModel, this.bmCookieEnabled, this.staleZoneConfiguration, this.suppressSessionScore, });

factory BotManagementBmSubscriptionConfig.fromJson(Map<String, dynamic> json) { return BotManagementBmSubscriptionConfig(
  aiBotsProtection: json['ai_bots_protection'] != null ? BotManagementAiBotsProtection.fromJson(json['ai_bots_protection'] as String) : null,
  cfRobotsVariant: json['cf_robots_variant'] != null ? BotManagementCfRobotsVariant.fromJson(json['cf_robots_variant'] as String) : null,
  crawlerProtection: json['crawler_protection'] != null ? BotManagementCrawlerProtection.fromJson(json['crawler_protection'] as String) : null,
  enableJs: json['enable_js'] != null ? BotManagementEnableJs.fromJson(json['enable_js'] as bool) : null,
  isRobotsTxtManaged: json['is_robots_txt_managed'] != null ? BotManagementIsRobotsTxtManaged.fromJson(json['is_robots_txt_managed'] as bool) : null,
  usingLatestModel: json['using_latest_model'] != null ? BotManagementUsingLatestModel.fromJson(json['using_latest_model'] as bool) : null,
  autoUpdateModel: json['auto_update_model'] != null ? BotManagementAutoUpdateModel.fromJson(json['auto_update_model'] as bool) : null,
  bmCookieEnabled: json['bm_cookie_enabled'] != null ? BotManagementBmCookieEnabled.fromJson(json['bm_cookie_enabled'] as bool) : null,
  staleZoneConfiguration: json['stale_zone_configuration'] != null ? BotManagementBmSubscriptionConfigStaleZoneConfiguration.fromJson(json['stale_zone_configuration'] as Map<String, dynamic>) : null,
  suppressSessionScore: json['suppress_session_score'] != null ? BotManagementSuppressSessionScore.fromJson(json['suppress_session_score'] as bool) : null,
); }

/// Enable rule to block AI Scrapers and Crawlers. Please note the value `only_on_ad_pages` is currently not available for Enterprise customers.
final BotManagementAiBotsProtection? aiBotsProtection;

final BotManagementCfRobotsVariant? cfRobotsVariant;

final BotManagementCrawlerProtection? crawlerProtection;

final BotManagementEnableJs? enableJs;

final BotManagementIsRobotsTxtManaged? isRobotsTxtManaged;

final BotManagementUsingLatestModel? usingLatestModel;

/// Automatically update to the newest bot detection models created by Cloudflare as they are released. [Learn more.](https://developers.cloudflare.com/bots/reference/machine-learning-models#model-versions-and-release-notes)
final BotManagementAutoUpdateModel? autoUpdateModel;

/// Indicates that the bot management cookie can be placed on end user devices accessing the site. Defaults to true
final BotManagementBmCookieEnabled? bmCookieEnabled;

/// A read-only field that shows which unauthorized settings are currently active on the zone. These settings typically result from upgrades or downgrades.
final BotManagementBmSubscriptionConfigStaleZoneConfiguration? staleZoneConfiguration;

final BotManagementSuppressSessionScore? suppressSessionScore;

Map<String, dynamic> toJson() { return {
  if (aiBotsProtection != null) 'ai_bots_protection': aiBotsProtection?.toJson(),
  if (cfRobotsVariant != null) 'cf_robots_variant': cfRobotsVariant?.toJson(),
  if (crawlerProtection != null) 'crawler_protection': crawlerProtection?.toJson(),
  if (enableJs != null) 'enable_js': enableJs?.toJson(),
  if (isRobotsTxtManaged != null) 'is_robots_txt_managed': isRobotsTxtManaged?.toJson(),
  if (usingLatestModel != null) 'using_latest_model': usingLatestModel?.toJson(),
  if (autoUpdateModel != null) 'auto_update_model': autoUpdateModel?.toJson(),
  if (bmCookieEnabled != null) 'bm_cookie_enabled': bmCookieEnabled?.toJson(),
  if (staleZoneConfiguration != null) 'stale_zone_configuration': staleZoneConfiguration?.toJson(),
  if (suppressSessionScore != null) 'suppress_session_score': suppressSessionScore?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ai_bots_protection', 'cf_robots_variant', 'crawler_protection', 'enable_js', 'is_robots_txt_managed', 'using_latest_model', 'auto_update_model', 'bm_cookie_enabled', 'stale_zone_configuration', 'suppress_session_score'}.contains(key)); } 
BotManagementBmSubscriptionConfig copyWith({BotManagementAiBotsProtection Function()? aiBotsProtection, BotManagementCfRobotsVariant Function()? cfRobotsVariant, BotManagementCrawlerProtection Function()? crawlerProtection, BotManagementEnableJs Function()? enableJs, BotManagementIsRobotsTxtManaged Function()? isRobotsTxtManaged, BotManagementUsingLatestModel Function()? usingLatestModel, BotManagementAutoUpdateModel Function()? autoUpdateModel, BotManagementBmCookieEnabled Function()? bmCookieEnabled, BotManagementBmSubscriptionConfigStaleZoneConfiguration Function()? staleZoneConfiguration, BotManagementSuppressSessionScore Function()? suppressSessionScore, }) { return BotManagementBmSubscriptionConfig(
  aiBotsProtection: aiBotsProtection != null ? aiBotsProtection() : this.aiBotsProtection,
  cfRobotsVariant: cfRobotsVariant != null ? cfRobotsVariant() : this.cfRobotsVariant,
  crawlerProtection: crawlerProtection != null ? crawlerProtection() : this.crawlerProtection,
  enableJs: enableJs != null ? enableJs() : this.enableJs,
  isRobotsTxtManaged: isRobotsTxtManaged != null ? isRobotsTxtManaged() : this.isRobotsTxtManaged,
  usingLatestModel: usingLatestModel != null ? usingLatestModel() : this.usingLatestModel,
  autoUpdateModel: autoUpdateModel != null ? autoUpdateModel() : this.autoUpdateModel,
  bmCookieEnabled: bmCookieEnabled != null ? bmCookieEnabled() : this.bmCookieEnabled,
  staleZoneConfiguration: staleZoneConfiguration != null ? staleZoneConfiguration() : this.staleZoneConfiguration,
  suppressSessionScore: suppressSessionScore != null ? suppressSessionScore() : this.suppressSessionScore,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BotManagementBmSubscriptionConfig &&
          aiBotsProtection == other.aiBotsProtection &&
          cfRobotsVariant == other.cfRobotsVariant &&
          crawlerProtection == other.crawlerProtection &&
          enableJs == other.enableJs &&
          isRobotsTxtManaged == other.isRobotsTxtManaged &&
          usingLatestModel == other.usingLatestModel &&
          autoUpdateModel == other.autoUpdateModel &&
          bmCookieEnabled == other.bmCookieEnabled &&
          staleZoneConfiguration == other.staleZoneConfiguration &&
          suppressSessionScore == other.suppressSessionScore; } 
@override int get hashCode { return Object.hash(aiBotsProtection, cfRobotsVariant, crawlerProtection, enableJs, isRobotsTxtManaged, usingLatestModel, autoUpdateModel, bmCookieEnabled, staleZoneConfiguration, suppressSessionScore); } 
@override String toString() { return 'BotManagementBmSubscriptionConfig(aiBotsProtection: $aiBotsProtection, cfRobotsVariant: $cfRobotsVariant, crawlerProtection: $crawlerProtection, enableJs: $enableJs, isRobotsTxtManaged: $isRobotsTxtManaged, usingLatestModel: $usingLatestModel, autoUpdateModel: $autoUpdateModel, bmCookieEnabled: $bmCookieEnabled, staleZoneConfiguration: $staleZoneConfiguration, suppressSessionScore: $suppressSessionScore)'; } 
 }
