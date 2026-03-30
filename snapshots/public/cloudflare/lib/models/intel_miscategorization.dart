// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class IntelMiscategorizationIndicatorType {const IntelMiscategorizationIndicatorType._(this.value);

factory IntelMiscategorizationIndicatorType.fromJson(String json) { return switch (json) {
  'domain' => domain,
  'ipv4' => ipv4,
  'ipv6' => ipv6,
  'url' => url,
  _ => IntelMiscategorizationIndicatorType._(json),
}; }

static const IntelMiscategorizationIndicatorType domain = IntelMiscategorizationIndicatorType._('domain');

static const IntelMiscategorizationIndicatorType ipv4 = IntelMiscategorizationIndicatorType._('ipv4');

static const IntelMiscategorizationIndicatorType ipv6 = IntelMiscategorizationIndicatorType._('ipv6');

static const IntelMiscategorizationIndicatorType url = IntelMiscategorizationIndicatorType._('url');

static const List<IntelMiscategorizationIndicatorType> values = [domain, ipv4, ipv6, url];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IntelMiscategorizationIndicatorType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IntelMiscategorizationIndicatorType($value)'; } 
 }
final class IntelMiscategorization {const IntelMiscategorization({this.contentAdds, this.contentRemoves, this.indicatorType, this.ip, this.securityAdds, this.securityRemoves, this.url, });

factory IntelMiscategorization.fromJson(Map<String, dynamic> json) { return IntelMiscategorization(
  contentAdds: (json['content_adds'] as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
  contentRemoves: (json['content_removes'] as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
  indicatorType: json['indicator_type'] != null ? IntelMiscategorizationIndicatorType.fromJson(json['indicator_type'] as String) : null,
  ip: json['ip'] as String?,
  securityAdds: (json['security_adds'] as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
  securityRemoves: (json['security_removes'] as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
  url: json['url'] as String?,
); }

/// Content category IDs to add.
final List<int>? contentAdds;

/// Content category IDs to remove.
final List<int>? contentRemoves;

final IntelMiscategorizationIndicatorType? indicatorType;

/// Provide only if indicator_type is `ipv4` or `ipv6`.
final String? ip;

/// Security category IDs to add.
final List<int>? securityAdds;

/// Security category IDs to remove.
final List<int>? securityRemoves;

/// Provide only if indicator_type is `domain` or `url`. Example if indicator_type is `domain`: `example.com`. Example if indicator_type is `url`: `https://example.com/news/`.
final String? url;

Map<String, dynamic> toJson() { return {
  'content_adds': ?contentAdds,
  'content_removes': ?contentRemoves,
  if (indicatorType != null) 'indicator_type': indicatorType?.toJson(),
  'ip': ?ip,
  'security_adds': ?securityAdds,
  'security_removes': ?securityRemoves,
  'url': ?url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'content_adds', 'content_removes', 'indicator_type', 'ip', 'security_adds', 'security_removes', 'url'}.contains(key)); } 
IntelMiscategorization copyWith({List<int> Function()? contentAdds, List<int> Function()? contentRemoves, IntelMiscategorizationIndicatorType Function()? indicatorType, String? Function()? ip, List<int> Function()? securityAdds, List<int> Function()? securityRemoves, String Function()? url, }) { return IntelMiscategorization(
  contentAdds: contentAdds != null ? contentAdds() : this.contentAdds,
  contentRemoves: contentRemoves != null ? contentRemoves() : this.contentRemoves,
  indicatorType: indicatorType != null ? indicatorType() : this.indicatorType,
  ip: ip != null ? ip() : this.ip,
  securityAdds: securityAdds != null ? securityAdds() : this.securityAdds,
  securityRemoves: securityRemoves != null ? securityRemoves() : this.securityRemoves,
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IntelMiscategorization &&
          listEquals(contentAdds, other.contentAdds) &&
          listEquals(contentRemoves, other.contentRemoves) &&
          indicatorType == other.indicatorType &&
          ip == other.ip &&
          listEquals(securityAdds, other.securityAdds) &&
          listEquals(securityRemoves, other.securityRemoves) &&
          url == other.url; } 
@override int get hashCode { return Object.hash(Object.hashAll(contentAdds ?? const []), Object.hashAll(contentRemoves ?? const []), indicatorType, ip, Object.hashAll(securityAdds ?? const []), Object.hashAll(securityRemoves ?? const []), url); } 
@override String toString() { return 'IntelMiscategorization(contentAdds: $contentAdds, contentRemoves: $contentRemoves, indicatorType: $indicatorType, ip: $ip, securityAdds: $securityAdds, securityRemoves: $securityRemoves, url: $url)'; } 
 }
