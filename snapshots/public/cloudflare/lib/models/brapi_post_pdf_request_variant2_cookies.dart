// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class BrapiPostPdfRequestVariant2CookiesPriority {const BrapiPostPdfRequestVariant2CookiesPriority._(this.value);

factory BrapiPostPdfRequestVariant2CookiesPriority.fromJson(String json) { return switch (json) {
  'Low' => low,
  'Medium' => medium,
  'High' => high,
  _ => BrapiPostPdfRequestVariant2CookiesPriority._(json),
}; }

static const BrapiPostPdfRequestVariant2CookiesPriority low = BrapiPostPdfRequestVariant2CookiesPriority._('Low');

static const BrapiPostPdfRequestVariant2CookiesPriority medium = BrapiPostPdfRequestVariant2CookiesPriority._('Medium');

static const BrapiPostPdfRequestVariant2CookiesPriority high = BrapiPostPdfRequestVariant2CookiesPriority._('High');

static const List<BrapiPostPdfRequestVariant2CookiesPriority> values = [low, medium, high];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostPdfRequestVariant2CookiesPriority && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BrapiPostPdfRequestVariant2CookiesPriority($value)'; } 
 }
@immutable final class BrapiPostPdfRequestVariant2CookiesSameSite {const BrapiPostPdfRequestVariant2CookiesSameSite._(this.value);

factory BrapiPostPdfRequestVariant2CookiesSameSite.fromJson(String json) { return switch (json) {
  'Strict' => strict,
  'Lax' => lax,
  'None' => none,
  _ => BrapiPostPdfRequestVariant2CookiesSameSite._(json),
}; }

static const BrapiPostPdfRequestVariant2CookiesSameSite strict = BrapiPostPdfRequestVariant2CookiesSameSite._('Strict');

static const BrapiPostPdfRequestVariant2CookiesSameSite lax = BrapiPostPdfRequestVariant2CookiesSameSite._('Lax');

static const BrapiPostPdfRequestVariant2CookiesSameSite none = BrapiPostPdfRequestVariant2CookiesSameSite._('None');

static const List<BrapiPostPdfRequestVariant2CookiesSameSite> values = [strict, lax, none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostPdfRequestVariant2CookiesSameSite && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BrapiPostPdfRequestVariant2CookiesSameSite($value)'; } 
 }
@immutable final class BrapiPostPdfRequestVariant2CookiesSourceScheme {const BrapiPostPdfRequestVariant2CookiesSourceScheme._(this.value);

factory BrapiPostPdfRequestVariant2CookiesSourceScheme.fromJson(String json) { return switch (json) {
  'Unset' => unset,
  'NonSecure' => nonSecure,
  'Secure' => secure,
  _ => BrapiPostPdfRequestVariant2CookiesSourceScheme._(json),
}; }

static const BrapiPostPdfRequestVariant2CookiesSourceScheme unset = BrapiPostPdfRequestVariant2CookiesSourceScheme._('Unset');

static const BrapiPostPdfRequestVariant2CookiesSourceScheme nonSecure = BrapiPostPdfRequestVariant2CookiesSourceScheme._('NonSecure');

static const BrapiPostPdfRequestVariant2CookiesSourceScheme secure = BrapiPostPdfRequestVariant2CookiesSourceScheme._('Secure');

static const List<BrapiPostPdfRequestVariant2CookiesSourceScheme> values = [unset, nonSecure, secure];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostPdfRequestVariant2CookiesSourceScheme && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BrapiPostPdfRequestVariant2CookiesSourceScheme($value)'; } 
 }
@immutable final class BrapiPostPdfRequestVariant2Cookies {const BrapiPostPdfRequestVariant2Cookies({required this.name, required this.value, this.domain, this.expires, this.httpOnly, this.partitionKey, this.path, this.priority, this.sameParty, this.sameSite, this.secure, this.sourcePort, this.sourceScheme, this.url, });

factory BrapiPostPdfRequestVariant2Cookies.fromJson(Map<String, dynamic> json) { return BrapiPostPdfRequestVariant2Cookies(
  domain: json['domain'] as String?,
  expires: json['expires'] != null ? (json['expires'] as num).toDouble() : null,
  httpOnly: json['httpOnly'] as bool?,
  name: json['name'] as String,
  partitionKey: json['partitionKey'] as String?,
  path: json['path'] as String?,
  priority: json['priority'] != null ? BrapiPostPdfRequestVariant2CookiesPriority.fromJson(json['priority'] as String) : null,
  sameParty: json['sameParty'] as bool?,
  sameSite: json['sameSite'] != null ? BrapiPostPdfRequestVariant2CookiesSameSite.fromJson(json['sameSite'] as String) : null,
  secure: json['secure'] as bool?,
  sourcePort: json['sourcePort'] != null ? (json['sourcePort'] as num).toDouble() : null,
  sourceScheme: json['sourceScheme'] != null ? BrapiPostPdfRequestVariant2CookiesSourceScheme.fromJson(json['sourceScheme'] as String) : null,
  url: json['url'] as String?,
  value: json['value'] as String,
); }

final String? domain;

final double? expires;

final bool? httpOnly;

final String name;

final String? partitionKey;

final String? path;

final BrapiPostPdfRequestVariant2CookiesPriority? priority;

final bool? sameParty;

final BrapiPostPdfRequestVariant2CookiesSameSite? sameSite;

final bool? secure;

final double? sourcePort;

final BrapiPostPdfRequestVariant2CookiesSourceScheme? sourceScheme;

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
BrapiPostPdfRequestVariant2Cookies copyWith({String Function()? domain, double Function()? expires, bool Function()? httpOnly, String? name, String Function()? partitionKey, String Function()? path, BrapiPostPdfRequestVariant2CookiesPriority Function()? priority, bool Function()? sameParty, BrapiPostPdfRequestVariant2CookiesSameSite Function()? sameSite, bool Function()? secure, double Function()? sourcePort, BrapiPostPdfRequestVariant2CookiesSourceScheme Function()? sourceScheme, String Function()? url, String? value, }) { return BrapiPostPdfRequestVariant2Cookies(
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
      other is BrapiPostPdfRequestVariant2Cookies &&
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
@override String toString() { return 'BrapiPostPdfRequestVariant2Cookies(domain: $domain, expires: $expires, httpOnly: $httpOnly, name: $name, partitionKey: $partitionKey, path: $path, priority: $priority, sameParty: $sameParty, sameSite: $sameSite, secure: $secure, sourcePort: $sourcePort, sourceScheme: $sourceScheme, url: $url, value: $value)'; } 
 }
