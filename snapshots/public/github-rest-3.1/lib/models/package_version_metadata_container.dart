// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PackageVersionMetadataContainer {const PackageVersionMetadataContainer({required this.tags});

factory PackageVersionMetadataContainer.fromJson(Map<String, dynamic> json) { return PackageVersionMetadataContainer(
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
); }

final List<String> tags;

Map<String, dynamic> toJson() { return {
  'tags': tags,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('tags'); } 
PackageVersionMetadataContainer copyWith({List<String>? tags}) { return PackageVersionMetadataContainer(
  tags: tags ?? this.tags,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PackageVersionMetadataContainer &&
          listEquals(tags, other.tags); } 
@override int get hashCode { return Object.hashAll(tags).hashCode; } 
@override String toString() { return 'PackageVersionMetadataContainer(tags: $tags)'; } 
 }
