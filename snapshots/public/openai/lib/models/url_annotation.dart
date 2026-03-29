// GENERATED CODE - DO NOT MODIFY BY HAND

import 'url_annotation_source.dart';/// Type discriminator that is always `url` for this annotation.
final class UrlAnnotationType {const UrlAnnotationType._(this.value);

factory UrlAnnotationType.fromJson(String json) { return switch (json) {
  'url' => url,
  _ => UrlAnnotationType._(json),
}; }

static const UrlAnnotationType url = UrlAnnotationType._('url');

static const List<UrlAnnotationType> values = [url];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UrlAnnotationType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UrlAnnotationType($value)'; } 
 }
/// Annotation that references a URL.
final class UrlAnnotation {const UrlAnnotation({this.type = UrlAnnotationType.url, required this.source, });

factory UrlAnnotation.fromJson(Map<String, dynamic> json) { return UrlAnnotation(
  type: UrlAnnotationType.fromJson(json['type'] as String),
  source: UrlAnnotationSource.fromJson(json['source'] as Map<String, dynamic>),
); }

/// Type discriminator that is always `url` for this annotation.
final UrlAnnotationType type;

/// URL referenced by the annotation.
final UrlAnnotationSource source;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'source': source.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('source'); } 
UrlAnnotation copyWith({UrlAnnotationType? type, UrlAnnotationSource? source, }) { return UrlAnnotation(
  type: type ?? this.type,
  source: source ?? this.source,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlAnnotation &&
          type == other.type &&
          source == other.source; } 
@override int get hashCode { return Object.hash(type, source); } 
@override String toString() { return 'UrlAnnotation(type: $type, source: $source)'; } 
 }
