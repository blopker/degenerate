// GENERATED CODE - DO NOT MODIFY BY HAND

final class ManifestFile {const ManifestFile({this.sourceLocation});

factory ManifestFile.fromJson(Map<String, dynamic> json) { return ManifestFile(
  sourceLocation: json['source_location'] as String?,
); }

/// The path of the manifest file relative to the root of the Git repository.
final String? sourceLocation;

Map<String, dynamic> toJson() { return {
  'source_location': ?sourceLocation,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'source_location'}.contains(key)); } 
ManifestFile copyWith({String Function()? sourceLocation}) { return ManifestFile(
  sourceLocation: sourceLocation != null ? sourceLocation() : this.sourceLocation,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ManifestFile &&
          sourceLocation == other.sourceLocation; } 
@override int get hashCode { return sourceLocation.hashCode; } 
@override String toString() { return 'ManifestFile(sourceLocation: $sourceLocation)'; } 
 }
