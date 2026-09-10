// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_set_config_autominify.dart';/// The Polish level to configure.
@immutable final class RulesetsSetConfigRuleRequestActionParametersPolish {const RulesetsSetConfigRuleRequestActionParametersPolish._(this.value);

factory RulesetsSetConfigRuleRequestActionParametersPolish.fromJson(String json) { return switch (json) {
  'off' => off,
  'lossless' => lossless,
  'lossy' => lossy,
  'webp' => webp,
  _ => RulesetsSetConfigRuleRequestActionParametersPolish._(json),
}; }

static const RulesetsSetConfigRuleRequestActionParametersPolish off = RulesetsSetConfigRuleRequestActionParametersPolish._('off');

static const RulesetsSetConfigRuleRequestActionParametersPolish lossless = RulesetsSetConfigRuleRequestActionParametersPolish._('lossless');

static const RulesetsSetConfigRuleRequestActionParametersPolish lossy = RulesetsSetConfigRuleRequestActionParametersPolish._('lossy');

static const RulesetsSetConfigRuleRequestActionParametersPolish webp = RulesetsSetConfigRuleRequestActionParametersPolish._('webp');

static const List<RulesetsSetConfigRuleRequestActionParametersPolish> values = [off, lossless, lossy, webp];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsSetConfigRuleRequestActionParametersPolish && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RulesetsSetConfigRuleRequestActionParametersPolish($value)'; } 
 }
/// The request body buffering mode.
@immutable final class RulesetsSetConfigRuleRequestActionParametersRequestBodyBuffering {const RulesetsSetConfigRuleRequestActionParametersRequestBodyBuffering._(this.value);

factory RulesetsSetConfigRuleRequestActionParametersRequestBodyBuffering.fromJson(String json) { return switch (json) {
  'none' => none,
  'standard' => standard,
  'full' => full,
  _ => RulesetsSetConfigRuleRequestActionParametersRequestBodyBuffering._(json),
}; }

static const RulesetsSetConfigRuleRequestActionParametersRequestBodyBuffering none = RulesetsSetConfigRuleRequestActionParametersRequestBodyBuffering._('none');

static const RulesetsSetConfigRuleRequestActionParametersRequestBodyBuffering standard = RulesetsSetConfigRuleRequestActionParametersRequestBodyBuffering._('standard');

static const RulesetsSetConfigRuleRequestActionParametersRequestBodyBuffering full = RulesetsSetConfigRuleRequestActionParametersRequestBodyBuffering._('full');

static const List<RulesetsSetConfigRuleRequestActionParametersRequestBodyBuffering> values = [none, standard, full];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsSetConfigRuleRequestActionParametersRequestBodyBuffering && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RulesetsSetConfigRuleRequestActionParametersRequestBodyBuffering($value)'; } 
 }
/// The response body buffering mode.
@immutable final class RulesetsSetConfigRuleRequestActionParametersResponseBodyBuffering {const RulesetsSetConfigRuleRequestActionParametersResponseBodyBuffering._(this.value);

factory RulesetsSetConfigRuleRequestActionParametersResponseBodyBuffering.fromJson(String json) { return switch (json) {
  'none' => none,
  'standard' => standard,
  _ => RulesetsSetConfigRuleRequestActionParametersResponseBodyBuffering._(json),
}; }

static const RulesetsSetConfigRuleRequestActionParametersResponseBodyBuffering none = RulesetsSetConfigRuleRequestActionParametersResponseBodyBuffering._('none');

static const RulesetsSetConfigRuleRequestActionParametersResponseBodyBuffering standard = RulesetsSetConfigRuleRequestActionParametersResponseBodyBuffering._('standard');

static const List<RulesetsSetConfigRuleRequestActionParametersResponseBodyBuffering> values = [none, standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsSetConfigRuleRequestActionParametersResponseBodyBuffering && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RulesetsSetConfigRuleRequestActionParametersResponseBodyBuffering($value)'; } 
 }
/// The Security Level to configure.
@immutable final class RulesetsSetConfigRuleRequestActionParametersSecurityLevel {const RulesetsSetConfigRuleRequestActionParametersSecurityLevel._(this.value);

factory RulesetsSetConfigRuleRequestActionParametersSecurityLevel.fromJson(String json) { return switch (json) {
  'off' => off,
  'essentially_off' => essentiallyOff,
  'low' => low,
  'medium' => medium,
  'high' => high,
  'under_attack' => underAttack,
  _ => RulesetsSetConfigRuleRequestActionParametersSecurityLevel._(json),
}; }

static const RulesetsSetConfigRuleRequestActionParametersSecurityLevel off = RulesetsSetConfigRuleRequestActionParametersSecurityLevel._('off');

static const RulesetsSetConfigRuleRequestActionParametersSecurityLevel essentiallyOff = RulesetsSetConfigRuleRequestActionParametersSecurityLevel._('essentially_off');

static const RulesetsSetConfigRuleRequestActionParametersSecurityLevel low = RulesetsSetConfigRuleRequestActionParametersSecurityLevel._('low');

static const RulesetsSetConfigRuleRequestActionParametersSecurityLevel medium = RulesetsSetConfigRuleRequestActionParametersSecurityLevel._('medium');

static const RulesetsSetConfigRuleRequestActionParametersSecurityLevel high = RulesetsSetConfigRuleRequestActionParametersSecurityLevel._('high');

static const RulesetsSetConfigRuleRequestActionParametersSecurityLevel underAttack = RulesetsSetConfigRuleRequestActionParametersSecurityLevel._('under_attack');

static const List<RulesetsSetConfigRuleRequestActionParametersSecurityLevel> values = [off, essentiallyOff, low, medium, high, underAttack];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsSetConfigRuleRequestActionParametersSecurityLevel && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RulesetsSetConfigRuleRequestActionParametersSecurityLevel($value)'; } 
 }
/// The SSL level to configure.
@immutable final class RulesetsSetConfigRuleRequestActionParametersSsl {const RulesetsSetConfigRuleRequestActionParametersSsl._(this.value);

factory RulesetsSetConfigRuleRequestActionParametersSsl.fromJson(String json) { return switch (json) {
  'off' => off,
  'flexible' => flexible,
  'full' => full,
  'strict' => strict,
  'origin_pull' => originPull,
  _ => RulesetsSetConfigRuleRequestActionParametersSsl._(json),
}; }

static const RulesetsSetConfigRuleRequestActionParametersSsl off = RulesetsSetConfigRuleRequestActionParametersSsl._('off');

static const RulesetsSetConfigRuleRequestActionParametersSsl flexible = RulesetsSetConfigRuleRequestActionParametersSsl._('flexible');

static const RulesetsSetConfigRuleRequestActionParametersSsl full = RulesetsSetConfigRuleRequestActionParametersSsl._('full');

static const RulesetsSetConfigRuleRequestActionParametersSsl strict = RulesetsSetConfigRuleRequestActionParametersSsl._('strict');

static const RulesetsSetConfigRuleRequestActionParametersSsl originPull = RulesetsSetConfigRuleRequestActionParametersSsl._('origin_pull');

static const List<RulesetsSetConfigRuleRequestActionParametersSsl> values = [off, flexible, full, strict, originPull];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsSetConfigRuleRequestActionParametersSsl && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RulesetsSetConfigRuleRequestActionParametersSsl($value)'; } 
 }
@immutable final class RulesetsSetConfigRuleRequestActionParameters {const RulesetsSetConfigRuleRequestActionParameters({this.automaticHttpsRewrites, this.autominify, this.bic, this.contentConverter, this.disableApps, this.disablePayPerCrawl, this.disableRum, this.disableZaraz, this.emailObfuscation, this.fonts, this.hotlinkProtection, this.mirage, this.opportunisticEncryption, this.polish, this.requestBodyBuffering, this.responseBodyBuffering, this.rocketLoader, this.securityLevel, this.serverSideExcludes, this.ssl, this.sxg, });

factory RulesetsSetConfigRuleRequestActionParameters.fromJson(Map<String, dynamic> json) { return RulesetsSetConfigRuleRequestActionParameters(
  automaticHttpsRewrites: json['automatic_https_rewrites'] as bool?,
  autominify: json['autominify'] != null ? RulesetsSetConfigAutominify.fromJson(json['autominify'] as Map<String, dynamic>) : null,
  bic: json['bic'] as bool?,
  contentConverter: json['content_converter'] as bool?,
  disableApps: json['disable_apps'] as bool?,
  disablePayPerCrawl: json['disable_pay_per_crawl'] as bool?,
  disableRum: json['disable_rum'] as bool?,
  disableZaraz: json['disable_zaraz'] as bool?,
  emailObfuscation: json['email_obfuscation'] as bool?,
  fonts: json['fonts'] as bool?,
  hotlinkProtection: json['hotlink_protection'] as bool?,
  mirage: json['mirage'] as bool?,
  opportunisticEncryption: json['opportunistic_encryption'] as bool?,
  polish: json['polish'] != null ? RulesetsSetConfigRuleRequestActionParametersPolish.fromJson(json['polish'] as String) : null,
  requestBodyBuffering: json['request_body_buffering'] != null ? RulesetsSetConfigRuleRequestActionParametersRequestBodyBuffering.fromJson(json['request_body_buffering'] as String) : null,
  responseBodyBuffering: json['response_body_buffering'] != null ? RulesetsSetConfigRuleRequestActionParametersResponseBodyBuffering.fromJson(json['response_body_buffering'] as String) : null,
  rocketLoader: json['rocket_loader'] as bool?,
  securityLevel: json['security_level'] != null ? RulesetsSetConfigRuleRequestActionParametersSecurityLevel.fromJson(json['security_level'] as String) : null,
  serverSideExcludes: json['server_side_excludes'] as bool?,
  ssl: json['ssl'] != null ? RulesetsSetConfigRuleRequestActionParametersSsl.fromJson(json['ssl'] as String) : null,
  sxg: json['sxg'] as bool?,
); }

/// Whether to enable Automatic HTTPS Rewrites.
final bool? automaticHttpsRewrites;

final RulesetsSetConfigAutominify? autominify;

/// Whether to enable Browser Integrity Check (BIC).
final bool? bic;

/// Whether to enable content conversion (e.g., HTML to Markdown).
final bool? contentConverter;

/// Whether to disable Cloudflare Apps.
final bool? disableApps;

/// Whether to disable Pay Per Crawl.
final bool? disablePayPerCrawl;

/// Whether to disable Real User Monitoring (RUM).
final bool? disableRum;

/// Whether to disable Zaraz.
final bool? disableZaraz;

/// Whether to enable Email Obfuscation.
final bool? emailObfuscation;

/// Whether to enable Cloudflare Fonts.
final bool? fonts;

/// Whether to enable Hotlink Protection.
final bool? hotlinkProtection;

/// Whether to enable Mirage.
final bool? mirage;

/// Whether to enable Opportunistic Encryption.
final bool? opportunisticEncryption;

/// The Polish level to configure.
final RulesetsSetConfigRuleRequestActionParametersPolish? polish;

/// The request body buffering mode.
final RulesetsSetConfigRuleRequestActionParametersRequestBodyBuffering? requestBodyBuffering;

/// The response body buffering mode.
final RulesetsSetConfigRuleRequestActionParametersResponseBodyBuffering? responseBodyBuffering;

/// Whether to enable Rocket Loader.
final bool? rocketLoader;

/// The Security Level to configure.
final RulesetsSetConfigRuleRequestActionParametersSecurityLevel? securityLevel;

/// Whether to enable Server-Side Excludes.
final bool? serverSideExcludes;

/// The SSL level to configure.
final RulesetsSetConfigRuleRequestActionParametersSsl? ssl;

/// Whether to enable Signed Exchanges (SXG).
final bool? sxg;

Map<String, dynamic> toJson() { return {
  'automatic_https_rewrites': ?automaticHttpsRewrites,
  if (autominify != null) 'autominify': autominify?.toJson(),
  'bic': ?bic,
  'content_converter': ?contentConverter,
  'disable_apps': ?disableApps,
  'disable_pay_per_crawl': ?disablePayPerCrawl,
  'disable_rum': ?disableRum,
  'disable_zaraz': ?disableZaraz,
  'email_obfuscation': ?emailObfuscation,
  'fonts': ?fonts,
  'hotlink_protection': ?hotlinkProtection,
  'mirage': ?mirage,
  'opportunistic_encryption': ?opportunisticEncryption,
  if (polish != null) 'polish': polish?.toJson(),
  if (requestBodyBuffering != null) 'request_body_buffering': requestBodyBuffering?.toJson(),
  if (responseBodyBuffering != null) 'response_body_buffering': responseBodyBuffering?.toJson(),
  'rocket_loader': ?rocketLoader,
  if (securityLevel != null) 'security_level': securityLevel?.toJson(),
  'server_side_excludes': ?serverSideExcludes,
  if (ssl != null) 'ssl': ssl?.toJson(),
  'sxg': ?sxg,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'automatic_https_rewrites', 'autominify', 'bic', 'content_converter', 'disable_apps', 'disable_pay_per_crawl', 'disable_rum', 'disable_zaraz', 'email_obfuscation', 'fonts', 'hotlink_protection', 'mirage', 'opportunistic_encryption', 'polish', 'request_body_buffering', 'response_body_buffering', 'rocket_loader', 'security_level', 'server_side_excludes', 'ssl', 'sxg'}.contains(key)); } 
RulesetsSetConfigRuleRequestActionParameters copyWith({bool? Function()? automaticHttpsRewrites, RulesetsSetConfigAutominify? Function()? autominify, bool? Function()? bic, bool? Function()? contentConverter, bool? Function()? disableApps, bool? Function()? disablePayPerCrawl, bool? Function()? disableRum, bool? Function()? disableZaraz, bool? Function()? emailObfuscation, bool? Function()? fonts, bool? Function()? hotlinkProtection, bool? Function()? mirage, bool? Function()? opportunisticEncryption, RulesetsSetConfigRuleRequestActionParametersPolish? Function()? polish, RulesetsSetConfigRuleRequestActionParametersRequestBodyBuffering? Function()? requestBodyBuffering, RulesetsSetConfigRuleRequestActionParametersResponseBodyBuffering? Function()? responseBodyBuffering, bool? Function()? rocketLoader, RulesetsSetConfigRuleRequestActionParametersSecurityLevel? Function()? securityLevel, bool? Function()? serverSideExcludes, RulesetsSetConfigRuleRequestActionParametersSsl? Function()? ssl, bool? Function()? sxg, }) { return RulesetsSetConfigRuleRequestActionParameters(
  automaticHttpsRewrites: automaticHttpsRewrites != null ? automaticHttpsRewrites() : this.automaticHttpsRewrites,
  autominify: autominify != null ? autominify() : this.autominify,
  bic: bic != null ? bic() : this.bic,
  contentConverter: contentConverter != null ? contentConverter() : this.contentConverter,
  disableApps: disableApps != null ? disableApps() : this.disableApps,
  disablePayPerCrawl: disablePayPerCrawl != null ? disablePayPerCrawl() : this.disablePayPerCrawl,
  disableRum: disableRum != null ? disableRum() : this.disableRum,
  disableZaraz: disableZaraz != null ? disableZaraz() : this.disableZaraz,
  emailObfuscation: emailObfuscation != null ? emailObfuscation() : this.emailObfuscation,
  fonts: fonts != null ? fonts() : this.fonts,
  hotlinkProtection: hotlinkProtection != null ? hotlinkProtection() : this.hotlinkProtection,
  mirage: mirage != null ? mirage() : this.mirage,
  opportunisticEncryption: opportunisticEncryption != null ? opportunisticEncryption() : this.opportunisticEncryption,
  polish: polish != null ? polish() : this.polish,
  requestBodyBuffering: requestBodyBuffering != null ? requestBodyBuffering() : this.requestBodyBuffering,
  responseBodyBuffering: responseBodyBuffering != null ? responseBodyBuffering() : this.responseBodyBuffering,
  rocketLoader: rocketLoader != null ? rocketLoader() : this.rocketLoader,
  securityLevel: securityLevel != null ? securityLevel() : this.securityLevel,
  serverSideExcludes: serverSideExcludes != null ? serverSideExcludes() : this.serverSideExcludes,
  ssl: ssl != null ? ssl() : this.ssl,
  sxg: sxg != null ? sxg() : this.sxg,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsSetConfigRuleRequestActionParameters &&
          automaticHttpsRewrites == other.automaticHttpsRewrites &&
          autominify == other.autominify &&
          bic == other.bic &&
          contentConverter == other.contentConverter &&
          disableApps == other.disableApps &&
          disablePayPerCrawl == other.disablePayPerCrawl &&
          disableRum == other.disableRum &&
          disableZaraz == other.disableZaraz &&
          emailObfuscation == other.emailObfuscation &&
          fonts == other.fonts &&
          hotlinkProtection == other.hotlinkProtection &&
          mirage == other.mirage &&
          opportunisticEncryption == other.opportunisticEncryption &&
          polish == other.polish &&
          requestBodyBuffering == other.requestBodyBuffering &&
          responseBodyBuffering == other.responseBodyBuffering &&
          rocketLoader == other.rocketLoader &&
          securityLevel == other.securityLevel &&
          serverSideExcludes == other.serverSideExcludes &&
          ssl == other.ssl &&
          sxg == other.sxg; } 
@override int get hashCode { return Object.hashAll([automaticHttpsRewrites, autominify, bic, contentConverter, disableApps, disablePayPerCrawl, disableRum, disableZaraz, emailObfuscation, fonts, hotlinkProtection, mirage, opportunisticEncryption, polish, requestBodyBuffering, responseBodyBuffering, rocketLoader, securityLevel, serverSideExcludes, ssl, sxg]); } 
@override String toString() { return 'RulesetsSetConfigRuleRequestActionParameters(automaticHttpsRewrites: $automaticHttpsRewrites, autominify: $autominify, bic: $bic, contentConverter: $contentConverter, disableApps: $disableApps, disablePayPerCrawl: $disablePayPerCrawl, disableRum: $disableRum, disableZaraz: $disableZaraz, emailObfuscation: $emailObfuscation, fonts: $fonts, hotlinkProtection: $hotlinkProtection, mirage: $mirage, opportunisticEncryption: $opportunisticEncryption, polish: $polish, requestBodyBuffering: $requestBodyBuffering, responseBodyBuffering: $responseBodyBuffering, rocketLoader: $rocketLoader, securityLevel: $securityLevel, serverSideExcludes: $serverSideExcludes, ssl: $ssl, sxg: $sxg)'; } 
 }
