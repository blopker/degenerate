// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'dart:typed_data';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_multipart_script_request_metadata.dart';@immutable final class WorkersMultipartScriptRequest {const WorkersMultipartScriptRequest({required this.metadata, this.files, });

factory WorkersMultipartScriptRequest.fromJson(Map<String, dynamic> json) {return WorkersMultipartScriptRequest(
  files: (json['files'] as List<dynamic>?)?.map((e) => base64Decode(e as String)).toList(),
  metadata: WorkersMultipartScriptRequestMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
);}

/// An array of modules (often JavaScript files) comprising a Worker script. At least one module must be present and referenced in the metadata as `main_module` or `body_part` by filename.`<br/>`Possible Content-Type(s) are: `application/javascript+module`, `text/javascript+module`, `application/javascript`, `text/javascript`, `text/x-python`, `text/x-python-requirement`, `application/wasm`, `text/plain`, `application/octet-stream`, `application/source-map`.
final List<Uint8List>? files;

/// JSON-encoded metadata about the uploaded parts and Worker configuration.
final WorkersMultipartScriptRequestMetadata metadata;

Map<String, dynamic> toJson() {return {
  if (files != null) 'files': files?.map(base64Encode).toList(),
  'metadata': metadata.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('metadata');}
WorkersMultipartScriptRequest copyWith({List<Uint8List>? Function()? files, WorkersMultipartScriptRequestMetadata? metadata, }) {return WorkersMultipartScriptRequest(
  files: files != null ? files() : this.files,
  metadata: metadata ?? this.metadata,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is WorkersMultipartScriptRequest &&
          listEquals(files, other.files) &&
          metadata == other.metadata;}
@override int get hashCode {return Object.hash(Object.hashAll(files ?? const []), metadata);}
@override String toString() {return 'WorkersMultipartScriptRequest(files: $files, metadata: $metadata)';}
}
