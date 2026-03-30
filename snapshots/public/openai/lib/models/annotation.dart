// GENERATED CODE - DO NOT MODIFY BY HAND

import 'container_file_citation_body.dart';import 'file_citation_body.dart';import 'file_path.dart';import 'url_citation_body.dart';/// An annotation that applies to a span of output text.
sealed class Annotation {const Annotation();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory Annotation.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'file_citation' => AnnotationFileCitation.fromJson(json),
  'url_citation' => AnnotationUrlCitation.fromJson(json),
  'container_file_citation' => AnnotationContainerFileCitation.fromJson(json),
  'file_path' => AnnotationFilePath.fromJson(json),
  _ => Annotation$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is Annotation$Unknown; } 
 }
final class AnnotationFileCitation extends Annotation {const AnnotationFileCitation(this.fileCitationBody);

factory AnnotationFileCitation.fromJson(Map<String, dynamic> json) { return AnnotationFileCitation(FileCitationBody.fromJson(json)); }

final FileCitationBody fileCitationBody;

@override String get type { return 'file_citation'; } 
@override Map<String, dynamic> toJson() { return {...fileCitationBody.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AnnotationFileCitation && fileCitationBody == other.fileCitationBody; } 
@override int get hashCode { return fileCitationBody.hashCode; } 
@override String toString() { return 'AnnotationFileCitation(fileCitationBody: $fileCitationBody)'; } 
 }
final class AnnotationUrlCitation extends Annotation {const AnnotationUrlCitation(this.urlCitationBody);

factory AnnotationUrlCitation.fromJson(Map<String, dynamic> json) { return AnnotationUrlCitation(UrlCitationBody.fromJson(json)); }

final UrlCitationBody urlCitationBody;

@override String get type { return 'url_citation'; } 
@override Map<String, dynamic> toJson() { return {...urlCitationBody.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AnnotationUrlCitation && urlCitationBody == other.urlCitationBody; } 
@override int get hashCode { return urlCitationBody.hashCode; } 
@override String toString() { return 'AnnotationUrlCitation(urlCitationBody: $urlCitationBody)'; } 
 }
final class AnnotationContainerFileCitation extends Annotation {const AnnotationContainerFileCitation(this.containerFileCitationBody);

factory AnnotationContainerFileCitation.fromJson(Map<String, dynamic> json) { return AnnotationContainerFileCitation(ContainerFileCitationBody.fromJson(json)); }

final ContainerFileCitationBody containerFileCitationBody;

@override String get type { return 'container_file_citation'; } 
@override Map<String, dynamic> toJson() { return {...containerFileCitationBody.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AnnotationContainerFileCitation && containerFileCitationBody == other.containerFileCitationBody; } 
@override int get hashCode { return containerFileCitationBody.hashCode; } 
@override String toString() { return 'AnnotationContainerFileCitation(containerFileCitationBody: $containerFileCitationBody)'; } 
 }
final class AnnotationFilePath extends Annotation {const AnnotationFilePath(this.filePath);

factory AnnotationFilePath.fromJson(Map<String, dynamic> json) { return AnnotationFilePath(FilePath.fromJson(json)); }

final FilePath filePath;

@override String get type { return 'file_path'; } 
@override Map<String, dynamic> toJson() { return {...filePath.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AnnotationFilePath && filePath == other.filePath; } 
@override int get hashCode { return filePath.hashCode; } 
@override String toString() { return 'AnnotationFilePath(filePath: $filePath)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class Annotation$Unknown extends Annotation {const Annotation$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Annotation$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'Annotation.unknown($json)'; } 
 }
