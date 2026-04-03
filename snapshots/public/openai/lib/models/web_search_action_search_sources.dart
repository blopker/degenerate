// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of source. Always `url`.
/// 
@immutable final class WebSearchActionSearchSourcesType {const WebSearchActionSearchSourcesType._(this.value);

factory WebSearchActionSearchSourcesType.fromJson(String json) { return switch (json) {
  'url' => url,
  _ => WebSearchActionSearchSourcesType._(json),
}; }

static const WebSearchActionSearchSourcesType url = WebSearchActionSearchSourcesType._('url');

static const List<WebSearchActionSearchSourcesType> values = [url];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebSearchActionSearchSourcesType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebSearchActionSearchSourcesType($value)'; } 
 }
/// A source used in the search.
/// 
@immutable final class WebSearchActionSearchSources {const WebSearchActionSearchSources({required this.type, required this.url, });

factory WebSearchActionSearchSources.fromJson(Map<String, dynamic> json) { return WebSearchActionSearchSources(
  type: WebSearchActionSearchSourcesType.fromJson(json['type'] as String),
  url: json['url'] as String,
); }

/// The type of source. Always `url`.
/// 
final WebSearchActionSearchSourcesType type;

/// The URL of the source.
/// 
final String url;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'url': url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('url') && json['url'] is String; } 
WebSearchActionSearchSources copyWith({WebSearchActionSearchSourcesType? type, String? url, }) { return WebSearchActionSearchSources(
  type: type ?? this.type,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebSearchActionSearchSources &&
          type == other.type &&
          url == other.url; } 
@override int get hashCode { return Object.hash(type, url); } 
@override String toString() { return 'WebSearchActionSearchSources(type: $type, url: $url)'; } 
 }
