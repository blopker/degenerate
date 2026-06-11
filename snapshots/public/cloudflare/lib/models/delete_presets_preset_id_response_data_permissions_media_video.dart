// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Can produce video
@immutable final class DeletePresetsPresetIdResponseDataPermissionsMediaVideoCanProduce {const DeletePresetsPresetIdResponseDataPermissionsMediaVideoCanProduce._(this.value);

factory DeletePresetsPresetIdResponseDataPermissionsMediaVideoCanProduce.fromJson(String json) { return switch (json) {
  'ALLOWED' => allowed,
  'NOT_ALLOWED' => notAllowed,
  'CAN_REQUEST' => canRequest,
  _ => DeletePresetsPresetIdResponseDataPermissionsMediaVideoCanProduce._(json),
}; }

static const DeletePresetsPresetIdResponseDataPermissionsMediaVideoCanProduce allowed = DeletePresetsPresetIdResponseDataPermissionsMediaVideoCanProduce._('ALLOWED');

static const DeletePresetsPresetIdResponseDataPermissionsMediaVideoCanProduce notAllowed = DeletePresetsPresetIdResponseDataPermissionsMediaVideoCanProduce._('NOT_ALLOWED');

static const DeletePresetsPresetIdResponseDataPermissionsMediaVideoCanProduce canRequest = DeletePresetsPresetIdResponseDataPermissionsMediaVideoCanProduce._('CAN_REQUEST');

static const List<DeletePresetsPresetIdResponseDataPermissionsMediaVideoCanProduce> values = [allowed, notAllowed, canRequest];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeletePresetsPresetIdResponseDataPermissionsMediaVideoCanProduce && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DeletePresetsPresetIdResponseDataPermissionsMediaVideoCanProduce($value)'; } 
 }
/// Video permissions
@immutable final class DeletePresetsPresetIdResponseDataPermissionsMediaVideo {const DeletePresetsPresetIdResponseDataPermissionsMediaVideo({required this.canProduce});

factory DeletePresetsPresetIdResponseDataPermissionsMediaVideo.fromJson(Map<String, dynamic> json) { return DeletePresetsPresetIdResponseDataPermissionsMediaVideo(
  canProduce: DeletePresetsPresetIdResponseDataPermissionsMediaVideoCanProduce.fromJson(json['can_produce'] as String),
); }

/// Can produce video
final DeletePresetsPresetIdResponseDataPermissionsMediaVideoCanProduce canProduce;

Map<String, dynamic> toJson() { return {
  'can_produce': canProduce.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('can_produce'); } 
DeletePresetsPresetIdResponseDataPermissionsMediaVideo copyWith({DeletePresetsPresetIdResponseDataPermissionsMediaVideoCanProduce? canProduce}) { return DeletePresetsPresetIdResponseDataPermissionsMediaVideo(
  canProduce: canProduce ?? this.canProduce,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeletePresetsPresetIdResponseDataPermissionsMediaVideo &&
          canProduce == other.canProduce; } 
@override int get hashCode { return canProduce.hashCode; } 
@override String toString() { return 'DeletePresetsPresetIdResponseDataPermissionsMediaVideo(canProduce: $canProduce)'; } 
 }
