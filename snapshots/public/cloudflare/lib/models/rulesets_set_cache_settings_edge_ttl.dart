// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_set_cache_settings_status_code_ttl2.dart';/// The edge TTL mode.
@immutable final class RulesetsSetCacheSettingsEdgeTtlMode {const RulesetsSetCacheSettingsEdgeTtlMode._(this.value);

factory RulesetsSetCacheSettingsEdgeTtlMode.fromJson(String json) { return switch (json) {
  'respect_origin' => respectOrigin,
  'bypass_by_default' => bypassByDefault,
  'override_origin' => overrideOrigin,
  _ => RulesetsSetCacheSettingsEdgeTtlMode._(json),
}; }

static const RulesetsSetCacheSettingsEdgeTtlMode respectOrigin = RulesetsSetCacheSettingsEdgeTtlMode._('respect_origin');

static const RulesetsSetCacheSettingsEdgeTtlMode bypassByDefault = RulesetsSetCacheSettingsEdgeTtlMode._('bypass_by_default');

static const RulesetsSetCacheSettingsEdgeTtlMode overrideOrigin = RulesetsSetCacheSettingsEdgeTtlMode._('override_origin');

static const List<RulesetsSetCacheSettingsEdgeTtlMode> values = [respectOrigin, bypassByDefault, overrideOrigin];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsSetCacheSettingsEdgeTtlMode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RulesetsSetCacheSettingsEdgeTtlMode($value)'; } 
 }
/// How long the Cloudflare edge network should cache the response.
@immutable final class RulesetsSetCacheSettingsEdgeTtl {const RulesetsSetCacheSettingsEdgeTtl({required this.mode, this.$default, this.statusCodeTtl, });

factory RulesetsSetCacheSettingsEdgeTtl.fromJson(Map<String, dynamic> json) { return RulesetsSetCacheSettingsEdgeTtl(
  $default: json['default'] != null ? (json['default'] as num).toInt() : null,
  mode: RulesetsSetCacheSettingsEdgeTtlMode.fromJson(json['mode'] as String),
  statusCodeTtl: (json['status_code_ttl'] as List<dynamic>?)?.map((e) => RulesetsSetCacheSettingsStatusCodeTtl2.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The edge TTL (in seconds) if you choose the "override_origin" mode.
final int? $default;

/// The edge TTL mode.
final RulesetsSetCacheSettingsEdgeTtlMode mode;

final List<RulesetsSetCacheSettingsStatusCodeTtl2>? statusCodeTtl;

Map<String, dynamic> toJson() { return {
  'default': ?$default,
  'mode': mode.toJson(),
  if (statusCodeTtl != null) 'status_code_ttl': statusCodeTtl?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('mode'); } 
RulesetsSetCacheSettingsEdgeTtl copyWith({int Function()? $default, RulesetsSetCacheSettingsEdgeTtlMode? mode, List<RulesetsSetCacheSettingsStatusCodeTtl2> Function()? statusCodeTtl, }) { return RulesetsSetCacheSettingsEdgeTtl(
  $default: $default != null ? $default() : this.$default,
  mode: mode ?? this.mode,
  statusCodeTtl: statusCodeTtl != null ? statusCodeTtl() : this.statusCodeTtl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsSetCacheSettingsEdgeTtl &&
          $default == other.$default &&
          mode == other.mode &&
          listEquals(statusCodeTtl, other.statusCodeTtl); } 
@override int get hashCode { return Object.hash($default, mode, Object.hashAll(statusCodeTtl ?? const [])); } 
@override String toString() { return 'RulesetsSetCacheSettingsEdgeTtl(\$default: ${$default}, mode: $mode, statusCodeTtl: $statusCodeTtl)'; } 
 }
