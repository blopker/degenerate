// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zones_automatic_https_rewrites_value.dart';import 'zones_automatic_platform_optimization.dart';import 'zones_browser_check_value.dart';import 'zones_cache_level_value.dart';import 'zones_cache_rules_aegis_value.dart';import 'zones_email_obfuscation_value.dart';import 'zones_ip_geolocation_value.dart';import 'zones_mirage_value.dart';import 'zones_nel_value.dart';import 'zones_opportunistic_encryption_value.dart';import 'zones_origin_error_page_pass_thru_value.dart';import 'zones_polish_value.dart';import 'zones_response_buffering_value.dart';import 'zones_rocket_loader_value.dart';import 'zones_security_header_value.dart';import 'zones_security_level_value.dart';import 'zones_sort_query_string_for_cache_value.dart';import 'zones_ssl_value.dart';import 'zones_true_client_ip_header_value.dart';import 'zones_waf_value.dart';/// Value of the 0-RTT setting.
final class Zones0rttValue {const Zones0rttValue._(this.value);

factory Zones0rttValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => Zones0rttValue._(json),
}; }

static const Zones0rttValue $on = Zones0rttValue._('on');

static const Zones0rttValue off = Zones0rttValue._('off');

static const List<Zones0rttValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Zones0rttValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Zones0rttValue($value)'; } 
 }
/// Value of the zone setting.
/// Notes: Defaults to on for Business+ plans
final class ZonesAdvancedDdosValue {const ZonesAdvancedDdosValue._(this.value);

factory ZonesAdvancedDdosValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesAdvancedDdosValue._(json),
}; }

static const ZonesAdvancedDdosValue $on = ZonesAdvancedDdosValue._('on');

static const ZonesAdvancedDdosValue off = ZonesAdvancedDdosValue._('off');

static const List<ZonesAdvancedDdosValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesAdvancedDdosValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesAdvancedDdosValue($value)'; } 
 }
/// Value of the zone setting.
final class ZonesAlwaysOnlineValue {const ZonesAlwaysOnlineValue._(this.value);

factory ZonesAlwaysOnlineValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesAlwaysOnlineValue._(json),
}; }

static const ZonesAlwaysOnlineValue $on = ZonesAlwaysOnlineValue._('on');

static const ZonesAlwaysOnlineValue off = ZonesAlwaysOnlineValue._('off');

static const List<ZonesAlwaysOnlineValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesAlwaysOnlineValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesAlwaysOnlineValue($value)'; } 
 }
/// Value of the zone setting.
final class ZonesAlwaysUseHttpsValue {const ZonesAlwaysUseHttpsValue._(this.value);

factory ZonesAlwaysUseHttpsValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesAlwaysUseHttpsValue._(json),
}; }

static const ZonesAlwaysUseHttpsValue $on = ZonesAlwaysUseHttpsValue._('on');

static const ZonesAlwaysUseHttpsValue off = ZonesAlwaysUseHttpsValue._('off');

static const List<ZonesAlwaysUseHttpsValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesAlwaysUseHttpsValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesAlwaysUseHttpsValue($value)'; } 
 }
/// Value of the zone setting.
final class ZonesBrotliValue {const ZonesBrotliValue._(this.value);

factory ZonesBrotliValue.fromJson(String json) { return switch (json) {
  'off' => off,
  'on' => $on,
  _ => ZonesBrotliValue._(json),
}; }

static const ZonesBrotliValue off = ZonesBrotliValue._('off');

static const ZonesBrotliValue $on = ZonesBrotliValue._('on');

static const List<ZonesBrotliValue> values = [off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesBrotliValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesBrotliValue($value)'; } 
 }
/// Value of the zone setting in seconds.
/// Minimum values by plan:
/// - Free: 1 second
/// - Pro: 1 second
/// - Business: 1 second
/// - Enterprise: 1 second
/// Setting a TTL of 0 is equivalent to selecting `Respect Existing Headers` and is allowed for all plans.
extension type const ZonesBrowserCacheTtlValue(int value) {
factory ZonesBrowserCacheTtlValue.fromJson(num json) => ZonesBrowserCacheTtlValue(json.toInt());

num toJson() => value;

}
/// Value of the Origin H2 Max Streams Setting.
extension type const ZonesCacheRulesOriginH2MaxStreamsValue(int value) {
factory ZonesCacheRulesOriginH2MaxStreamsValue.fromJson(num json) => ZonesCacheRulesOriginH2MaxStreamsValue(json.toInt());

num toJson() => value;

}
/// Value of the Origin Max HTTP Version Setting.
final class ZonesCacheRulesOriginMaxHttpVersionValue {const ZonesCacheRulesOriginMaxHttpVersionValue._(this.value);

factory ZonesCacheRulesOriginMaxHttpVersionValue.fromJson(String json) { return switch (json) {
  '2' => $2,
  '1' => $1,
  _ => ZonesCacheRulesOriginMaxHttpVersionValue._(json),
}; }

static const ZonesCacheRulesOriginMaxHttpVersionValue $2 = ZonesCacheRulesOriginMaxHttpVersionValue._('2');

static const ZonesCacheRulesOriginMaxHttpVersionValue $1 = ZonesCacheRulesOriginMaxHttpVersionValue._('1');

static const List<ZonesCacheRulesOriginMaxHttpVersionValue> values = [$2, $1];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesCacheRulesOriginMaxHttpVersionValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesCacheRulesOriginMaxHttpVersionValue($value)'; } 
 }
/// Value of the zone setting.
final class ZonesChallengeTtlValue {const ZonesChallengeTtlValue._(this.value);

factory ZonesChallengeTtlValue.fromJson(double json) { return switch (json) {
  300 => $300,
  900 => $900,
  1800 => $1800,
  2700 => $2700,
  3600 => $3600,
  7200 => $7200,
  10800 => $10800,
  14400 => $14400,
  28800 => $28800,
  57600 => $57600,
  86400 => $86400,
  604800 => $604800,
  2592000.0 => $25920000,
  31536000.0 => $315360000,
  _ => ZonesChallengeTtlValue._(json),
}; }

static const ZonesChallengeTtlValue $300 = ZonesChallengeTtlValue._(300);

static const ZonesChallengeTtlValue $900 = ZonesChallengeTtlValue._(900);

static const ZonesChallengeTtlValue $1800 = ZonesChallengeTtlValue._(1800);

static const ZonesChallengeTtlValue $2700 = ZonesChallengeTtlValue._(2700);

static const ZonesChallengeTtlValue $3600 = ZonesChallengeTtlValue._(3600);

static const ZonesChallengeTtlValue $7200 = ZonesChallengeTtlValue._(7200);

static const ZonesChallengeTtlValue $10800 = ZonesChallengeTtlValue._(10800);

static const ZonesChallengeTtlValue $14400 = ZonesChallengeTtlValue._(14400);

static const ZonesChallengeTtlValue $28800 = ZonesChallengeTtlValue._(28800);

static const ZonesChallengeTtlValue $57600 = ZonesChallengeTtlValue._(57600);

static const ZonesChallengeTtlValue $86400 = ZonesChallengeTtlValue._(86400);

static const ZonesChallengeTtlValue $604800 = ZonesChallengeTtlValue._(604800);

static const ZonesChallengeTtlValue $25920000 = ZonesChallengeTtlValue._(2592000.0);

static const ZonesChallengeTtlValue $315360000 = ZonesChallengeTtlValue._(31536000.0);

static const List<ZonesChallengeTtlValue> values = [$300, $900, $1800, $2700, $3600, $7200, $10800, $14400, $28800, $57600, $86400, $604800, $25920000, $315360000];

final double value;

double toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesChallengeTtlValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesChallengeTtlValue($value)'; } 
 }
/// Value of the zone setting.
final class ZonesChinaNetworkEnabledValue {const ZonesChinaNetworkEnabledValue._(this.value);

factory ZonesChinaNetworkEnabledValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesChinaNetworkEnabledValue._(json),
}; }

static const ZonesChinaNetworkEnabledValue $on = ZonesChinaNetworkEnabledValue._('on');

static const ZonesChinaNetworkEnabledValue off = ZonesChinaNetworkEnabledValue._('off');

static const List<ZonesChinaNetworkEnabledValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesChinaNetworkEnabledValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesChinaNetworkEnabledValue($value)'; } 
 }
/// Value of the cname flattening setting.
final class ZonesCnameFlatteningValue {const ZonesCnameFlatteningValue._(this.value);

factory ZonesCnameFlatteningValue.fromJson(String json) { return switch (json) {
  'flatten_at_root' => flattenAtRoot,
  'flatten_all' => flattenAll,
  _ => ZonesCnameFlatteningValue._(json),
}; }

static const ZonesCnameFlatteningValue flattenAtRoot = ZonesCnameFlatteningValue._('flatten_at_root');

static const ZonesCnameFlatteningValue flattenAll = ZonesCnameFlatteningValue._('flatten_all');

static const List<ZonesCnameFlatteningValue> values = [flattenAtRoot, flattenAll];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesCnameFlatteningValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesCnameFlatteningValue($value)'; } 
 }
/// Value of the zone setting.
final class ZonesContentConverterValue {const ZonesContentConverterValue._(this.value);

factory ZonesContentConverterValue.fromJson(String json) { return switch (json) {
  'off' => off,
  'on' => $on,
  _ => ZonesContentConverterValue._(json),
}; }

static const ZonesContentConverterValue off = ZonesContentConverterValue._('off');

static const ZonesContentConverterValue $on = ZonesContentConverterValue._('on');

static const List<ZonesContentConverterValue> values = [off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesContentConverterValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesContentConverterValue($value)'; } 
 }
/// Value of the zone setting.
final class ZonesDevelopmentModeValue {const ZonesDevelopmentModeValue._(this.value);

factory ZonesDevelopmentModeValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesDevelopmentModeValue._(json),
}; }

static const ZonesDevelopmentModeValue $on = ZonesDevelopmentModeValue._('on');

static const ZonesDevelopmentModeValue off = ZonesDevelopmentModeValue._('off');

static const List<ZonesDevelopmentModeValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesDevelopmentModeValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesDevelopmentModeValue($value)'; } 
 }
/// Value of the zone setting.
final class ZonesEarlyHintsValue {const ZonesEarlyHintsValue._(this.value);

factory ZonesEarlyHintsValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesEarlyHintsValue._(json),
}; }

static const ZonesEarlyHintsValue $on = ZonesEarlyHintsValue._('on');

static const ZonesEarlyHintsValue off = ZonesEarlyHintsValue._('off');

static const List<ZonesEarlyHintsValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesEarlyHintsValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesEarlyHintsValue($value)'; } 
 }
/// Value of the zone setting.
/// Notes: The minimum TTL available depends on the plan level of the zone. (Enterprise = 30, Business = 1800, Pro = 3600, Free = 7200)
final class ZonesEdgeCacheTtlValue {const ZonesEdgeCacheTtlValue._(this.value);

factory ZonesEdgeCacheTtlValue.fromJson(double json) { return switch (json) {
  30 => $30,
  60 => $60,
  300 => $300,
  1200 => $1200,
  1800 => $1800,
  3600 => $3600,
  7200 => $7200,
  10800 => $10800,
  14400 => $14400,
  18000 => $18000,
  28800 => $28800,
  43200 => $43200,
  57600 => $57600,
  72000 => $72000,
  86400 => $86400,
  172800 => $172800,
  259200 => $259200,
  345600 => $345600,
  432000 => $432000,
  518400 => $518400,
  604800 => $604800,
  _ => ZonesEdgeCacheTtlValue._(json),
}; }

static const ZonesEdgeCacheTtlValue $30 = ZonesEdgeCacheTtlValue._(30);

static const ZonesEdgeCacheTtlValue $60 = ZonesEdgeCacheTtlValue._(60);

static const ZonesEdgeCacheTtlValue $300 = ZonesEdgeCacheTtlValue._(300);

static const ZonesEdgeCacheTtlValue $1200 = ZonesEdgeCacheTtlValue._(1200);

static const ZonesEdgeCacheTtlValue $1800 = ZonesEdgeCacheTtlValue._(1800);

static const ZonesEdgeCacheTtlValue $3600 = ZonesEdgeCacheTtlValue._(3600);

static const ZonesEdgeCacheTtlValue $7200 = ZonesEdgeCacheTtlValue._(7200);

static const ZonesEdgeCacheTtlValue $10800 = ZonesEdgeCacheTtlValue._(10800);

static const ZonesEdgeCacheTtlValue $14400 = ZonesEdgeCacheTtlValue._(14400);

static const ZonesEdgeCacheTtlValue $18000 = ZonesEdgeCacheTtlValue._(18000);

static const ZonesEdgeCacheTtlValue $28800 = ZonesEdgeCacheTtlValue._(28800);

static const ZonesEdgeCacheTtlValue $43200 = ZonesEdgeCacheTtlValue._(43200);

static const ZonesEdgeCacheTtlValue $57600 = ZonesEdgeCacheTtlValue._(57600);

static const ZonesEdgeCacheTtlValue $72000 = ZonesEdgeCacheTtlValue._(72000);

static const ZonesEdgeCacheTtlValue $86400 = ZonesEdgeCacheTtlValue._(86400);

static const ZonesEdgeCacheTtlValue $172800 = ZonesEdgeCacheTtlValue._(172800);

static const ZonesEdgeCacheTtlValue $259200 = ZonesEdgeCacheTtlValue._(259200);

static const ZonesEdgeCacheTtlValue $345600 = ZonesEdgeCacheTtlValue._(345600);

static const ZonesEdgeCacheTtlValue $432000 = ZonesEdgeCacheTtlValue._(432000);

static const ZonesEdgeCacheTtlValue $518400 = ZonesEdgeCacheTtlValue._(518400);

static const ZonesEdgeCacheTtlValue $604800 = ZonesEdgeCacheTtlValue._(604800);

static const List<ZonesEdgeCacheTtlValue> values = [$30, $60, $300, $1200, $1800, $3600, $7200, $10800, $14400, $18000, $28800, $43200, $57600, $72000, $86400, $172800, $259200, $345600, $432000, $518400, $604800];

final double value;

double toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesEdgeCacheTtlValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesEdgeCacheTtlValue($value)'; } 
 }
/// Value of the zone setting.
final class ZonesH2PrioritizationValue {const ZonesH2PrioritizationValue._(this.value);

factory ZonesH2PrioritizationValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  'custom' => custom,
  _ => ZonesH2PrioritizationValue._(json),
}; }

static const ZonesH2PrioritizationValue $on = ZonesH2PrioritizationValue._('on');

static const ZonesH2PrioritizationValue off = ZonesH2PrioritizationValue._('off');

static const ZonesH2PrioritizationValue custom = ZonesH2PrioritizationValue._('custom');

static const List<ZonesH2PrioritizationValue> values = [$on, off, custom];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesH2PrioritizationValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesH2PrioritizationValue($value)'; } 
 }
/// Value of the zone setting.
final class ZonesHotlinkProtectionValue {const ZonesHotlinkProtectionValue._(this.value);

factory ZonesHotlinkProtectionValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesHotlinkProtectionValue._(json),
}; }

static const ZonesHotlinkProtectionValue $on = ZonesHotlinkProtectionValue._('on');

static const ZonesHotlinkProtectionValue off = ZonesHotlinkProtectionValue._('off');

static const List<ZonesHotlinkProtectionValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesHotlinkProtectionValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesHotlinkProtectionValue($value)'; } 
 }
/// Value of the HTTP2 setting.
final class ZonesHttp2Value {const ZonesHttp2Value._(this.value);

factory ZonesHttp2Value.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesHttp2Value._(json),
}; }

static const ZonesHttp2Value $on = ZonesHttp2Value._('on');

static const ZonesHttp2Value off = ZonesHttp2Value._('off');

static const List<ZonesHttp2Value> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesHttp2Value && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesHttp2Value($value)'; } 
 }
/// Value of the HTTP3 setting.
final class ZonesHttp3Value {const ZonesHttp3Value._(this.value);

factory ZonesHttp3Value.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesHttp3Value._(json),
}; }

static const ZonesHttp3Value $on = ZonesHttp3Value._('on');

static const ZonesHttp3Value off = ZonesHttp3Value._('off');

static const List<ZonesHttp3Value> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesHttp3Value && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesHttp3Value($value)'; } 
 }
/// Whether the feature is enabled, disabled, or enabled in `open proxy` mode.
final class ZonesImageResizingValue {const ZonesImageResizingValue._(this.value);

factory ZonesImageResizingValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  'open' => open,
  _ => ZonesImageResizingValue._(json),
}; }

static const ZonesImageResizingValue $on = ZonesImageResizingValue._('on');

static const ZonesImageResizingValue off = ZonesImageResizingValue._('off');

static const ZonesImageResizingValue open = ZonesImageResizingValue._('open');

static const List<ZonesImageResizingValue> values = [$on, off, open];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesImageResizingValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesImageResizingValue($value)'; } 
 }
/// Value of the zone setting.
final class ZonesIpv6Value {const ZonesIpv6Value._(this.value);

factory ZonesIpv6Value.fromJson(String json) { return switch (json) {
  'off' => off,
  'on' => $on,
  _ => ZonesIpv6Value._(json),
}; }

static const ZonesIpv6Value off = ZonesIpv6Value._('off');

static const ZonesIpv6Value $on = ZonesIpv6Value._('on');

static const List<ZonesIpv6Value> values = [off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesIpv6Value && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesIpv6Value($value)'; } 
 }
/// Value of the zone setting.
/// Notes: The size depends on the plan level of the zone. (Enterprise = 500, Business = 200, Pro = 100, Free = 100)
final class ZonesMaxUploadValue {const ZonesMaxUploadValue._(this.value);

factory ZonesMaxUploadValue.fromJson(int json) { return switch (json) {
  100 => $100,
  125 => $125,
  150 => $150,
  175 => $175,
  200 => $200,
  225 => $225,
  250 => $250,
  275 => $275,
  300 => $300,
  325 => $325,
  350 => $350,
  375 => $375,
  400 => $400,
  425 => $425,
  450 => $450,
  475 => $475,
  500 => $500,
  1000 => $1000,
  _ => ZonesMaxUploadValue._(json),
}; }

static const ZonesMaxUploadValue $100 = ZonesMaxUploadValue._(100);

static const ZonesMaxUploadValue $125 = ZonesMaxUploadValue._(125);

static const ZonesMaxUploadValue $150 = ZonesMaxUploadValue._(150);

static const ZonesMaxUploadValue $175 = ZonesMaxUploadValue._(175);

static const ZonesMaxUploadValue $200 = ZonesMaxUploadValue._(200);

static const ZonesMaxUploadValue $225 = ZonesMaxUploadValue._(225);

static const ZonesMaxUploadValue $250 = ZonesMaxUploadValue._(250);

static const ZonesMaxUploadValue $275 = ZonesMaxUploadValue._(275);

static const ZonesMaxUploadValue $300 = ZonesMaxUploadValue._(300);

static const ZonesMaxUploadValue $325 = ZonesMaxUploadValue._(325);

static const ZonesMaxUploadValue $350 = ZonesMaxUploadValue._(350);

static const ZonesMaxUploadValue $375 = ZonesMaxUploadValue._(375);

static const ZonesMaxUploadValue $400 = ZonesMaxUploadValue._(400);

static const ZonesMaxUploadValue $425 = ZonesMaxUploadValue._(425);

static const ZonesMaxUploadValue $450 = ZonesMaxUploadValue._(450);

static const ZonesMaxUploadValue $475 = ZonesMaxUploadValue._(475);

static const ZonesMaxUploadValue $500 = ZonesMaxUploadValue._(500);

static const ZonesMaxUploadValue $1000 = ZonesMaxUploadValue._(1000);

static const List<ZonesMaxUploadValue> values = [$100, $125, $150, $175, $200, $225, $250, $275, $300, $325, $350, $375, $400, $425, $450, $475, $500, $1000];

final int value;

int toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesMaxUploadValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesMaxUploadValue($value)'; } 
 }
/// Value of the zone setting.
final class ZonesMinTlsVersionValue {const ZonesMinTlsVersionValue._(this.value);

factory ZonesMinTlsVersionValue.fromJson(String json) { return switch (json) {
  '1.0' => $10,
  '1.1' => $11,
  '1.2' => $12,
  '1.3' => $13,
  _ => ZonesMinTlsVersionValue._(json),
}; }

static const ZonesMinTlsVersionValue $10 = ZonesMinTlsVersionValue._('1.0');

static const ZonesMinTlsVersionValue $11 = ZonesMinTlsVersionValue._('1.1');

static const ZonesMinTlsVersionValue $12 = ZonesMinTlsVersionValue._('1.2');

static const ZonesMinTlsVersionValue $13 = ZonesMinTlsVersionValue._('1.3');

static const List<ZonesMinTlsVersionValue> values = [$10, $11, $12, $13];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesMinTlsVersionValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesMinTlsVersionValue($value)'; } 
 }
/// Value of the zone setting.
/// Notes: Default value depends on the zone's plan level.
final class ZonesOpportunisticOnionValue {const ZonesOpportunisticOnionValue._(this.value);

factory ZonesOpportunisticOnionValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesOpportunisticOnionValue._(json),
}; }

static const ZonesOpportunisticOnionValue $on = ZonesOpportunisticOnionValue._('on');

static const ZonesOpportunisticOnionValue off = ZonesOpportunisticOnionValue._('off');

static const List<ZonesOpportunisticOnionValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesOpportunisticOnionValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesOpportunisticOnionValue($value)'; } 
 }
/// Value of the zone setting.
final class ZonesOrangeToOrangeValue {const ZonesOrangeToOrangeValue._(this.value);

factory ZonesOrangeToOrangeValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesOrangeToOrangeValue._(json),
}; }

static const ZonesOrangeToOrangeValue $on = ZonesOrangeToOrangeValue._('on');

static const ZonesOrangeToOrangeValue off = ZonesOrangeToOrangeValue._('off');

static const List<ZonesOrangeToOrangeValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesOrangeToOrangeValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesOrangeToOrangeValue($value)'; } 
 }
/// Value of the zone setting.
final class ZonesPrefetchPreloadValue {const ZonesPrefetchPreloadValue._(this.value);

factory ZonesPrefetchPreloadValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesPrefetchPreloadValue._(json),
}; }

static const ZonesPrefetchPreloadValue $on = ZonesPrefetchPreloadValue._('on');

static const ZonesPrefetchPreloadValue off = ZonesPrefetchPreloadValue._('off');

static const List<ZonesPrefetchPreloadValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesPrefetchPreloadValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesPrefetchPreloadValue($value)'; } 
 }
/// Value of the Privacy Pass v1 (deprecated) zone setting
final class ZonesPrivacyPassValue {const ZonesPrivacyPassValue._(this.value);

factory ZonesPrivacyPassValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesPrivacyPassValue._(json),
}; }

static const ZonesPrivacyPassValue $on = ZonesPrivacyPassValue._('on');

static const ZonesPrivacyPassValue off = ZonesPrivacyPassValue._('off');

static const List<ZonesPrivacyPassValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesPrivacyPassValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesPrivacyPassValue($value)'; } 
 }
/// Value of the zone setting.
/// Notes: Value must be between 1 and 6000
extension type const ZonesProxyReadTimeoutValue(double value) {
factory ZonesProxyReadTimeoutValue.fromJson(num json) => ZonesProxyReadTimeoutValue(json.toDouble());

num toJson() => value;

}
/// Value of the Pseudo IPv4 setting.
final class ZonesPseudoIpv4Value {const ZonesPseudoIpv4Value._(this.value);

factory ZonesPseudoIpv4Value.fromJson(String json) { return switch (json) {
  'off' => off,
  'add_header' => addHeader,
  'overwrite_header' => overwriteHeader,
  _ => ZonesPseudoIpv4Value._(json),
}; }

static const ZonesPseudoIpv4Value off = ZonesPseudoIpv4Value._('off');

static const ZonesPseudoIpv4Value addHeader = ZonesPseudoIpv4Value._('add_header');

static const ZonesPseudoIpv4Value overwriteHeader = ZonesPseudoIpv4Value._('overwrite_header');

static const List<ZonesPseudoIpv4Value> values = [off, addHeader, overwriteHeader];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesPseudoIpv4Value && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesPseudoIpv4Value($value)'; } 
 }
/// Value of the zone setting.
final class ZonesRedirectsForAiTrainingValue {const ZonesRedirectsForAiTrainingValue._(this.value);

factory ZonesRedirectsForAiTrainingValue.fromJson(String json) { return switch (json) {
  'off' => off,
  'on' => $on,
  _ => ZonesRedirectsForAiTrainingValue._(json),
}; }

static const ZonesRedirectsForAiTrainingValue off = ZonesRedirectsForAiTrainingValue._('off');

static const ZonesRedirectsForAiTrainingValue $on = ZonesRedirectsForAiTrainingValue._('on');

static const List<ZonesRedirectsForAiTrainingValue> values = [off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesRedirectsForAiTrainingValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesRedirectsForAiTrainingValue($value)'; } 
 }
/// Value of the zone setting.
final class ZonesReplaceInsecureJsValue {const ZonesReplaceInsecureJsValue._(this.value);

factory ZonesReplaceInsecureJsValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesReplaceInsecureJsValue._(json),
}; }

static const ZonesReplaceInsecureJsValue $on = ZonesReplaceInsecureJsValue._('on');

static const ZonesReplaceInsecureJsValue off = ZonesReplaceInsecureJsValue._('off');

static const List<ZonesReplaceInsecureJsValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesReplaceInsecureJsValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesReplaceInsecureJsValue($value)'; } 
 }
/// Value of the zone setting.
final class ZonesServerSideExcludeValue {const ZonesServerSideExcludeValue._(this.value);

factory ZonesServerSideExcludeValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesServerSideExcludeValue._(json),
}; }

static const ZonesServerSideExcludeValue $on = ZonesServerSideExcludeValue._('on');

static const ZonesServerSideExcludeValue off = ZonesServerSideExcludeValue._('off');

static const List<ZonesServerSideExcludeValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesServerSideExcludeValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesServerSideExcludeValue($value)'; } 
 }
/// Value of the zone setting.
final class ZonesSha1SupportValue {const ZonesSha1SupportValue._(this.value);

factory ZonesSha1SupportValue.fromJson(String json) { return switch (json) {
  'off' => off,
  'on' => $on,
  _ => ZonesSha1SupportValue._(json),
}; }

static const ZonesSha1SupportValue off = ZonesSha1SupportValue._('off');

static const ZonesSha1SupportValue $on = ZonesSha1SupportValue._('on');

static const List<ZonesSha1SupportValue> values = [off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSha1SupportValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesSha1SupportValue($value)'; } 
 }
/// Value of the zone setting.
final class ZonesTls12OnlyValue {const ZonesTls12OnlyValue._(this.value);

factory ZonesTls12OnlyValue.fromJson(String json) { return switch (json) {
  'off' => off,
  'on' => $on,
  _ => ZonesTls12OnlyValue._(json),
}; }

static const ZonesTls12OnlyValue off = ZonesTls12OnlyValue._('off');

static const ZonesTls12OnlyValue $on = ZonesTls12OnlyValue._('on');

static const List<ZonesTls12OnlyValue> values = [off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesTls12OnlyValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesTls12OnlyValue($value)'; } 
 }
/// Value of the zone setting.
/// Notes: Default value depends on the zone's plan level.
final class ZonesTls13Value {const ZonesTls13Value._(this.value);

factory ZonesTls13Value.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  'zrt' => zrt,
  _ => ZonesTls13Value._(json),
}; }

static const ZonesTls13Value $on = ZonesTls13Value._('on');

static const ZonesTls13Value off = ZonesTls13Value._('off');

static const ZonesTls13Value zrt = ZonesTls13Value._('zrt');

static const List<ZonesTls13Value> values = [$on, off, zrt];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesTls13Value && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesTls13Value($value)'; } 
 }
/// value of the zone setting.
final class ZonesTlsClientAuthValue {const ZonesTlsClientAuthValue._(this.value);

factory ZonesTlsClientAuthValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesTlsClientAuthValue._(json),
}; }

static const ZonesTlsClientAuthValue $on = ZonesTlsClientAuthValue._('on');

static const ZonesTlsClientAuthValue off = ZonesTlsClientAuthValue._('off');

static const List<ZonesTlsClientAuthValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesTlsClientAuthValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesTlsClientAuthValue($value)'; } 
 }
/// Value of the zone setting.
final class ZonesWebpValue {const ZonesWebpValue._(this.value);

factory ZonesWebpValue.fromJson(String json) { return switch (json) {
  'off' => off,
  'on' => $on,
  _ => ZonesWebpValue._(json),
}; }

static const ZonesWebpValue off = ZonesWebpValue._('off');

static const ZonesWebpValue $on = ZonesWebpValue._('on');

static const List<ZonesWebpValue> values = [off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesWebpValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesWebpValue($value)'; } 
 }
/// Value of the zone setting.
final class ZonesWebsocketsValue {const ZonesWebsocketsValue._(this.value);

factory ZonesWebsocketsValue.fromJson(String json) { return switch (json) {
  'off' => off,
  'on' => $on,
  _ => ZonesWebsocketsValue._(json),
}; }

static const ZonesWebsocketsValue off = ZonesWebsocketsValue._('off');

static const ZonesWebsocketsValue $on = ZonesWebsocketsValue._('on');

static const List<ZonesWebsocketsValue> values = [off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesWebsocketsValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesWebsocketsValue($value)'; } 
 }
/// A value that is one of: `Zones0rttValue`, `ZonesAdvancedDdosValue`, `ZonesCacheRulesAegisValue`, `ZonesAlwaysOnlineValue`, `ZonesAlwaysUseHttpsValue`, `ZonesAutomaticHttpsRewritesValue`, `ZonesBrotliValue`, `ZonesBrowserCacheTtlValue`, `ZonesBrowserCheckValue`, `ZonesCacheLevelValue`, `ZonesChallengeTtlValue`, `ZonesChinaNetworkEnabledValue`, `ZonesContentConverterValue`, `List<String>`, `ZonesCnameFlatteningValue`, `ZonesDevelopmentModeValue`, `ZonesEarlyHintsValue`, `ZonesEdgeCacheTtlValue`, `ZonesEmailObfuscationValue`, `ZonesH2PrioritizationValue`, `ZonesHotlinkProtectionValue`, `ZonesHttp2Value`, `ZonesHttp3Value`, `ZonesImageResizingValue`, `ZonesIpGeolocationValue`, `ZonesIpv6Value`, `ZonesMaxUploadValue`, `ZonesMinTlsVersionValue`, `ZonesMirageValue`, `ZonesNelValue`, `ZonesOpportunisticEncryptionValue`, `ZonesOpportunisticOnionValue`, `ZonesOrangeToOrangeValue`, `ZonesOriginErrorPagePassThruValue`, `ZonesCacheRulesOriginH2MaxStreamsValue`, `ZonesCacheRulesOriginMaxHttpVersionValue`, `ZonesPolishValue`, `ZonesPrefetchPreloadValue`, `ZonesPrivacyPassValue`, `ZonesProxyReadTimeoutValue`, `ZonesPseudoIpv4Value`, `ZonesRedirectsForAiTrainingValue`, `ZonesReplaceInsecureJsValue`, `ZonesResponseBufferingValue`, `ZonesRocketLoaderValue`, `ZonesAutomaticPlatformOptimization`, `ZonesSecurityHeaderValue`, `ZonesSecurityLevelValue`, `ZonesServerSideExcludeValue`, `ZonesSha1SupportValue`, `ZonesSortQueryStringForCacheValue`, `ZonesSslValue`, `ZonesTls12OnlyValue`, `ZonesTls13Value`, `ZonesTlsClientAuthValue`, `ZonesTrueClientIpHeaderValue`, `ZonesWafValue`, `ZonesWebpValue`, `ZonesWebsocketsValue`.
sealed class ZonesSettingValue {const ZonesSettingValue();

factory ZonesSettingValue.fromJson(Map<String, dynamic> json) {   if (ZonesCacheRulesAegisValue.canParse(json)) {
    return ZonesSettingValueZonesCacheRulesAegisValue(ZonesCacheRulesAegisValue.fromJson(json));
  }
  if (ZonesNelValue.canParse(json)) {
    return ZonesSettingValueZonesNelValue(ZonesNelValue.fromJson(json));
  }
  if (ZonesAutomaticPlatformOptimization.canParse(json)) {
    return ZonesSettingValueZonesAutomaticPlatformOptimization(ZonesAutomaticPlatformOptimization.fromJson(json));
  }
  if (ZonesSecurityHeaderValue.canParse(json)) {
    return ZonesSettingValueZonesSecurityHeaderValue(ZonesSecurityHeaderValue.fromJson(json));
  }
  return ZonesSettingValue$Unknown(json); }

/// The underlying raw value.
dynamic get value;
dynamic toJson() { return value; } 
 }
final class ZonesSettingValueZones0rttValue extends ZonesSettingValue {const ZonesSettingValueZones0rttValue(this._value);

final Zones0rttValue _value;

@override Zones0rttValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZones0rttValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zones0rttValue($_value)'; } 
 }
final class ZonesSettingValueZonesAdvancedDdosValue extends ZonesSettingValue {const ZonesSettingValueZonesAdvancedDdosValue(this._value);

final ZonesAdvancedDdosValue _value;

@override ZonesAdvancedDdosValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesAdvancedDdosValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesAdvancedDdosValue($_value)'; } 
 }
final class ZonesSettingValueZonesCacheRulesAegisValue extends ZonesSettingValue {const ZonesSettingValueZonesCacheRulesAegisValue(this._value);

final ZonesCacheRulesAegisValue _value;

@override ZonesCacheRulesAegisValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesCacheRulesAegisValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesCacheRulesAegisValue($_value)'; } 
 }
final class ZonesSettingValueZonesAlwaysOnlineValue extends ZonesSettingValue {const ZonesSettingValueZonesAlwaysOnlineValue(this._value);

final ZonesAlwaysOnlineValue _value;

@override ZonesAlwaysOnlineValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesAlwaysOnlineValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesAlwaysOnlineValue($_value)'; } 
 }
final class ZonesSettingValueZonesAlwaysUseHttpsValue extends ZonesSettingValue {const ZonesSettingValueZonesAlwaysUseHttpsValue(this._value);

final ZonesAlwaysUseHttpsValue _value;

@override ZonesAlwaysUseHttpsValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesAlwaysUseHttpsValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesAlwaysUseHttpsValue($_value)'; } 
 }
final class ZonesSettingValueZonesAutomaticHttpsRewritesValue extends ZonesSettingValue {const ZonesSettingValueZonesAutomaticHttpsRewritesValue(this._value);

final ZonesAutomaticHttpsRewritesValue _value;

@override ZonesAutomaticHttpsRewritesValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesAutomaticHttpsRewritesValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesAutomaticHttpsRewritesValue($_value)'; } 
 }
final class ZonesSettingValueZonesBrotliValue extends ZonesSettingValue {const ZonesSettingValueZonesBrotliValue(this._value);

final ZonesBrotliValue _value;

@override ZonesBrotliValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesBrotliValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesBrotliValue($_value)'; } 
 }
final class ZonesSettingValueZonesBrowserCacheTtlValue extends ZonesSettingValue {const ZonesSettingValueZonesBrowserCacheTtlValue(this._value);

final ZonesBrowserCacheTtlValue _value;

@override ZonesBrowserCacheTtlValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesBrowserCacheTtlValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesBrowserCacheTtlValue($_value)'; } 
 }
final class ZonesSettingValueZonesBrowserCheckValue extends ZonesSettingValue {const ZonesSettingValueZonesBrowserCheckValue(this._value);

final ZonesBrowserCheckValue _value;

@override ZonesBrowserCheckValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesBrowserCheckValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesBrowserCheckValue($_value)'; } 
 }
final class ZonesSettingValueZonesCacheLevelValue extends ZonesSettingValue {const ZonesSettingValueZonesCacheLevelValue(this._value);

final ZonesCacheLevelValue _value;

@override ZonesCacheLevelValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesCacheLevelValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesCacheLevelValue($_value)'; } 
 }
final class ZonesSettingValueZonesChallengeTtlValue extends ZonesSettingValue {const ZonesSettingValueZonesChallengeTtlValue(this._value);

final ZonesChallengeTtlValue _value;

@override ZonesChallengeTtlValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesChallengeTtlValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesChallengeTtlValue($_value)'; } 
 }
final class ZonesSettingValueZonesChinaNetworkEnabledValue extends ZonesSettingValue {const ZonesSettingValueZonesChinaNetworkEnabledValue(this._value);

final ZonesChinaNetworkEnabledValue _value;

@override ZonesChinaNetworkEnabledValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesChinaNetworkEnabledValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesChinaNetworkEnabledValue($_value)'; } 
 }
final class ZonesSettingValueZonesContentConverterValue extends ZonesSettingValue {const ZonesSettingValueZonesContentConverterValue(this._value);

final ZonesContentConverterValue _value;

@override ZonesContentConverterValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesContentConverterValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesContentConverterValue($_value)'; } 
 }
final class ZonesSettingValueListString extends ZonesSettingValue {const ZonesSettingValueListString(this._value);

final List<String> _value;

@override List<String> get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueListString && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.list<String>($_value)'; } 
 }
final class ZonesSettingValueZonesCnameFlatteningValue extends ZonesSettingValue {const ZonesSettingValueZonesCnameFlatteningValue(this._value);

final ZonesCnameFlatteningValue _value;

@override ZonesCnameFlatteningValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesCnameFlatteningValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesCnameFlatteningValue($_value)'; } 
 }
final class ZonesSettingValueZonesDevelopmentModeValue extends ZonesSettingValue {const ZonesSettingValueZonesDevelopmentModeValue(this._value);

final ZonesDevelopmentModeValue _value;

@override ZonesDevelopmentModeValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesDevelopmentModeValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesDevelopmentModeValue($_value)'; } 
 }
final class ZonesSettingValueZonesEarlyHintsValue extends ZonesSettingValue {const ZonesSettingValueZonesEarlyHintsValue(this._value);

final ZonesEarlyHintsValue _value;

@override ZonesEarlyHintsValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesEarlyHintsValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesEarlyHintsValue($_value)'; } 
 }
final class ZonesSettingValueZonesEdgeCacheTtlValue extends ZonesSettingValue {const ZonesSettingValueZonesEdgeCacheTtlValue(this._value);

final ZonesEdgeCacheTtlValue _value;

@override ZonesEdgeCacheTtlValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesEdgeCacheTtlValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesEdgeCacheTtlValue($_value)'; } 
 }
final class ZonesSettingValueZonesEmailObfuscationValue extends ZonesSettingValue {const ZonesSettingValueZonesEmailObfuscationValue(this._value);

final ZonesEmailObfuscationValue _value;

@override ZonesEmailObfuscationValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesEmailObfuscationValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesEmailObfuscationValue($_value)'; } 
 }
final class ZonesSettingValueZonesH2PrioritizationValue extends ZonesSettingValue {const ZonesSettingValueZonesH2PrioritizationValue(this._value);

final ZonesH2PrioritizationValue _value;

@override ZonesH2PrioritizationValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesH2PrioritizationValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesH2PrioritizationValue($_value)'; } 
 }
final class ZonesSettingValueZonesHotlinkProtectionValue extends ZonesSettingValue {const ZonesSettingValueZonesHotlinkProtectionValue(this._value);

final ZonesHotlinkProtectionValue _value;

@override ZonesHotlinkProtectionValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesHotlinkProtectionValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesHotlinkProtectionValue($_value)'; } 
 }
final class ZonesSettingValueZonesHttp2Value extends ZonesSettingValue {const ZonesSettingValueZonesHttp2Value(this._value);

final ZonesHttp2Value _value;

@override ZonesHttp2Value get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesHttp2Value && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesHttp2Value($_value)'; } 
 }
final class ZonesSettingValueZonesHttp3Value extends ZonesSettingValue {const ZonesSettingValueZonesHttp3Value(this._value);

final ZonesHttp3Value _value;

@override ZonesHttp3Value get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesHttp3Value && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesHttp3Value($_value)'; } 
 }
final class ZonesSettingValueZonesImageResizingValue extends ZonesSettingValue {const ZonesSettingValueZonesImageResizingValue(this._value);

final ZonesImageResizingValue _value;

@override ZonesImageResizingValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesImageResizingValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesImageResizingValue($_value)'; } 
 }
final class ZonesSettingValueZonesIpGeolocationValue extends ZonesSettingValue {const ZonesSettingValueZonesIpGeolocationValue(this._value);

final ZonesIpGeolocationValue _value;

@override ZonesIpGeolocationValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesIpGeolocationValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesIpGeolocationValue($_value)'; } 
 }
final class ZonesSettingValueZonesIpv6Value extends ZonesSettingValue {const ZonesSettingValueZonesIpv6Value(this._value);

final ZonesIpv6Value _value;

@override ZonesIpv6Value get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesIpv6Value && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesIpv6Value($_value)'; } 
 }
final class ZonesSettingValueZonesMaxUploadValue extends ZonesSettingValue {const ZonesSettingValueZonesMaxUploadValue(this._value);

final ZonesMaxUploadValue _value;

@override ZonesMaxUploadValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesMaxUploadValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesMaxUploadValue($_value)'; } 
 }
final class ZonesSettingValueZonesMinTlsVersionValue extends ZonesSettingValue {const ZonesSettingValueZonesMinTlsVersionValue(this._value);

final ZonesMinTlsVersionValue _value;

@override ZonesMinTlsVersionValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesMinTlsVersionValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesMinTlsVersionValue($_value)'; } 
 }
final class ZonesSettingValueZonesMirageValue extends ZonesSettingValue {const ZonesSettingValueZonesMirageValue(this._value);

final ZonesMirageValue _value;

@override ZonesMirageValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesMirageValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesMirageValue($_value)'; } 
 }
final class ZonesSettingValueZonesNelValue extends ZonesSettingValue {const ZonesSettingValueZonesNelValue(this._value);

final ZonesNelValue _value;

@override ZonesNelValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesNelValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesNelValue($_value)'; } 
 }
final class ZonesSettingValueZonesOpportunisticEncryptionValue extends ZonesSettingValue {const ZonesSettingValueZonesOpportunisticEncryptionValue(this._value);

final ZonesOpportunisticEncryptionValue _value;

@override ZonesOpportunisticEncryptionValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesOpportunisticEncryptionValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesOpportunisticEncryptionValue($_value)'; } 
 }
final class ZonesSettingValueZonesOpportunisticOnionValue extends ZonesSettingValue {const ZonesSettingValueZonesOpportunisticOnionValue(this._value);

final ZonesOpportunisticOnionValue _value;

@override ZonesOpportunisticOnionValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesOpportunisticOnionValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesOpportunisticOnionValue($_value)'; } 
 }
final class ZonesSettingValueZonesOrangeToOrangeValue extends ZonesSettingValue {const ZonesSettingValueZonesOrangeToOrangeValue(this._value);

final ZonesOrangeToOrangeValue _value;

@override ZonesOrangeToOrangeValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesOrangeToOrangeValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesOrangeToOrangeValue($_value)'; } 
 }
final class ZonesSettingValueZonesOriginErrorPagePassThruValue extends ZonesSettingValue {const ZonesSettingValueZonesOriginErrorPagePassThruValue(this._value);

final ZonesOriginErrorPagePassThruValue _value;

@override ZonesOriginErrorPagePassThruValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesOriginErrorPagePassThruValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesOriginErrorPagePassThruValue($_value)'; } 
 }
final class ZonesSettingValueZonesCacheRulesOriginH2MaxStreamsValue extends ZonesSettingValue {const ZonesSettingValueZonesCacheRulesOriginH2MaxStreamsValue(this._value);

final ZonesCacheRulesOriginH2MaxStreamsValue _value;

@override ZonesCacheRulesOriginH2MaxStreamsValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesCacheRulesOriginH2MaxStreamsValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesCacheRulesOriginH2MaxStreamsValue($_value)'; } 
 }
final class ZonesSettingValueZonesCacheRulesOriginMaxHttpVersionValue extends ZonesSettingValue {const ZonesSettingValueZonesCacheRulesOriginMaxHttpVersionValue(this._value);

final ZonesCacheRulesOriginMaxHttpVersionValue _value;

@override ZonesCacheRulesOriginMaxHttpVersionValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesCacheRulesOriginMaxHttpVersionValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesCacheRulesOriginMaxHttpVersionValue($_value)'; } 
 }
final class ZonesSettingValueZonesPolishValue extends ZonesSettingValue {const ZonesSettingValueZonesPolishValue(this._value);

final ZonesPolishValue _value;

@override ZonesPolishValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesPolishValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesPolishValue($_value)'; } 
 }
final class ZonesSettingValueZonesPrefetchPreloadValue extends ZonesSettingValue {const ZonesSettingValueZonesPrefetchPreloadValue(this._value);

final ZonesPrefetchPreloadValue _value;

@override ZonesPrefetchPreloadValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesPrefetchPreloadValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesPrefetchPreloadValue($_value)'; } 
 }
final class ZonesSettingValueZonesPrivacyPassValue extends ZonesSettingValue {const ZonesSettingValueZonesPrivacyPassValue(this._value);

final ZonesPrivacyPassValue _value;

@override ZonesPrivacyPassValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesPrivacyPassValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesPrivacyPassValue($_value)'; } 
 }
final class ZonesSettingValueZonesProxyReadTimeoutValue extends ZonesSettingValue {const ZonesSettingValueZonesProxyReadTimeoutValue(this._value);

final ZonesProxyReadTimeoutValue _value;

@override ZonesProxyReadTimeoutValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesProxyReadTimeoutValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesProxyReadTimeoutValue($_value)'; } 
 }
final class ZonesSettingValueZonesPseudoIpv4Value extends ZonesSettingValue {const ZonesSettingValueZonesPseudoIpv4Value(this._value);

final ZonesPseudoIpv4Value _value;

@override ZonesPseudoIpv4Value get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesPseudoIpv4Value && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesPseudoIpv4Value($_value)'; } 
 }
final class ZonesSettingValueZonesRedirectsForAiTrainingValue extends ZonesSettingValue {const ZonesSettingValueZonesRedirectsForAiTrainingValue(this._value);

final ZonesRedirectsForAiTrainingValue _value;

@override ZonesRedirectsForAiTrainingValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesRedirectsForAiTrainingValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesRedirectsForAiTrainingValue($_value)'; } 
 }
final class ZonesSettingValueZonesReplaceInsecureJsValue extends ZonesSettingValue {const ZonesSettingValueZonesReplaceInsecureJsValue(this._value);

final ZonesReplaceInsecureJsValue _value;

@override ZonesReplaceInsecureJsValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesReplaceInsecureJsValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesReplaceInsecureJsValue($_value)'; } 
 }
final class ZonesSettingValueZonesResponseBufferingValue extends ZonesSettingValue {const ZonesSettingValueZonesResponseBufferingValue(this._value);

final ZonesResponseBufferingValue _value;

@override ZonesResponseBufferingValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesResponseBufferingValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesResponseBufferingValue($_value)'; } 
 }
final class ZonesSettingValueZonesRocketLoaderValue extends ZonesSettingValue {const ZonesSettingValueZonesRocketLoaderValue(this._value);

final ZonesRocketLoaderValue _value;

@override ZonesRocketLoaderValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesRocketLoaderValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesRocketLoaderValue($_value)'; } 
 }
final class ZonesSettingValueZonesAutomaticPlatformOptimization extends ZonesSettingValue {const ZonesSettingValueZonesAutomaticPlatformOptimization(this._value);

final ZonesAutomaticPlatformOptimization _value;

@override ZonesAutomaticPlatformOptimization get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesAutomaticPlatformOptimization && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesAutomaticPlatformOptimization($_value)'; } 
 }
final class ZonesSettingValueZonesSecurityHeaderValue extends ZonesSettingValue {const ZonesSettingValueZonesSecurityHeaderValue(this._value);

final ZonesSecurityHeaderValue _value;

@override ZonesSecurityHeaderValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesSecurityHeaderValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesSecurityHeaderValue($_value)'; } 
 }
final class ZonesSettingValueZonesSecurityLevelValue extends ZonesSettingValue {const ZonesSettingValueZonesSecurityLevelValue(this._value);

final ZonesSecurityLevelValue _value;

@override ZonesSecurityLevelValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesSecurityLevelValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesSecurityLevelValue($_value)'; } 
 }
final class ZonesSettingValueZonesServerSideExcludeValue extends ZonesSettingValue {const ZonesSettingValueZonesServerSideExcludeValue(this._value);

final ZonesServerSideExcludeValue _value;

@override ZonesServerSideExcludeValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesServerSideExcludeValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesServerSideExcludeValue($_value)'; } 
 }
final class ZonesSettingValueZonesSha1SupportValue extends ZonesSettingValue {const ZonesSettingValueZonesSha1SupportValue(this._value);

final ZonesSha1SupportValue _value;

@override ZonesSha1SupportValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesSha1SupportValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesSha1SupportValue($_value)'; } 
 }
final class ZonesSettingValueZonesSortQueryStringForCacheValue extends ZonesSettingValue {const ZonesSettingValueZonesSortQueryStringForCacheValue(this._value);

final ZonesSortQueryStringForCacheValue _value;

@override ZonesSortQueryStringForCacheValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesSortQueryStringForCacheValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesSortQueryStringForCacheValue($_value)'; } 
 }
final class ZonesSettingValueZonesSslValue extends ZonesSettingValue {const ZonesSettingValueZonesSslValue(this._value);

final ZonesSslValue _value;

@override ZonesSslValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesSslValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesSslValue($_value)'; } 
 }
final class ZonesSettingValueZonesTls12OnlyValue extends ZonesSettingValue {const ZonesSettingValueZonesTls12OnlyValue(this._value);

final ZonesTls12OnlyValue _value;

@override ZonesTls12OnlyValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesTls12OnlyValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesTls12OnlyValue($_value)'; } 
 }
final class ZonesSettingValueZonesTls13Value extends ZonesSettingValue {const ZonesSettingValueZonesTls13Value(this._value);

final ZonesTls13Value _value;

@override ZonesTls13Value get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesTls13Value && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesTls13Value($_value)'; } 
 }
final class ZonesSettingValueZonesTlsClientAuthValue extends ZonesSettingValue {const ZonesSettingValueZonesTlsClientAuthValue(this._value);

final ZonesTlsClientAuthValue _value;

@override ZonesTlsClientAuthValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesTlsClientAuthValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesTlsClientAuthValue($_value)'; } 
 }
final class ZonesSettingValueZonesTrueClientIpHeaderValue extends ZonesSettingValue {const ZonesSettingValueZonesTrueClientIpHeaderValue(this._value);

final ZonesTrueClientIpHeaderValue _value;

@override ZonesTrueClientIpHeaderValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesTrueClientIpHeaderValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesTrueClientIpHeaderValue($_value)'; } 
 }
final class ZonesSettingValueZonesWafValue extends ZonesSettingValue {const ZonesSettingValueZonesWafValue(this._value);

final ZonesWafValue _value;

@override ZonesWafValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesWafValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesWafValue($_value)'; } 
 }
final class ZonesSettingValueZonesWebpValue extends ZonesSettingValue {const ZonesSettingValueZonesWebpValue(this._value);

final ZonesWebpValue _value;

@override ZonesWebpValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesWebpValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesWebpValue($_value)'; } 
 }
final class ZonesSettingValueZonesWebsocketsValue extends ZonesSettingValue {const ZonesSettingValueZonesWebsocketsValue(this._value);

final ZonesWebsocketsValue _value;

@override ZonesWebsocketsValue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValueZonesWebsocketsValue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.zonesWebsocketsValue($_value)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
final class ZonesSettingValue$Unknown extends ZonesSettingValue {const ZonesSettingValue$Unknown(this._value);

final dynamic _value;

@override dynamic get value { return _value ?? ''; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingValue$Unknown && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSettingValue.unknown($_value)'; } 
 }
