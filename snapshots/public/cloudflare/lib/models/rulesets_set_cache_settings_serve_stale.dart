// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// When to serve stale content from cache.
@immutable final class RulesetsSetCacheSettingsServeStale {const RulesetsSetCacheSettingsServeStale({this.disableStaleWhileUpdating});

factory RulesetsSetCacheSettingsServeStale.fromJson(Map<String, dynamic> json) { return RulesetsSetCacheSettingsServeStale(
  disableStaleWhileUpdating: json['disable_stale_while_updating'] as bool?,
); }

/// Whether Cloudflare should disable serving stale content while getting the latest content from the origin.
final bool? disableStaleWhileUpdating;

Map<String, dynamic> toJson() { return {
  'disable_stale_while_updating': ?disableStaleWhileUpdating,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'disable_stale_while_updating'}.contains(key)); } 
RulesetsSetCacheSettingsServeStale copyWith({bool Function()? disableStaleWhileUpdating}) { return RulesetsSetCacheSettingsServeStale(
  disableStaleWhileUpdating: disableStaleWhileUpdating != null ? disableStaleWhileUpdating() : this.disableStaleWhileUpdating,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsSetCacheSettingsServeStale &&
          disableStaleWhileUpdating == other.disableStaleWhileUpdating; } 
@override int get hashCode { return disableStaleWhileUpdating.hashCode; } 
@override String toString() { return 'RulesetsSetCacheSettingsServeStale(disableStaleWhileUpdating: $disableStaleWhileUpdating)'; } 
 }
