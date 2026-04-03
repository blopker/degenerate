// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zaraz_zaraz_config_base_settings_context_enricher.dart';/// General Zaraz settings.
@immutable final class ZarazZarazConfigBaseSettings {const ZarazZarazConfigBaseSettings({required this.autoInjectScript, this.contextEnricher, this.cookieDomain, this.ecommerce, this.eventsApiPath, this.hideExternalReferer, this.hideIpAddress, this.hideQueryParams, this.hideUserAgent, this.initPath, this.injectIframes, this.mcRootPath, this.scriptPath, this.trackPath, });

factory ZarazZarazConfigBaseSettings.fromJson(Map<String, dynamic> json) { return ZarazZarazConfigBaseSettings(
  autoInjectScript: json['autoInjectScript'] as bool,
  contextEnricher: json['contextEnricher'] != null ? ZarazZarazConfigBaseSettingsContextEnricher.fromJson(json['contextEnricher'] as Map<String, dynamic>) : null,
  cookieDomain: json['cookieDomain'] as String?,
  ecommerce: json['ecommerce'] as bool?,
  eventsApiPath: json['eventsApiPath'] as String?,
  hideExternalReferer: json['hideExternalReferer'] as bool?,
  hideIpAddress: json['hideIPAddress'] as bool?,
  hideQueryParams: json['hideQueryParams'] as bool?,
  hideUserAgent: json['hideUserAgent'] as bool?,
  initPath: json['initPath'] as String?,
  injectIframes: json['injectIframes'] as bool?,
  mcRootPath: json['mcRootPath'] as String?,
  scriptPath: json['scriptPath'] as String?,
  trackPath: json['trackPath'] as String?,
); }

/// Automatic injection of Zaraz scripts enabled.
final bool autoInjectScript;

/// Details of the worker that receives and edits Zaraz Context object.
final ZarazZarazConfigBaseSettingsContextEnricher? contextEnricher;

/// The domain Zaraz will use for writing and reading its cookies.
final String? cookieDomain;

/// Ecommerce API enabled.
final bool? ecommerce;

/// Custom endpoint for server-side track events.
final String? eventsApiPath;

/// Hiding external referrer URL enabled.
final bool? hideExternalReferer;

/// Trimming IP address enabled.
final bool? hideIpAddress;

/// Removing URL query params enabled.
final bool? hideQueryParams;

/// Removing sensitive data from User Aagent string enabled.
final bool? hideUserAgent;

/// Custom endpoint for Zaraz init script.
final String? initPath;

/// Injection of Zaraz scripts into iframes enabled.
final bool? injectIframes;

/// Custom path for Managed Components server functionalities.
final String? mcRootPath;

/// Custom endpoint for Zaraz main script.
final String? scriptPath;

/// Custom endpoint for Zaraz tracking requests.
final String? trackPath;

Map<String, dynamic> toJson() { return {
  'autoInjectScript': autoInjectScript,
  if (contextEnricher != null) 'contextEnricher': contextEnricher?.toJson(),
  'cookieDomain': ?cookieDomain,
  'ecommerce': ?ecommerce,
  'eventsApiPath': ?eventsApiPath,
  'hideExternalReferer': ?hideExternalReferer,
  'hideIPAddress': ?hideIpAddress,
  'hideQueryParams': ?hideQueryParams,
  'hideUserAgent': ?hideUserAgent,
  'initPath': ?initPath,
  'injectIframes': ?injectIframes,
  'mcRootPath': ?mcRootPath,
  'scriptPath': ?scriptPath,
  'trackPath': ?trackPath,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('autoInjectScript') && json['autoInjectScript'] is bool; } 
ZarazZarazConfigBaseSettings copyWith({bool? autoInjectScript, ZarazZarazConfigBaseSettingsContextEnricher Function()? contextEnricher, String Function()? cookieDomain, bool Function()? ecommerce, String Function()? eventsApiPath, bool Function()? hideExternalReferer, bool Function()? hideIpAddress, bool Function()? hideQueryParams, bool Function()? hideUserAgent, String Function()? initPath, bool Function()? injectIframes, String Function()? mcRootPath, String Function()? scriptPath, String Function()? trackPath, }) { return ZarazZarazConfigBaseSettings(
  autoInjectScript: autoInjectScript ?? this.autoInjectScript,
  contextEnricher: contextEnricher != null ? contextEnricher() : this.contextEnricher,
  cookieDomain: cookieDomain != null ? cookieDomain() : this.cookieDomain,
  ecommerce: ecommerce != null ? ecommerce() : this.ecommerce,
  eventsApiPath: eventsApiPath != null ? eventsApiPath() : this.eventsApiPath,
  hideExternalReferer: hideExternalReferer != null ? hideExternalReferer() : this.hideExternalReferer,
  hideIpAddress: hideIpAddress != null ? hideIpAddress() : this.hideIpAddress,
  hideQueryParams: hideQueryParams != null ? hideQueryParams() : this.hideQueryParams,
  hideUserAgent: hideUserAgent != null ? hideUserAgent() : this.hideUserAgent,
  initPath: initPath != null ? initPath() : this.initPath,
  injectIframes: injectIframes != null ? injectIframes() : this.injectIframes,
  mcRootPath: mcRootPath != null ? mcRootPath() : this.mcRootPath,
  scriptPath: scriptPath != null ? scriptPath() : this.scriptPath,
  trackPath: trackPath != null ? trackPath() : this.trackPath,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZarazZarazConfigBaseSettings &&
          autoInjectScript == other.autoInjectScript &&
          contextEnricher == other.contextEnricher &&
          cookieDomain == other.cookieDomain &&
          ecommerce == other.ecommerce &&
          eventsApiPath == other.eventsApiPath &&
          hideExternalReferer == other.hideExternalReferer &&
          hideIpAddress == other.hideIpAddress &&
          hideQueryParams == other.hideQueryParams &&
          hideUserAgent == other.hideUserAgent &&
          initPath == other.initPath &&
          injectIframes == other.injectIframes &&
          mcRootPath == other.mcRootPath &&
          scriptPath == other.scriptPath &&
          trackPath == other.trackPath; } 
@override int get hashCode { return Object.hash(autoInjectScript, contextEnricher, cookieDomain, ecommerce, eventsApiPath, hideExternalReferer, hideIpAddress, hideQueryParams, hideUserAgent, initPath, injectIframes, mcRootPath, scriptPath, trackPath); } 
@override String toString() { return 'ZarazZarazConfigBaseSettings(autoInjectScript: $autoInjectScript, contextEnricher: $contextEnricher, cookieDomain: $cookieDomain, ecommerce: $ecommerce, eventsApiPath: $eventsApiPath, hideExternalReferer: $hideExternalReferer, hideIpAddress: $hideIpAddress, hideQueryParams: $hideQueryParams, hideUserAgent: $hideUserAgent, initPath: $initPath, injectIframes: $injectIframes, mcRootPath: $mcRootPath, scriptPath: $scriptPath, trackPath: $trackPath)'; } 
 }
