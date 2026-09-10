// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The action type.
/// 
@immutable final class WebSearchActionOpenPageType {const WebSearchActionOpenPageType._(this.value);

factory WebSearchActionOpenPageType.fromJson(String json) { return switch (json) {
  'open_page' => openPage,
  _ => WebSearchActionOpenPageType._(json),
}; }

static const WebSearchActionOpenPageType openPage = WebSearchActionOpenPageType._('open_page');

static const List<WebSearchActionOpenPageType> values = [openPage];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebSearchActionOpenPageType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebSearchActionOpenPageType($value)'; } 
 }
/// Action type "open_page" - Opens a specific URL from search results.
/// 
@immutable final class WebSearchActionOpenPage {const WebSearchActionOpenPage({required this.type, this.url = const Omittable.absent(), });

factory WebSearchActionOpenPage.fromJson(Map<String, dynamic> json) { return WebSearchActionOpenPage(
  type: WebSearchActionOpenPageType.fromJson(json['type'] as String),
  url: json.containsKey('url') ? Omittable(json['url'] != null ? Uri.parse(json['url'] as String) : null) : const Omittable.absent(),
); }

/// The action type.
/// 
final WebSearchActionOpenPageType type;

/// The URL opened by the model.
/// 
final Omittable<Uri?> url;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  if (url.isPresent) 'url': url.value?.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
WebSearchActionOpenPage copyWith({WebSearchActionOpenPageType? type, Omittable<Uri?>? url, }) { return WebSearchActionOpenPage(
  type: type ?? this.type,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebSearchActionOpenPage &&
          type == other.type &&
          url == other.url; } 
@override int get hashCode { return Object.hash(type, url); } 
@override String toString() { return 'WebSearchActionOpenPage(type: $type, url: $url)'; } 
 }
