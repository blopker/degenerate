// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'bot_management_ai_bots_protection.dart';import 'bot_management_cf_robots_variant.dart';import 'bot_management_crawler_protection.dart';import 'bot_management_enable_js.dart';import 'bot_management_is_robots_txt_managed.dart';import 'bot_management_optimize_wordpress.dart';import 'bot_management_sbfm_definitely_automated.dart';import 'bot_management_sbfm_likely_automated.dart';import 'bot_management_sbfm_static_resource_protection.dart';import 'bot_management_sbfm_verified_bots.dart';@immutable final class BotManagementSbfmLikelyConfigRequest {const BotManagementSbfmLikelyConfigRequest({this.aiBotsProtection, this.cfRobotsVariant, this.crawlerProtection, this.enableJs, this.isRobotsTxtManaged, this.optimizeWordpress, this.sbfmDefinitelyAutomated, this.sbfmLikelyAutomated, this.sbfmStaticResourceProtection, this.sbfmVerifiedBots, });

factory BotManagementSbfmLikelyConfigRequest.fromJson(Map<String, dynamic> json) { return BotManagementSbfmLikelyConfigRequest(
  aiBotsProtection: json['ai_bots_protection'] != null ? BotManagementAiBotsProtection.fromJson(json['ai_bots_protection'] as String) : null,
  cfRobotsVariant: json['cf_robots_variant'] != null ? BotManagementCfRobotsVariant.fromJson(json['cf_robots_variant'] as String) : null,
  crawlerProtection: json['crawler_protection'] != null ? BotManagementCrawlerProtection.fromJson(json['crawler_protection'] as String) : null,
  enableJs: json['enable_js'] != null ? BotManagementEnableJs.fromJson(json['enable_js'] as bool) : null,
  isRobotsTxtManaged: json['is_robots_txt_managed'] != null ? BotManagementIsRobotsTxtManaged.fromJson(json['is_robots_txt_managed'] as bool) : null,
  optimizeWordpress: json['optimize_wordpress'] != null ? BotManagementOptimizeWordpress.fromJson(json['optimize_wordpress'] as bool) : null,
  sbfmDefinitelyAutomated: json['sbfm_definitely_automated'] != null ? BotManagementSbfmDefinitelyAutomated.fromJson(json['sbfm_definitely_automated'] as String) : null,
  sbfmLikelyAutomated: json['sbfm_likely_automated'] != null ? BotManagementSbfmLikelyAutomated.fromJson(json['sbfm_likely_automated'] as String) : null,
  sbfmStaticResourceProtection: json['sbfm_static_resource_protection'] != null ? BotManagementSbfmStaticResourceProtection.fromJson(json['sbfm_static_resource_protection'] as bool) : null,
  sbfmVerifiedBots: json['sbfm_verified_bots'] != null ? BotManagementSbfmVerifiedBots.fromJson(json['sbfm_verified_bots'] as String) : null,
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

/// Whether to optimize Super Bot Fight Mode protections for Wordpress.
final BotManagementOptimizeWordpress? optimizeWordpress;

/// Super Bot Fight Mode (SBFM) action to take on definitely automated requests.
final BotManagementSbfmDefinitelyAutomated? sbfmDefinitelyAutomated;

/// Super Bot Fight Mode (SBFM) action to take on likely automated requests.
final BotManagementSbfmLikelyAutomated? sbfmLikelyAutomated;

/// Super Bot Fight Mode (SBFM) to enable static resource protection.
/// Enable if static resources on your application need bot protection.
/// Note: Static resource protection can also result in legitimate traffic being blocked.
/// 
final BotManagementSbfmStaticResourceProtection? sbfmStaticResourceProtection;

/// Super Bot Fight Mode (SBFM) action to take on verified bots requests.
final BotManagementSbfmVerifiedBots? sbfmVerifiedBots;

Map<String, dynamic> toJson() { return {
  if (aiBotsProtection != null) 'ai_bots_protection': aiBotsProtection?.toJson(),
  if (cfRobotsVariant != null) 'cf_robots_variant': cfRobotsVariant?.toJson(),
  if (crawlerProtection != null) 'crawler_protection': crawlerProtection?.toJson(),
  if (enableJs != null) 'enable_js': enableJs?.toJson(),
  if (isRobotsTxtManaged != null) 'is_robots_txt_managed': isRobotsTxtManaged?.toJson(),
  if (optimizeWordpress != null) 'optimize_wordpress': optimizeWordpress?.toJson(),
  if (sbfmDefinitelyAutomated != null) 'sbfm_definitely_automated': sbfmDefinitelyAutomated?.toJson(),
  if (sbfmLikelyAutomated != null) 'sbfm_likely_automated': sbfmLikelyAutomated?.toJson(),
  if (sbfmStaticResourceProtection != null) 'sbfm_static_resource_protection': sbfmStaticResourceProtection?.toJson(),
  if (sbfmVerifiedBots != null) 'sbfm_verified_bots': sbfmVerifiedBots?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ai_bots_protection', 'cf_robots_variant', 'crawler_protection', 'enable_js', 'is_robots_txt_managed', 'optimize_wordpress', 'sbfm_definitely_automated', 'sbfm_likely_automated', 'sbfm_static_resource_protection', 'sbfm_verified_bots'}.contains(key)); } 
BotManagementSbfmLikelyConfigRequest copyWith({BotManagementAiBotsProtection? Function()? aiBotsProtection, BotManagementCfRobotsVariant? Function()? cfRobotsVariant, BotManagementCrawlerProtection? Function()? crawlerProtection, BotManagementEnableJs? Function()? enableJs, BotManagementIsRobotsTxtManaged? Function()? isRobotsTxtManaged, BotManagementOptimizeWordpress? Function()? optimizeWordpress, BotManagementSbfmDefinitelyAutomated? Function()? sbfmDefinitelyAutomated, BotManagementSbfmLikelyAutomated? Function()? sbfmLikelyAutomated, BotManagementSbfmStaticResourceProtection? Function()? sbfmStaticResourceProtection, BotManagementSbfmVerifiedBots? Function()? sbfmVerifiedBots, }) { return BotManagementSbfmLikelyConfigRequest(
  aiBotsProtection: aiBotsProtection != null ? aiBotsProtection() : this.aiBotsProtection,
  cfRobotsVariant: cfRobotsVariant != null ? cfRobotsVariant() : this.cfRobotsVariant,
  crawlerProtection: crawlerProtection != null ? crawlerProtection() : this.crawlerProtection,
  enableJs: enableJs != null ? enableJs() : this.enableJs,
  isRobotsTxtManaged: isRobotsTxtManaged != null ? isRobotsTxtManaged() : this.isRobotsTxtManaged,
  optimizeWordpress: optimizeWordpress != null ? optimizeWordpress() : this.optimizeWordpress,
  sbfmDefinitelyAutomated: sbfmDefinitelyAutomated != null ? sbfmDefinitelyAutomated() : this.sbfmDefinitelyAutomated,
  sbfmLikelyAutomated: sbfmLikelyAutomated != null ? sbfmLikelyAutomated() : this.sbfmLikelyAutomated,
  sbfmStaticResourceProtection: sbfmStaticResourceProtection != null ? sbfmStaticResourceProtection() : this.sbfmStaticResourceProtection,
  sbfmVerifiedBots: sbfmVerifiedBots != null ? sbfmVerifiedBots() : this.sbfmVerifiedBots,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BotManagementSbfmLikelyConfigRequest &&
          aiBotsProtection == other.aiBotsProtection &&
          cfRobotsVariant == other.cfRobotsVariant &&
          crawlerProtection == other.crawlerProtection &&
          enableJs == other.enableJs &&
          isRobotsTxtManaged == other.isRobotsTxtManaged &&
          optimizeWordpress == other.optimizeWordpress &&
          sbfmDefinitelyAutomated == other.sbfmDefinitelyAutomated &&
          sbfmLikelyAutomated == other.sbfmLikelyAutomated &&
          sbfmStaticResourceProtection == other.sbfmStaticResourceProtection &&
          sbfmVerifiedBots == other.sbfmVerifiedBots; } 
@override int get hashCode { return Object.hash(aiBotsProtection, cfRobotsVariant, crawlerProtection, enableJs, isRobotsTxtManaged, optimizeWordpress, sbfmDefinitelyAutomated, sbfmLikelyAutomated, sbfmStaticResourceProtection, sbfmVerifiedBots); } 
@override String toString() { return 'BotManagementSbfmLikelyConfigRequest(aiBotsProtection: $aiBotsProtection, cfRobotsVariant: $cfRobotsVariant, crawlerProtection: $crawlerProtection, enableJs: $enableJs, isRobotsTxtManaged: $isRobotsTxtManaged, optimizeWordpress: $optimizeWordpress, sbfmDefinitelyAutomated: $sbfmDefinitelyAutomated, sbfmLikelyAutomated: $sbfmLikelyAutomated, sbfmStaticResourceProtection: $sbfmStaticResourceProtection, sbfmVerifiedBots: $sbfmVerifiedBots)'; } 
 }
