// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_schemas_modified_on.dart';/// The PSK metadata that includes when the PSK was generated.
@immutable final class MagicPskMetadata {const MagicPskMetadata({this.lastGeneratedOn});

factory MagicPskMetadata.fromJson(Map<String, dynamic> json) { return MagicPskMetadata(
  lastGeneratedOn: json['last_generated_on'] != null ? MagicSchemasModifiedOn.fromJson(json['last_generated_on'] as String) : null,
); }

final MagicSchemasModifiedOn? lastGeneratedOn;

Map<String, dynamic> toJson() { return {
  if (lastGeneratedOn != null) 'last_generated_on': lastGeneratedOn?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'last_generated_on'}.contains(key)); } 
MagicPskMetadata copyWith({MagicSchemasModifiedOn Function()? lastGeneratedOn}) { return MagicPskMetadata(
  lastGeneratedOn: lastGeneratedOn != null ? lastGeneratedOn() : this.lastGeneratedOn,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicPskMetadata &&
          lastGeneratedOn == other.lastGeneratedOn; } 
@override int get hashCode { return lastGeneratedOn.hashCode; } 
@override String toString() { return 'MagicPskMetadata(lastGeneratedOn: $lastGeneratedOn)'; } 
 }
