// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Type discriminator that is always `url`.
@immutable final class UrlAnnotationSourceType {const UrlAnnotationSourceType._(this.value);

factory UrlAnnotationSourceType.fromJson(String json) { return switch (json) {
  'url' => url,
  _ => UrlAnnotationSourceType._(json),
}; }

static const UrlAnnotationSourceType url = UrlAnnotationSourceType._('url');

static const List<UrlAnnotationSourceType> values = [url];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UrlAnnotationSourceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UrlAnnotationSourceType($value)'; } 
 }
/// URL backing an annotation entry.
@immutable final class UrlAnnotationSource {const UrlAnnotationSource({required this.url, this.type = UrlAnnotationSourceType.url, });

factory UrlAnnotationSource.fromJson(Map<String, dynamic> json) { return UrlAnnotationSource(
  type: UrlAnnotationSourceType.fromJson(json['type'] as String),
  url: json['url'] as String,
); }

/// Type discriminator that is always `url`.
final UrlAnnotationSourceType type;

/// URL referenced by the annotation.
final String url;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'url': url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('url') && json['url'] is String; } 
UrlAnnotationSource copyWith({UrlAnnotationSourceType? type, String? url, }) { return UrlAnnotationSource(
  type: type ?? this.type,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlAnnotationSource &&
          type == other.type &&
          url == other.url; } 
@override int get hashCode { return Object.hash(type, url); } 
@override String toString() { return 'UrlAnnotationSource(type: $type, url: $url)'; } 
 }
