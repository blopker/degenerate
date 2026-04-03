// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// JSON-encoded metadata about the uploaded parts and Worker configuration.
@immutable final class WorkerEnvironmentPutScriptContentRequestMetadata {const WorkerEnvironmentPutScriptContentRequestMetadata({this.bodyPart, this.mainModule, });

factory WorkerEnvironmentPutScriptContentRequestMetadata.fromJson(Map<String, dynamic> json) { return WorkerEnvironmentPutScriptContentRequestMetadata(
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
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'body_part', 'main_module'}.contains(key)); } 
WorkerEnvironmentPutScriptContentRequestMetadata copyWith({String Function()? bodyPart, String Function()? mainModule, }) { return WorkerEnvironmentPutScriptContentRequestMetadata(
  bodyPart: bodyPart != null ? bodyPart() : this.bodyPart,
  mainModule: mainModule != null ? mainModule() : this.mainModule,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkerEnvironmentPutScriptContentRequestMetadata &&
          bodyPart == other.bodyPart &&
          mainModule == other.mainModule; } 
@override int get hashCode { return Object.hash(bodyPart, mainModule); } 
@override String toString() { return 'WorkerEnvironmentPutScriptContentRequestMetadata(bodyPart: $bodyPart, mainModule: $mainModule)'; } 
 }
