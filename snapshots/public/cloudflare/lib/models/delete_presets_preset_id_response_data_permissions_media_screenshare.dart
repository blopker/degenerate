// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Can produce screen share video
@immutable final class DeletePresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce {const DeletePresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce._(this.value);

factory DeletePresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce.fromJson(String json) { return switch (json) {
  'ALLOWED' => allowed,
  'NOT_ALLOWED' => notAllowed,
  'CAN_REQUEST' => canRequest,
  _ => DeletePresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce._(json),
}; }

static const DeletePresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce allowed = DeletePresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce._('ALLOWED');

static const DeletePresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce notAllowed = DeletePresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce._('NOT_ALLOWED');

static const DeletePresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce canRequest = DeletePresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce._('CAN_REQUEST');

static const List<DeletePresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce> values = [allowed, notAllowed, canRequest];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeletePresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DeletePresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce($value)'; } 
 }
/// Screenshare permissions
@immutable final class DeletePresetsPresetIdResponseDataPermissionsMediaScreenshare {const DeletePresetsPresetIdResponseDataPermissionsMediaScreenshare({required this.canProduce});

factory DeletePresetsPresetIdResponseDataPermissionsMediaScreenshare.fromJson(Map<String, dynamic> json) { return DeletePresetsPresetIdResponseDataPermissionsMediaScreenshare(
  canProduce: DeletePresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce.fromJson(json['can_produce'] as String),
); }

/// Can produce screen share video
final DeletePresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce canProduce;

Map<String, dynamic> toJson() { return {
  'can_produce': canProduce.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('can_produce'); } 
DeletePresetsPresetIdResponseDataPermissionsMediaScreenshare copyWith({DeletePresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce? canProduce}) { return DeletePresetsPresetIdResponseDataPermissionsMediaScreenshare(
  canProduce: canProduce ?? this.canProduce,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeletePresetsPresetIdResponseDataPermissionsMediaScreenshare &&
          canProduce == other.canProduce; } 
@override int get hashCode { return canProduce.hashCode; } 
@override String toString() { return 'DeletePresetsPresetIdResponseDataPermissionsMediaScreenshare(canProduce: $canProduce)'; } 
 }
