// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'stream_schemas_identifier.dart';import 'stream_signing_key_created.dart';@immutable final class StreamKeyResponseCollectionResult {const StreamKeyResponseCollectionResult({this.created, this.id, });

factory StreamKeyResponseCollectionResult.fromJson(Map<String, dynamic> json) { return StreamKeyResponseCollectionResult(
  created: json['created'] != null ? StreamSigningKeyCreated.fromJson(json['created'] as String) : null,
  id: json['id'] != null ? StreamSchemasIdentifier.fromJson(json['id'] as String) : null,
); }

final StreamSigningKeyCreated? created;

final StreamSchemasIdentifier? id;

Map<String, dynamic> toJson() { return {
  if (created != null) 'created': created?.toJson(),
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'created', 'id'}.contains(key)); } 
StreamKeyResponseCollectionResult copyWith({StreamSigningKeyCreated Function()? created, StreamSchemasIdentifier Function()? id, }) { return StreamKeyResponseCollectionResult(
  created: created != null ? created() : this.created,
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamKeyResponseCollectionResult &&
          created == other.created &&
          id == other.id; } 
@override int get hashCode { return Object.hash(created, id); } 
@override String toString() { return 'StreamKeyResponseCollectionResult(created: $created, id: $id)'; } 
 }
