// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PackageVersionMetadataDocker {const PackageVersionMetadataDocker({this.tag});

factory PackageVersionMetadataDocker.fromJson(Map<String, dynamic> json) { return PackageVersionMetadataDocker(
  tag: (json['tag'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

final List<String>? tag;

Map<String, dynamic> toJson() { return {
  'tag': ?tag,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'tag'}.contains(key)); } 
PackageVersionMetadataDocker copyWith({List<String> Function()? tag}) { return PackageVersionMetadataDocker(
  tag: tag != null ? tag() : this.tag,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PackageVersionMetadataDocker &&
          listEquals(tag, other.tag); } 
@override int get hashCode { return Object.hashAll(tag ?? const []).hashCode; } 
@override String toString() { return 'PackageVersionMetadataDocker(tag: $tag)'; } 
 }
