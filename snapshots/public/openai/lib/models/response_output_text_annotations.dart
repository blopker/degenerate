// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'file_annotation.dart';import 'url_annotation.dart';/// Annotation object describing a cited source.
sealed class ResponseOutputTextAnnotations {const ResponseOutputTextAnnotations();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory ResponseOutputTextAnnotations.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'file' => ResponseOutputTextAnnotationsFile.fromJson(json),
  'url' => ResponseOutputTextAnnotationsUrl.fromJson(json),
  _ => ResponseOutputTextAnnotations$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is ResponseOutputTextAnnotations$Unknown; } 
 }
@immutable final class ResponseOutputTextAnnotationsFile extends ResponseOutputTextAnnotations {const ResponseOutputTextAnnotationsFile(this.fileAnnotation);

factory ResponseOutputTextAnnotationsFile.fromJson(Map<String, dynamic> json) { return ResponseOutputTextAnnotationsFile(FileAnnotation.fromJson(json)); }

final FileAnnotation fileAnnotation;

@override String get type { return 'file'; } 
@override Map<String, dynamic> toJson() { return {...fileAnnotation.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseOutputTextAnnotationsFile && fileAnnotation == other.fileAnnotation; } 
@override int get hashCode { return fileAnnotation.hashCode; } 
@override String toString() { return 'ResponseOutputTextAnnotationsFile(fileAnnotation: $fileAnnotation)'; } 
 }
@immutable final class ResponseOutputTextAnnotationsUrl extends ResponseOutputTextAnnotations {const ResponseOutputTextAnnotationsUrl(this.urlAnnotation);

factory ResponseOutputTextAnnotationsUrl.fromJson(Map<String, dynamic> json) { return ResponseOutputTextAnnotationsUrl(UrlAnnotation.fromJson(json)); }

final UrlAnnotation urlAnnotation;

@override String get type { return 'url'; } 
@override Map<String, dynamic> toJson() { return {...urlAnnotation.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseOutputTextAnnotationsUrl && urlAnnotation == other.urlAnnotation; } 
@override int get hashCode { return urlAnnotation.hashCode; } 
@override String toString() { return 'ResponseOutputTextAnnotationsUrl(urlAnnotation: $urlAnnotation)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class ResponseOutputTextAnnotations$Unknown extends ResponseOutputTextAnnotations {const ResponseOutputTextAnnotations$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseOutputTextAnnotations$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'ResponseOutputTextAnnotations.unknown($json)'; } 
 }
