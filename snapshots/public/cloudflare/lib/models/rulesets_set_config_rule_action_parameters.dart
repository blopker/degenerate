// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_set_config_autominify.dart';/// The Polish level to configure.
@immutable final class RulesetsSetConfigRuleActionParametersPolish {const RulesetsSetConfigRuleActionParametersPolish._(this.value);

factory RulesetsSetConfigRuleActionParametersPolish.fromJson(String json) { return switch (json) {
  'off' => off,
  'lossless' => lossless,
  'lossy' => lossy,
  'webp' => webp,
  _ => RulesetsSetConfigRuleActionParametersPolish._(json),
}; }

static const RulesetsSetConfigRuleActionParametersPolish off = RulesetsSetConfigRuleActionParametersPolish._('off');

static const RulesetsSetConfigRuleActionParametersPolish lossless = RulesetsSetConfigRuleActionParametersPolish._('lossless');

static const RulesetsSetConfigRuleActionParametersPolish lossy = RulesetsSetConfigRuleActionParametersPolish._('lossy');

static const RulesetsSetConfigRuleActionParametersPolish webp = RulesetsSetConfigRuleActionParametersPolish._('webp');

static const List<RulesetsSetConfigRuleActionParametersPolish> values = [off, lossless, lossy, webp];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsSetConfigRuleActionParametersPolish && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RulesetsSetConfigRuleActionParametersPolish($value)'; } 
 }
/// The request body buffering mode.
@immutable final class RulesetsSetConfigRuleActionParametersRequestBodyBuffering {const RulesetsSetConfigRuleActionParametersRequestBodyBuffering._(this.value);

factory RulesetsSetConfigRuleActionParametersRequestBodyBuffering.fromJson(String json) { return switch (json) {
  'none' => none,
  'standard' => standard,
  'full' => full,
  _ => RulesetsSetConfigRuleActionParametersRequestBodyBuffering._(json),
}; }

static const RulesetsSetConfigRuleActionParametersRequestBodyBuffering none = RulesetsSetConfigRuleActionParametersRequestBodyBuffering._('none');

static const RulesetsSetConfigRuleActionParametersRequestBodyBuffering standard = RulesetsSetConfigRuleActionParametersRequestBodyBuffering._('standard');

static const RulesetsSetConfigRuleActionParametersRequestBodyBuffering full = RulesetsSetConfigRuleActionParametersRequestBodyBuffering._('full');

static const List<RulesetsSetConfigRuleActionParametersRequestBodyBuffering> values = [none, standard, full];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsSetConfigRuleActionParametersRequestBodyBuffering && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RulesetsSetConfigRuleActionParametersRequestBodyBuffering($value)'; } 
 }
/// The response body buffering mode.
@immutable final class RulesetsSetConfigRuleActionParametersResponseBodyBuffering {const RulesetsSetConfigRuleActionParametersResponseBodyBuffering._(this.value);

factory RulesetsSetConfigRuleActionParametersResponseBodyBuffering.fromJson(String json) { return switch (json) {
  'none' => none,
  'standard' => standard,
  _ => RulesetsSetConfigRuleActionParametersResponseBodyBuffering._(json),
}; }

static const RulesetsSetConfigRuleActionParametersResponseBodyBuffering none = RulesetsSetConfigRuleActionParametersResponseBodyBuffering._('none');

static const RulesetsSetConfigRuleActionParametersResponseBodyBuffering standard = RulesetsSetConfigRuleActionParametersResponseBodyBuffering._('standard');

static const List<RulesetsSetConfigRuleActionParametersResponseBodyBuffering> values = [none, standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsSetConfigRuleActionParametersResponseBodyBuffering && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RulesetsSetConfigRuleActionParametersResponseBodyBuffering($value)'; } 
 }
/// The Security Level to configure.
@immutable final class RulesetsSetConfigRuleActionParametersSecurityLevel {const RulesetsSetConfigRuleActionParametersSecurityLevel._(this.value);

factory RulesetsSetConfigRuleActionParametersSecurityLevel.fromJson(String json) { return switch (json) {
  'off' => off,
  'essentially_off' => essentiallyOff,
  'low' => low,
  'medium' => medium,
  'high' => high,
  'under_attack' => underAttack,
  _ => RulesetsSetConfigRuleActionParametersSecurityLevel._(json),
}; }

static const RulesetsSetConfigRuleActionParametersSecurityLevel off = RulesetsSetConfigRuleActionParametersSecurityLevel._('off');

static const RulesetsSetConfigRuleActionParametersSecurityLevel essentiallyOff = RulesetsSetConfigRuleActionParametersSecurityLevel._('essentially_off');

static const RulesetsSetConfigRuleActionParametersSecurityLevel low = RulesetsSetConfigRuleActionParametersSecurityLevel._('low');

static const RulesetsSetConfigRuleActionParametersSecurityLevel medium = RulesetsSetConfigRuleActionParametersSecurityLevel._('medium');

static const RulesetsSetConfigRuleActionParametersSecurityLevel high = RulesetsSetConfigRuleActionParametersSecurityLevel._('high');

static const RulesetsSetConfigRuleActionParametersSecurityLevel underAttack = RulesetsSetConfigRuleActionParametersSecurityLevel._('under_attack');

static const List<RulesetsSetConfigRuleActionParametersSecurityLevel> values = [off, essentiallyOff, low, medium, high, underAttack];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsSetConfigRuleActionParametersSecurityLevel && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RulesetsSetConfigRuleActionParametersSecurityLevel($value)'; } 
 }
/// The SSL level to configure.
@immutable final class RulesetsSetConfigRuleActionParametersSsl {const RulesetsSetConfigRuleActionParametersSsl._(this.value);

factory RulesetsSetConfigRuleActionParametersSsl.fromJson(String json) { return switch (json) {
  'off' => off,
  'flexible' => flexible,
  'full' => full,
  'strict' => strict,
  'origin_pull' => originPull,
  _ => RulesetsSetConfigRuleActionParametersSsl._(json),
}; }

static const RulesetsSetConfigRuleActionParametersSsl off = RulesetsSetConfigRuleActionParametersSsl._('off');

static const RulesetsSetConfigRuleActionParametersSsl flexible = RulesetsSetConfigRuleActionParametersSsl._('flexible');

static const RulesetsSetConfigRuleActionParametersSsl full = RulesetsSetConfigRuleActionParametersSsl._('full');

static const RulesetsSetConfigRuleActionParametersSsl strict = RulesetsSetConfigRuleActionParametersSsl._('strict');

static const RulesetsSetConfigRuleActionParametersSsl originPull = RulesetsSetConfigRuleActionParametersSsl._('origin_pull');

static const List<RulesetsSetConfigRuleActionParametersSsl> values = [off, flexible, full, strict, originPull];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsSetConfigRuleActionParametersSsl && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RulesetsSetConfigRuleActionParametersSsl($value)'; } 
 }
@immutable final class RulesetsSetConfigRuleActionParameters {const RulesetsSetConfigRuleActionParameters({this.automaticHttpsRewrites, this.autominify, this.bic, this.contentConverter, this.disableApps, this.disablePayPerCrawl, this.disableRum, this.disableZaraz, this.emailObfuscation, this.fonts, this.hotlinkProtection, this.mirage, this.opportunisticEncryption, this.polish, this.requestBodyBuffering, this.responseBodyBuffering, this.rocketLoader, this.securityLevel, this.serverSideExcludes, this.ssl, this.sxg, });

factory RulesetsSetConfigRuleActionParameters.fromJson(Map<String, dynamic> json) { return RulesetsSetConfigRuleActionParameters(
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
  polish: json['polish'] != null ? RulesetsSetConfigRuleActionParametersPolish.fromJson(json['polish'] as String) : null,
  requestBodyBuffering: json['request_body_buffering'] != null ? RulesetsSetConfigRuleActionParametersRequestBodyBuffering.fromJson(json['request_body_buffering'] as String) : null,
  responseBodyBuffering: json['response_body_buffering'] != null ? RulesetsSetConfigRuleActionParametersResponseBodyBuffering.fromJson(json['response_body_buffering'] as String) : null,
  rocketLoader: json['rocket_loader'] as bool?,
  securityLevel: json['security_level'] != null ? RulesetsSetConfigRuleActionParametersSecurityLevel.fromJson(json['security_level'] as String) : null,
  serverSideExcludes: json['server_side_excludes'] as bool?,
  ssl: json['ssl'] != null ? RulesetsSetConfigRuleActionParametersSsl.fromJson(json['ssl'] as String) : null,
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
final RulesetsSetConfigRuleActionParametersPolish? polish;

/// The request body buffering mode.
final RulesetsSetConfigRuleActionParametersRequestBodyBuffering? requestBodyBuffering;

/// The response body buffering mode.
final RulesetsSetConfigRuleActionParametersResponseBodyBuffering? responseBodyBuffering;

/// Whether to enable Rocket Loader.
final bool? rocketLoader;

/// The Security Level to configure.
final RulesetsSetConfigRuleActionParametersSecurityLevel? securityLevel;

/// Whether to enable Server-Side Excludes.
final bool? serverSideExcludes;

/// The SSL level to configure.
final RulesetsSetConfigRuleActionParametersSsl? ssl;

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
RulesetsSetConfigRuleActionParameters copyWith({bool Function()? automaticHttpsRewrites, RulesetsSetConfigAutominify Function()? autominify, bool Function()? bic, bool Function()? contentConverter, bool Function()? disableApps, bool Function()? disablePayPerCrawl, bool Function()? disableRum, bool Function()? disableZaraz, bool Function()? emailObfuscation, bool Function()? fonts, bool Function()? hotlinkProtection, bool Function()? mirage, bool Function()? opportunisticEncryption, RulesetsSetConfigRuleActionParametersPolish Function()? polish, RulesetsSetConfigRuleActionParametersRequestBodyBuffering Function()? requestBodyBuffering, RulesetsSetConfigRuleActionParametersResponseBodyBuffering Function()? responseBodyBuffering, bool Function()? rocketLoader, RulesetsSetConfigRuleActionParametersSecurityLevel Function()? securityLevel, bool Function()? serverSideExcludes, RulesetsSetConfigRuleActionParametersSsl Function()? ssl, bool Function()? sxg, }) { return RulesetsSetConfigRuleActionParameters(
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
      other is RulesetsSetConfigRuleActionParameters &&
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
@override String toString() { return 'RulesetsSetConfigRuleActionParameters(automaticHttpsRewrites: $automaticHttpsRewrites, autominify: $autominify, bic: $bic, contentConverter: $contentConverter, disableApps: $disableApps, disablePayPerCrawl: $disablePayPerCrawl, disableRum: $disableRum, disableZaraz: $disableZaraz, emailObfuscation: $emailObfuscation, fonts: $fonts, hotlinkProtection: $hotlinkProtection, mirage: $mirage, opportunisticEncryption: $opportunisticEncryption, polish: $polish, requestBodyBuffering: $requestBodyBuffering, responseBodyBuffering: $responseBodyBuffering, rocketLoader: $rocketLoader, securityLevel: $securityLevel, serverSideExcludes: $serverSideExcludes, ssl: $ssl, sxg: $sxg)'; } 
 }
