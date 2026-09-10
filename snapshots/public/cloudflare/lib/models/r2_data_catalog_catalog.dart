// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'r2_data_catalog_catalog_maintenance_config.dart';import 'r2_data_catalog_credential_status.dart';/// Indicates the status of the catalog.
@immutable final class R2DataCatalogCatalogStatus {const R2DataCatalogCatalogStatus._(this.value);

factory R2DataCatalogCatalogStatus.fromJson(String json) { return switch (json) {
  'active' => active,
  'inactive' => inactive,
  _ => R2DataCatalogCatalogStatus._(json),
}; }

static const R2DataCatalogCatalogStatus active = R2DataCatalogCatalogStatus._('active');

static const R2DataCatalogCatalogStatus inactive = R2DataCatalogCatalogStatus._('inactive');

static const List<R2DataCatalogCatalogStatus> values = [active, inactive];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is R2DataCatalogCatalogStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'R2DataCatalogCatalogStatus($value)'; } 
 }
/// Contains R2 Data Catalog information.
@immutable final class R2DataCatalogCatalog {const R2DataCatalogCatalog({required this.bucket, required this.id, required this.name, required this.status, this.credentialStatus = const Omittable.absent(), this.maintenanceConfig = const Omittable.absent(), });

factory R2DataCatalogCatalog.fromJson(Map<String, dynamic> json) { return R2DataCatalogCatalog(
  bucket: json['bucket'] as String,
  credentialStatus: json.containsKey('credential_status') ? Omittable(json['credential_status'] != null ? R2DataCatalogCredentialStatus.fromJson(json['credential_status'] as String) : null) : const Omittable.absent(),
  id: json['id'] as String,
  maintenanceConfig: json.containsKey('maintenance_config') ? Omittable(json['maintenance_config'] != null ? R2DataCatalogCatalogMaintenanceConfig.fromJson(json['maintenance_config'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  name: json['name'] as String,
  status: R2DataCatalogCatalogStatus.fromJson(json['status'] as String),
); }

/// Specifies the associated R2 bucket name.
final String bucket;

/// Shows the credential configuration status.
final Omittable<R2DataCatalogCredentialStatus?> credentialStatus;

/// Use this to uniquely identify the catalog.
final String id;

/// Configures maintenance for the catalog.
final Omittable<R2DataCatalogCatalogMaintenanceConfig?> maintenanceConfig;

/// Specifies the catalog name (generated from account and bucket name).
final String name;

final R2DataCatalogCatalogStatus status;

Map<String, dynamic> toJson() { return {
  'bucket': bucket,
  if (credentialStatus.isPresent) 'credential_status': credentialStatus.value?.toJson(),
  'id': id,
  if (maintenanceConfig.isPresent) 'maintenance_config': maintenanceConfig.value?.toJson(),
  'name': name,
  'status': status.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('bucket') && json['bucket'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('status'); } 
R2DataCatalogCatalog copyWith({String? bucket, Omittable<R2DataCatalogCredentialStatus?>? credentialStatus, String? id, Omittable<R2DataCatalogCatalogMaintenanceConfig?>? maintenanceConfig, String? name, R2DataCatalogCatalogStatus? status, }) { return R2DataCatalogCatalog(
  bucket: bucket ?? this.bucket,
  credentialStatus: credentialStatus ?? this.credentialStatus,
  id: id ?? this.id,
  maintenanceConfig: maintenanceConfig ?? this.maintenanceConfig,
  name: name ?? this.name,
  status: status ?? this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2DataCatalogCatalog &&
          bucket == other.bucket &&
          credentialStatus == other.credentialStatus &&
          id == other.id &&
          maintenanceConfig == other.maintenanceConfig &&
          name == other.name &&
          status == other.status; } 
@override int get hashCode { return Object.hash(bucket, credentialStatus, id, maintenanceConfig, name, status); } 
@override String toString() { return 'R2DataCatalogCatalog(bucket: $bucket, credentialStatus: $credentialStatus, id: $id, maintenanceConfig: $maintenanceConfig, name: $name, status: $status)'; } 
 }
