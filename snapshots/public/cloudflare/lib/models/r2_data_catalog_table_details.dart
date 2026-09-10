// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'r2_data_catalog_table_identifier.dart';/// Contains table with metadata.
@immutable final class R2DataCatalogTableDetails {const R2DataCatalogTableDetails({required this.identifier, required this.tableUuid, this.createdAt = const Omittable.absent(), this.location = const Omittable.absent(), this.metadataLocation = const Omittable.absent(), this.updatedAt = const Omittable.absent(), });

factory R2DataCatalogTableDetails.fromJson(Map<String, dynamic> json) { return R2DataCatalogTableDetails(
  createdAt: json.containsKey('created_at') ? Omittable(json['created_at'] != null ? DateTime.parse(json['created_at'] as String) : null) : const Omittable.absent(),
  identifier: R2DataCatalogTableIdentifier.fromJson(json['identifier'] as Map<String, dynamic>),
  location: json.containsKey('location') ? Omittable(json['location'] as String?) : const Omittable.absent(),
  metadataLocation: json.containsKey('metadata_location') ? Omittable(json['metadata_location'] as String?) : const Omittable.absent(),
  tableUuid: json['table_uuid'] as String,
  updatedAt: json.containsKey('updated_at') ? Omittable(json['updated_at'] != null ? DateTime.parse(json['updated_at'] as String) : null) : const Omittable.absent(),
); }

/// Indicates the creation timestamp in ISO 8601 format.
final Omittable<DateTime?> createdAt;

final R2DataCatalogTableIdentifier identifier;

/// Specifies the base S3 URI for table storage location.
final Omittable<String?> location;

/// Contains the S3 URI to table metadata file. Null for staged tables.
final Omittable<String?> metadataLocation;

/// Contains the UUID that persists across renames.
final String tableUuid;

/// Shows the last update timestamp in ISO 8601 format. Null if never updated.
final Omittable<DateTime?> updatedAt;

Map<String, dynamic> toJson() { return {
  if (createdAt.isPresent) 'created_at': createdAt.value?.toIso8601String(),
  'identifier': identifier.toJson(),
  if (location.isPresent) 'location': location.value,
  if (metadataLocation.isPresent) 'metadata_location': metadataLocation.value,
  'table_uuid': tableUuid,
  if (updatedAt.isPresent) 'updated_at': updatedAt.value?.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('identifier') &&
      json.containsKey('table_uuid') && json['table_uuid'] is String; } 
R2DataCatalogTableDetails copyWith({Omittable<DateTime?>? createdAt, R2DataCatalogTableIdentifier? identifier, Omittable<String?>? location, Omittable<String?>? metadataLocation, String? tableUuid, Omittable<DateTime?>? updatedAt, }) { return R2DataCatalogTableDetails(
  createdAt: createdAt ?? this.createdAt,
  identifier: identifier ?? this.identifier,
  location: location ?? this.location,
  metadataLocation: metadataLocation ?? this.metadataLocation,
  tableUuid: tableUuid ?? this.tableUuid,
  updatedAt: updatedAt ?? this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2DataCatalogTableDetails &&
          createdAt == other.createdAt &&
          identifier == other.identifier &&
          location == other.location &&
          metadataLocation == other.metadataLocation &&
          tableUuid == other.tableUuid &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(createdAt, identifier, location, metadataLocation, tableUuid, updatedAt); } 
@override String toString() { return 'R2DataCatalogTableDetails(createdAt: $createdAt, identifier: $identifier, location: $location, metadataLocation: $metadataLocation, tableUuid: $tableUuid, updatedAt: $updatedAt)'; } 
 }
