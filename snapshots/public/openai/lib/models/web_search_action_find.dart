// GENERATED CODE - DO NOT MODIFY BY HAND

/// The action type.
/// 
final class WebSearchActionFindType {const WebSearchActionFindType._(this.value);

factory WebSearchActionFindType.fromJson(String json) { return switch (json) {
  'find_in_page' => findInPage,
  _ => WebSearchActionFindType._(json),
}; }

static const WebSearchActionFindType findInPage = WebSearchActionFindType._('find_in_page');

static const List<WebSearchActionFindType> values = [findInPage];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebSearchActionFindType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebSearchActionFindType($value)'; } 
 }
/// Action type "find_in_page": Searches for a pattern within a loaded page.
/// 
final class WebSearchActionFind {const WebSearchActionFind({required this.type, required this.url, required this.pattern, });

factory WebSearchActionFind.fromJson(Map<String, dynamic> json) { return WebSearchActionFind(
  type: WebSearchActionFindType.fromJson(json['type'] as String),
  url: Uri.parse(json['url'] as String),
  pattern: json['pattern'] as String,
); }

/// The action type.
/// 
final WebSearchActionFindType type;

/// The URL of the page searched for the pattern.
/// 
final Uri url;

/// The pattern or text to search for within the page.
/// 
final String pattern;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'url': url.toString(),
  'pattern': pattern,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('url') && json['url'] is String &&
      json.containsKey('pattern') && json['pattern'] is String; } 
WebSearchActionFind copyWith({WebSearchActionFindType? type, Uri? url, String? pattern, }) { return WebSearchActionFind(
  type: type ?? this.type,
  url: url ?? this.url,
  pattern: pattern ?? this.pattern,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebSearchActionFind &&
          type == other.type &&
          url == other.url &&
          pattern == other.pattern; } 
@override int get hashCode { return Object.hash(type, url, pattern); } 
@override String toString() { return 'WebSearchActionFind(type: $type, url: $url, pattern: $pattern)'; } 
 }
