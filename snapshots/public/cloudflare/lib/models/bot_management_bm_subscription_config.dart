// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'bot_management_bm_subscription_config_stale_zone_configuration.dart';/// Automatically update to the newest bot detection models created by Cloudflare as they are released. [Learn more.](https://developers.cloudflare.com/bots/reference/machine-learning-models#model-versions-and-release-notes)
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
@immutable final class BotManagementBmSubscriptionConfig {const BotManagementBmSubscriptionConfig({this.autoUpdateModel, this.bmCookieEnabled, this.staleZoneConfiguration, this.suppressSessionScore, });

factory BotManagementBmSubscriptionConfig.fromJson(Map<String, dynamic> json) { return BotManagementBmSubscriptionConfig(
  autoUpdateModel: json['auto_update_model'] != null ? BotManagementAutoUpdateModel.fromJson(json['auto_update_model'] as bool) : null,
  bmCookieEnabled: json['bm_cookie_enabled'] != null ? BotManagementBmCookieEnabled.fromJson(json['bm_cookie_enabled'] as bool) : null,
  staleZoneConfiguration: json['stale_zone_configuration'] != null ? BotManagementBmSubscriptionConfigStaleZoneConfiguration.fromJson(json['stale_zone_configuration'] as Map<String, dynamic>) : null,
  suppressSessionScore: json['suppress_session_score'] != null ? BotManagementSuppressSessionScore.fromJson(json['suppress_session_score'] as bool) : null,
); }

/// Automatically update to the newest bot detection models created by Cloudflare as they are released. [Learn more.](https://developers.cloudflare.com/bots/reference/machine-learning-models#model-versions-and-release-notes)
final BotManagementAutoUpdateModel? autoUpdateModel;

/// Indicates that the bot management cookie can be placed on end user devices accessing the site. Defaults to true
final BotManagementBmCookieEnabled? bmCookieEnabled;

/// A read-only field that shows which unauthorized settings are currently active on the zone. These settings typically result from upgrades or downgrades.
final BotManagementBmSubscriptionConfigStaleZoneConfiguration? staleZoneConfiguration;

final BotManagementSuppressSessionScore? suppressSessionScore;

Map<String, dynamic> toJson() { return {
  if (autoUpdateModel != null) 'auto_update_model': autoUpdateModel?.toJson(),
  if (bmCookieEnabled != null) 'bm_cookie_enabled': bmCookieEnabled?.toJson(),
  if (staleZoneConfiguration != null) 'stale_zone_configuration': staleZoneConfiguration?.toJson(),
  if (suppressSessionScore != null) 'suppress_session_score': suppressSessionScore?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'auto_update_model', 'bm_cookie_enabled', 'stale_zone_configuration', 'suppress_session_score'}.contains(key)); } 
BotManagementBmSubscriptionConfig copyWith({BotManagementAutoUpdateModel Function()? autoUpdateModel, BotManagementBmCookieEnabled Function()? bmCookieEnabled, BotManagementBmSubscriptionConfigStaleZoneConfiguration Function()? staleZoneConfiguration, BotManagementSuppressSessionScore Function()? suppressSessionScore, }) { return BotManagementBmSubscriptionConfig(
  autoUpdateModel: autoUpdateModel != null ? autoUpdateModel() : this.autoUpdateModel,
  bmCookieEnabled: bmCookieEnabled != null ? bmCookieEnabled() : this.bmCookieEnabled,
  staleZoneConfiguration: staleZoneConfiguration != null ? staleZoneConfiguration() : this.staleZoneConfiguration,
  suppressSessionScore: suppressSessionScore != null ? suppressSessionScore() : this.suppressSessionScore,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BotManagementBmSubscriptionConfig &&
          autoUpdateModel == other.autoUpdateModel &&
          bmCookieEnabled == other.bmCookieEnabled &&
          staleZoneConfiguration == other.staleZoneConfiguration &&
          suppressSessionScore == other.suppressSessionScore; } 
@override int get hashCode { return Object.hash(autoUpdateModel, bmCookieEnabled, staleZoneConfiguration, suppressSessionScore); } 
@override String toString() { return 'BotManagementBmSubscriptionConfig(autoUpdateModel: $autoUpdateModel, bmCookieEnabled: $bmCookieEnabled, staleZoneConfiguration: $staleZoneConfiguration, suppressSessionScore: $suppressSessionScore)'; } 
 }
