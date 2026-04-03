// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class BrapiPostScreenshotRequestVariant1CookiesPriority {const BrapiPostScreenshotRequestVariant1CookiesPriority._(this.value);

factory BrapiPostScreenshotRequestVariant1CookiesPriority.fromJson(String json) { return switch (json) {
  'Low' => low,
  'Medium' => medium,
  'High' => high,
  _ => BrapiPostScreenshotRequestVariant1CookiesPriority._(json),
}; }

static const BrapiPostScreenshotRequestVariant1CookiesPriority low = BrapiPostScreenshotRequestVariant1CookiesPriority._('Low');

static const BrapiPostScreenshotRequestVariant1CookiesPriority medium = BrapiPostScreenshotRequestVariant1CookiesPriority._('Medium');

static const BrapiPostScreenshotRequestVariant1CookiesPriority high = BrapiPostScreenshotRequestVariant1CookiesPriority._('High');

static const List<BrapiPostScreenshotRequestVariant1CookiesPriority> values = [low, medium, high];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostScreenshotRequestVariant1CookiesPriority && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BrapiPostScreenshotRequestVariant1CookiesPriority($value)'; } 
 }
@immutable final class BrapiPostScreenshotRequestVariant1CookiesSameSite {const BrapiPostScreenshotRequestVariant1CookiesSameSite._(this.value);

factory BrapiPostScreenshotRequestVariant1CookiesSameSite.fromJson(String json) { return switch (json) {
  'Strict' => strict,
  'Lax' => lax,
  'None' => none,
  _ => BrapiPostScreenshotRequestVariant1CookiesSameSite._(json),
}; }

static const BrapiPostScreenshotRequestVariant1CookiesSameSite strict = BrapiPostScreenshotRequestVariant1CookiesSameSite._('Strict');

static const BrapiPostScreenshotRequestVariant1CookiesSameSite lax = BrapiPostScreenshotRequestVariant1CookiesSameSite._('Lax');

static const BrapiPostScreenshotRequestVariant1CookiesSameSite none = BrapiPostScreenshotRequestVariant1CookiesSameSite._('None');

static const List<BrapiPostScreenshotRequestVariant1CookiesSameSite> values = [strict, lax, none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostScreenshotRequestVariant1CookiesSameSite && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BrapiPostScreenshotRequestVariant1CookiesSameSite($value)'; } 
 }
@immutable final class BrapiPostScreenshotRequestVariant1CookiesSourceScheme {const BrapiPostScreenshotRequestVariant1CookiesSourceScheme._(this.value);

factory BrapiPostScreenshotRequestVariant1CookiesSourceScheme.fromJson(String json) { return switch (json) {
  'Unset' => unset,
  'NonSecure' => nonSecure,
  'Secure' => secure,
  _ => BrapiPostScreenshotRequestVariant1CookiesSourceScheme._(json),
}; }

static const BrapiPostScreenshotRequestVariant1CookiesSourceScheme unset = BrapiPostScreenshotRequestVariant1CookiesSourceScheme._('Unset');

static const BrapiPostScreenshotRequestVariant1CookiesSourceScheme nonSecure = BrapiPostScreenshotRequestVariant1CookiesSourceScheme._('NonSecure');

static const BrapiPostScreenshotRequestVariant1CookiesSourceScheme secure = BrapiPostScreenshotRequestVariant1CookiesSourceScheme._('Secure');

static const List<BrapiPostScreenshotRequestVariant1CookiesSourceScheme> values = [unset, nonSecure, secure];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostScreenshotRequestVariant1CookiesSourceScheme && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BrapiPostScreenshotRequestVariant1CookiesSourceScheme($value)'; } 
 }
@immutable final class BrapiPostScreenshotRequestVariant1Cookies {const BrapiPostScreenshotRequestVariant1Cookies({required this.name, required this.value, this.domain, this.expires, this.httpOnly, this.partitionKey, this.path, this.priority, this.sameParty, this.sameSite, this.secure, this.sourcePort, this.sourceScheme, this.url, });

factory BrapiPostScreenshotRequestVariant1Cookies.fromJson(Map<String, dynamic> json) { return BrapiPostScreenshotRequestVariant1Cookies(
  domain: json['domain'] as String?,
  expires: json['expires'] != null ? (json['expires'] as num).toDouble() : null,
  httpOnly: json['httpOnly'] as bool?,
  name: json['name'] as String,
  partitionKey: json['partitionKey'] as String?,
  path: json['path'] as String?,
  priority: json['priority'] != null ? BrapiPostScreenshotRequestVariant1CookiesPriority.fromJson(json['priority'] as String) : null,
  sameParty: json['sameParty'] as bool?,
  sameSite: json['sameSite'] != null ? BrapiPostScreenshotRequestVariant1CookiesSameSite.fromJson(json['sameSite'] as String) : null,
  secure: json['secure'] as bool?,
  sourcePort: json['sourcePort'] != null ? (json['sourcePort'] as num).toDouble() : null,
  sourceScheme: json['sourceScheme'] != null ? BrapiPostScreenshotRequestVariant1CookiesSourceScheme.fromJson(json['sourceScheme'] as String) : null,
  url: json['url'] as String?,
  value: json['value'] as String,
); }

final String? domain;

final double? expires;

final bool? httpOnly;

final String name;

final String? partitionKey;

final String? path;

final BrapiPostScreenshotRequestVariant1CookiesPriority? priority;

final bool? sameParty;

final BrapiPostScreenshotRequestVariant1CookiesSameSite? sameSite;

final bool? secure;

final double? sourcePort;

final BrapiPostScreenshotRequestVariant1CookiesSourceScheme? sourceScheme;

final String? url;

final String value;

Map<String, dynamic> toJson() { return {
  'domain': ?domain,
  'expires': ?expires,
  'httpOnly': ?httpOnly,
  'name': name,
  'partitionKey': ?partitionKey,
  'path': ?path,
  if (priority != null) 'priority': priority?.toJson(),
  'sameParty': ?sameParty,
  if (sameSite != null) 'sameSite': sameSite?.toJson(),
  'secure': ?secure,
  'sourcePort': ?sourcePort,
  if (sourceScheme != null) 'sourceScheme': sourceScheme?.toJson(),
  'url': ?url,
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('value') && json['value'] is String; } 
BrapiPostScreenshotRequestVariant1Cookies copyWith({String Function()? domain, double Function()? expires, bool Function()? httpOnly, String? name, String Function()? partitionKey, String Function()? path, BrapiPostScreenshotRequestVariant1CookiesPriority Function()? priority, bool Function()? sameParty, BrapiPostScreenshotRequestVariant1CookiesSameSite Function()? sameSite, bool Function()? secure, double Function()? sourcePort, BrapiPostScreenshotRequestVariant1CookiesSourceScheme Function()? sourceScheme, String Function()? url, String? value, }) { return BrapiPostScreenshotRequestVariant1Cookies(
  domain: domain != null ? domain() : this.domain,
  expires: expires != null ? expires() : this.expires,
  httpOnly: httpOnly != null ? httpOnly() : this.httpOnly,
  name: name ?? this.name,
  partitionKey: partitionKey != null ? partitionKey() : this.partitionKey,
  path: path != null ? path() : this.path,
  priority: priority != null ? priority() : this.priority,
  sameParty: sameParty != null ? sameParty() : this.sameParty,
  sameSite: sameSite != null ? sameSite() : this.sameSite,
  secure: secure != null ? secure() : this.secure,
  sourcePort: sourcePort != null ? sourcePort() : this.sourcePort,
  sourceScheme: sourceScheme != null ? sourceScheme() : this.sourceScheme,
  url: url != null ? url() : this.url,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostScreenshotRequestVariant1Cookies &&
          domain == other.domain &&
          expires == other.expires &&
          httpOnly == other.httpOnly &&
          name == other.name &&
          partitionKey == other.partitionKey &&
          path == other.path &&
          priority == other.priority &&
          sameParty == other.sameParty &&
          sameSite == other.sameSite &&
          secure == other.secure &&
          sourcePort == other.sourcePort &&
          sourceScheme == other.sourceScheme &&
          url == other.url &&
          value == other.value; } 
@override int get hashCode { return Object.hash(domain, expires, httpOnly, name, partitionKey, path, priority, sameParty, sameSite, secure, sourcePort, sourceScheme, url, value); } 
@override String toString() { return 'BrapiPostScreenshotRequestVariant1Cookies(domain: $domain, expires: $expires, httpOnly: $httpOnly, name: $name, partitionKey: $partitionKey, path: $path, priority: $priority, sameParty: $sameParty, sameSite: $sameSite, secure: $secure, sourcePort: $sourcePort, sourceScheme: $sourceScheme, url: $url, value: $value)'; } 
 }
