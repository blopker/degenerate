// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'r2_bucket_location.dart';import 'r2_bucket_name.dart';import 'r2_storage_class.dart';@immutable final class R2CreateBucketRequest {const R2CreateBucketRequest({required this.name, this.locationHint, this.storageClass, });

factory R2CreateBucketRequest.fromJson(Map<String, dynamic> json) { return R2CreateBucketRequest(
  locationHint: json['locationHint'] != null ? R2BucketLocation.fromJson(json['locationHint'] as String) : null,
  name: R2BucketName.fromJson(json['name'] as String),
  storageClass: json['storageClass'] != null ? R2StorageClass.fromJson(json['storageClass'] as String) : null,
); }

/// Location of the bucket.
final R2BucketLocation? locationHint;

/// Name of the bucket.
final R2BucketName name;

/// Storage class for newly uploaded objects, unless specified otherwise.
final R2StorageClass? storageClass;

Map<String, dynamic> toJson() { return {
  if (locationHint != null) 'locationHint': locationHint?.toJson(),
  'name': name.toJson(),
  if (storageClass != null) 'storageClass': storageClass?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name'); } 
R2CreateBucketRequest copyWith({R2BucketLocation Function()? locationHint, R2BucketName? name, R2StorageClass Function()? storageClass, }) { return R2CreateBucketRequest(
  locationHint: locationHint != null ? locationHint() : this.locationHint,
  name: name ?? this.name,
  storageClass: storageClass != null ? storageClass() : this.storageClass,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2CreateBucketRequest &&
          locationHint == other.locationHint &&
          name == other.name &&
          storageClass == other.storageClass; } 
@override int get hashCode { return Object.hash(locationHint, name, storageClass); } 
@override String toString() { return 'R2CreateBucketRequest(locationHint: $locationHint, name: $name, storageClass: $storageClass)'; } 
 }
