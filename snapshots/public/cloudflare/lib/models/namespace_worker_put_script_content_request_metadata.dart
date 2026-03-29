// GENERATED CODE - DO NOT MODIFY BY HAND

/// JSON-encoded metadata about the uploaded parts and Worker configuration.
final class NamespaceWorkerPutScriptContentRequestMetadata {const NamespaceWorkerPutScriptContentRequestMetadata({this.bodyPart, this.mainModule, });

factory NamespaceWorkerPutScriptContentRequestMetadata.fromJson(Map<String, dynamic> json) { return NamespaceWorkerPutScriptContentRequestMetadata(
  bodyPart: json['body_part'] as String?,
  mainModule: json['main_module'] as String?,
); }

/// Name of the part in the multipart request that contains the script (e.g. the file adding a listener to the `fetch` event). Indicates a `service worker syntax` Worker.
final String? bodyPart;

/// Name of the part in the multipart request that contains the main module (e.g. the file exporting a `fetch` handler). Indicates a `module syntax` Worker.
final String? mainModule;

Map<String, dynamic> toJson() { return {
  'body_part': ?bodyPart,
  'main_module': ?mainModule,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
NamespaceWorkerPutScriptContentRequestMetadata copyWith({String Function()? bodyPart, String Function()? mainModule, }) { return NamespaceWorkerPutScriptContentRequestMetadata(
  bodyPart: bodyPart != null ? bodyPart() : this.bodyPart,
  mainModule: mainModule != null ? mainModule() : this.mainModule,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is NamespaceWorkerPutScriptContentRequestMetadata &&
          bodyPart == other.bodyPart &&
          mainModule == other.mainModule; } 
@override int get hashCode { return Object.hash(bodyPart, mainModule); } 
@override String toString() { return 'NamespaceWorkerPutScriptContentRequestMetadata(bodyPart: $bodyPart, mainModule: $mainModule)'; } 
 }
