// GENERATED CODE - DO NOT MODIFY BY HAND

import 'apply_patch_create_file_operation_param.dart';import 'apply_patch_delete_file_operation_param.dart';import 'apply_patch_update_file_operation_param.dart';/// One of the create_file, delete_file, or update_file operations supplied to the apply_patch tool.
sealed class ApplyPatchOperationParam {const ApplyPatchOperationParam();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory ApplyPatchOperationParam.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'create_file' => ApplyPatchOperationParamCreateFile.fromJson(json),
  'delete_file' => ApplyPatchOperationParamDeleteFile.fromJson(json),
  'update_file' => ApplyPatchOperationParamUpdateFile.fromJson(json),
  _ => ApplyPatchOperationParam$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is ApplyPatchOperationParam$Unknown; } 
 }
final class ApplyPatchOperationParamCreateFile extends ApplyPatchOperationParam {const ApplyPatchOperationParamCreateFile(this.applyPatchCreateFileOperationParam);

factory ApplyPatchOperationParamCreateFile.fromJson(Map<String, dynamic> json) { return ApplyPatchOperationParamCreateFile(ApplyPatchCreateFileOperationParam.fromJson(json)); }

final ApplyPatchCreateFileOperationParam applyPatchCreateFileOperationParam;

@override String get type { return 'create_file'; } 
@override Map<String, dynamic> toJson() { return {...applyPatchCreateFileOperationParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ApplyPatchOperationParamCreateFile && applyPatchCreateFileOperationParam == other.applyPatchCreateFileOperationParam; } 
@override int get hashCode { return applyPatchCreateFileOperationParam.hashCode; } 
@override String toString() { return 'ApplyPatchOperationParamCreateFile(applyPatchCreateFileOperationParam: $applyPatchCreateFileOperationParam)'; } 
 }
final class ApplyPatchOperationParamDeleteFile extends ApplyPatchOperationParam {const ApplyPatchOperationParamDeleteFile(this.applyPatchDeleteFileOperationParam);

factory ApplyPatchOperationParamDeleteFile.fromJson(Map<String, dynamic> json) { return ApplyPatchOperationParamDeleteFile(ApplyPatchDeleteFileOperationParam.fromJson(json)); }

final ApplyPatchDeleteFileOperationParam applyPatchDeleteFileOperationParam;

@override String get type { return 'delete_file'; } 
@override Map<String, dynamic> toJson() { return {...applyPatchDeleteFileOperationParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ApplyPatchOperationParamDeleteFile && applyPatchDeleteFileOperationParam == other.applyPatchDeleteFileOperationParam; } 
@override int get hashCode { return applyPatchDeleteFileOperationParam.hashCode; } 
@override String toString() { return 'ApplyPatchOperationParamDeleteFile(applyPatchDeleteFileOperationParam: $applyPatchDeleteFileOperationParam)'; } 
 }
final class ApplyPatchOperationParamUpdateFile extends ApplyPatchOperationParam {const ApplyPatchOperationParamUpdateFile(this.applyPatchUpdateFileOperationParam);

factory ApplyPatchOperationParamUpdateFile.fromJson(Map<String, dynamic> json) { return ApplyPatchOperationParamUpdateFile(ApplyPatchUpdateFileOperationParam.fromJson(json)); }

final ApplyPatchUpdateFileOperationParam applyPatchUpdateFileOperationParam;

@override String get type { return 'update_file'; } 
@override Map<String, dynamic> toJson() { return {...applyPatchUpdateFileOperationParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ApplyPatchOperationParamUpdateFile && applyPatchUpdateFileOperationParam == other.applyPatchUpdateFileOperationParam; } 
@override int get hashCode { return applyPatchUpdateFileOperationParam.hashCode; } 
@override String toString() { return 'ApplyPatchOperationParamUpdateFile(applyPatchUpdateFileOperationParam: $applyPatchUpdateFileOperationParam)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class ApplyPatchOperationParam$Unknown extends ApplyPatchOperationParam {const ApplyPatchOperationParam$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ApplyPatchOperationParam$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'ApplyPatchOperationParam.unknown($json)'; } 
 }
