// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'bot_management_ai_bots_protection.dart';import 'bot_management_auto_update_model.dart';import 'bot_management_bm_cookie_enabled.dart';import 'bot_management_cf_robots_variant.dart';import 'bot_management_crawler_protection.dart';import 'bot_management_enable_js.dart';import 'bot_management_is_robots_txt_managed.dart';import 'bot_management_suppress_session_score.dart';@immutable final class BotManagementBmSubscriptionConfigRequest {const BotManagementBmSubscriptionConfigRequest({this.aiBotsProtection, this.cfRobotsVariant, this.crawlerProtection, this.enableJs, this.isRobotsTxtManaged, this.autoUpdateModel, this.bmCookieEnabled, this.suppressSessionScore, });

factory BotManagementBmSubscriptionConfigRequest.fromJson(Map<String, dynamic> json) {return BotManagementBmSubscriptionConfigRequest(
  aiBotsProtection: json['ai_bots_protection'] != null ? BotManagementAiBotsProtection.fromJson(json['ai_bots_protection'] as String) : null,
  cfRobotsVariant: json['cf_robots_variant'] != null ? BotManagementCfRobotsVariant.fromJson(json['cf_robots_variant'] as String) : null,
  crawlerProtection: json['crawler_protection'] != null ? BotManagementCrawlerProtection.fromJson(json['crawler_protection'] as String) : null,
  enableJs: json['enable_js'] != null ? BotManagementEnableJs.fromJson(json['enable_js'] as bool) : null,
  isRobotsTxtManaged: json['is_robots_txt_managed'] != null ? BotManagementIsRobotsTxtManaged.fromJson(json['is_robots_txt_managed'] as bool) : null,
  autoUpdateModel: json['auto_update_model'] != null ? BotManagementAutoUpdateModel.fromJson(json['auto_update_model'] as bool) : null,
  bmCookieEnabled: json['bm_cookie_enabled'] != null ? BotManagementBmCookieEnabled.fromJson(json['bm_cookie_enabled'] as bool) : null,
  suppressSessionScore: json['suppress_session_score'] != null ? BotManagementSuppressSessionScore.fromJson(json['suppress_session_score'] as bool) : null,
);}

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

/// Automatically update to the newest bot detection models created by Cloudflare as they are released. [Learn more.](https://developers.cloudflare.com/bots/reference/machine-learning-models#model-versions-and-release-notes)
final BotManagementAutoUpdateModel? autoUpdateModel;

/// Indicates that the bot management cookie can be placed on end user devices accessing the site. Defaults to true
final BotManagementBmCookieEnabled? bmCookieEnabled;

/// Whether to disable tracking the highest bot score for a session in the Bot Management cookie.
final BotManagementSuppressSessionScore? suppressSessionScore;

Map<String, dynamic> toJson() {return {
  if (aiBotsProtection != null) 'ai_bots_protection': aiBotsProtection?.toJson(),
  if (cfRobotsVariant != null) 'cf_robots_variant': cfRobotsVariant?.toJson(),
  if (crawlerProtection != null) 'crawler_protection': crawlerProtection?.toJson(),
  if (enableJs != null) 'enable_js': enableJs?.toJson(),
  if (isRobotsTxtManaged != null) 'is_robots_txt_managed': isRobotsTxtManaged?.toJson(),
  if (autoUpdateModel != null) 'auto_update_model': autoUpdateModel?.toJson(),
  if (bmCookieEnabled != null) 'bm_cookie_enabled': bmCookieEnabled?.toJson(),
  if (suppressSessionScore != null) 'suppress_session_score': suppressSessionScore?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'ai_bots_protection', 'cf_robots_variant', 'crawler_protection', 'enable_js', 'is_robots_txt_managed', 'auto_update_model', 'bm_cookie_enabled', 'suppress_session_score'}.contains(key));}
BotManagementBmSubscriptionConfigRequest copyWith({BotManagementAiBotsProtection? Function()? aiBotsProtection, BotManagementCfRobotsVariant? Function()? cfRobotsVariant, BotManagementCrawlerProtection? Function()? crawlerProtection, BotManagementEnableJs? Function()? enableJs, BotManagementIsRobotsTxtManaged? Function()? isRobotsTxtManaged, BotManagementAutoUpdateModel? Function()? autoUpdateModel, BotManagementBmCookieEnabled? Function()? bmCookieEnabled, BotManagementSuppressSessionScore? Function()? suppressSessionScore, }) {return BotManagementBmSubscriptionConfigRequest(
  aiBotsProtection: aiBotsProtection != null ? aiBotsProtection() : this.aiBotsProtection,
  cfRobotsVariant: cfRobotsVariant != null ? cfRobotsVariant() : this.cfRobotsVariant,
  crawlerProtection: crawlerProtection != null ? crawlerProtection() : this.crawlerProtection,
  enableJs: enableJs != null ? enableJs() : this.enableJs,
  isRobotsTxtManaged: isRobotsTxtManaged != null ? isRobotsTxtManaged() : this.isRobotsTxtManaged,
  autoUpdateModel: autoUpdateModel != null ? autoUpdateModel() : this.autoUpdateModel,
  bmCookieEnabled: bmCookieEnabled != null ? bmCookieEnabled() : this.bmCookieEnabled,
  suppressSessionScore: suppressSessionScore != null ? suppressSessionScore() : this.suppressSessionScore,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is BotManagementBmSubscriptionConfigRequest &&
          aiBotsProtection == other.aiBotsProtection &&
          cfRobotsVariant == other.cfRobotsVariant &&
          crawlerProtection == other.crawlerProtection &&
          enableJs == other.enableJs &&
          isRobotsTxtManaged == other.isRobotsTxtManaged &&
          autoUpdateModel == other.autoUpdateModel &&
          bmCookieEnabled == other.bmCookieEnabled &&
          suppressSessionScore == other.suppressSessionScore;}
@override int get hashCode {return Object.hash(aiBotsProtection, cfRobotsVariant, crawlerProtection, enableJs, isRobotsTxtManaged, autoUpdateModel, bmCookieEnabled, suppressSessionScore);}
@override String toString() {return 'BotManagementBmSubscriptionConfigRequest(aiBotsProtection: $aiBotsProtection, cfRobotsVariant: $cfRobotsVariant, crawlerProtection: $crawlerProtection, enableJs: $enableJs, isRobotsTxtManaged: $isRobotsTxtManaged, autoUpdateModel: $autoUpdateModel, bmCookieEnabled: $bmCookieEnabled, suppressSessionScore: $suppressSessionScore)';}
}
