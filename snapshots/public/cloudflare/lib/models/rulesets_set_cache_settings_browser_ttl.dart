// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The browser TTL mode.
@immutable final class RulesetsSetCacheSettingsBrowserTtlMode {const RulesetsSetCacheSettingsBrowserTtlMode._(this.value);

factory RulesetsSetCacheSettingsBrowserTtlMode.fromJson(String json) { return switch (json) {
  'respect_origin' => respectOrigin,
  'bypass_by_default' => bypassByDefault,
  'override_origin' => overrideOrigin,
  'bypass' => bypass,
  _ => RulesetsSetCacheSettingsBrowserTtlMode._(json),
}; }

static const RulesetsSetCacheSettingsBrowserTtlMode respectOrigin = RulesetsSetCacheSettingsBrowserTtlMode._('respect_origin');

static const RulesetsSetCacheSettingsBrowserTtlMode bypassByDefault = RulesetsSetCacheSettingsBrowserTtlMode._('bypass_by_default');

static const RulesetsSetCacheSettingsBrowserTtlMode overrideOrigin = RulesetsSetCacheSettingsBrowserTtlMode._('override_origin');

static const RulesetsSetCacheSettingsBrowserTtlMode bypass = RulesetsSetCacheSettingsBrowserTtlMode._('bypass');

static const List<RulesetsSetCacheSettingsBrowserTtlMode> values = [respectOrigin, bypassByDefault, overrideOrigin, bypass];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsSetCacheSettingsBrowserTtlMode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RulesetsSetCacheSettingsBrowserTtlMode($value)'; } 
 }
/// How long client browsers should cache the response. Cloudflare cache purge will not purge content cached on client browsers, so high browser TTLs may lead to stale content.
@immutable final class RulesetsSetCacheSettingsBrowserTtl {const RulesetsSetCacheSettingsBrowserTtl({required this.mode, this.$default, });

factory RulesetsSetCacheSettingsBrowserTtl.fromJson(Map<String, dynamic> json) { return RulesetsSetCacheSettingsBrowserTtl(
  $default: json['default'] != null ? (json['default'] as num).toInt() : null,
  mode: RulesetsSetCacheSettingsBrowserTtlMode.fromJson(json['mode'] as String),
); }

/// The browser TTL (in seconds) if you choose the "override_origin" mode.
final int? $default;

/// The browser TTL mode.
final RulesetsSetCacheSettingsBrowserTtlMode mode;

Map<String, dynamic> toJson() { return {
  'default': ?$default,
  'mode': mode.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('mode'); } 
RulesetsSetCacheSettingsBrowserTtl copyWith({int Function()? $default, RulesetsSetCacheSettingsBrowserTtlMode? mode, }) { return RulesetsSetCacheSettingsBrowserTtl(
  $default: $default != null ? $default() : this.$default,
  mode: mode ?? this.mode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsSetCacheSettingsBrowserTtl &&
          $default == other.$default &&
          mode == other.mode; } 
@override int get hashCode { return Object.hash($default, mode); } 
@override String toString() { return 'RulesetsSetCacheSettingsBrowserTtl(\$default: ${$default}, mode: $mode)'; } 
 }
