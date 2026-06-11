// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Can produce audio
@immutable final class DeletePresetsPresetIdResponseDataPermissionsMediaAudioCanProduce {const DeletePresetsPresetIdResponseDataPermissionsMediaAudioCanProduce._(this.value);

factory DeletePresetsPresetIdResponseDataPermissionsMediaAudioCanProduce.fromJson(String json) { return switch (json) {
  'ALLOWED' => allowed,
  'NOT_ALLOWED' => notAllowed,
  'CAN_REQUEST' => canRequest,
  _ => DeletePresetsPresetIdResponseDataPermissionsMediaAudioCanProduce._(json),
}; }

static const DeletePresetsPresetIdResponseDataPermissionsMediaAudioCanProduce allowed = DeletePresetsPresetIdResponseDataPermissionsMediaAudioCanProduce._('ALLOWED');

static const DeletePresetsPresetIdResponseDataPermissionsMediaAudioCanProduce notAllowed = DeletePresetsPresetIdResponseDataPermissionsMediaAudioCanProduce._('NOT_ALLOWED');

static const DeletePresetsPresetIdResponseDataPermissionsMediaAudioCanProduce canRequest = DeletePresetsPresetIdResponseDataPermissionsMediaAudioCanProduce._('CAN_REQUEST');

static const List<DeletePresetsPresetIdResponseDataPermissionsMediaAudioCanProduce> values = [allowed, notAllowed, canRequest];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeletePresetsPresetIdResponseDataPermissionsMediaAudioCanProduce && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DeletePresetsPresetIdResponseDataPermissionsMediaAudioCanProduce($value)'; } 
 }
/// Audio permissions
@immutable final class DeletePresetsPresetIdResponseDataPermissionsMediaAudio {const DeletePresetsPresetIdResponseDataPermissionsMediaAudio({required this.canProduce});

factory DeletePresetsPresetIdResponseDataPermissionsMediaAudio.fromJson(Map<String, dynamic> json) { return DeletePresetsPresetIdResponseDataPermissionsMediaAudio(
  canProduce: DeletePresetsPresetIdResponseDataPermissionsMediaAudioCanProduce.fromJson(json['can_produce'] as String),
); }

/// Can produce audio
final DeletePresetsPresetIdResponseDataPermissionsMediaAudioCanProduce canProduce;

Map<String, dynamic> toJson() { return {
  'can_produce': canProduce.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('can_produce'); } 
DeletePresetsPresetIdResponseDataPermissionsMediaAudio copyWith({DeletePresetsPresetIdResponseDataPermissionsMediaAudioCanProduce? canProduce}) { return DeletePresetsPresetIdResponseDataPermissionsMediaAudio(
  canProduce: canProduce ?? this.canProduce,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeletePresetsPresetIdResponseDataPermissionsMediaAudio &&
          canProduce == other.canProduce; } 
@override int get hashCode { return canProduce.hashCode; } 
@override String toString() { return 'DeletePresetsPresetIdResponseDataPermissionsMediaAudio(canProduce: $canProduce)'; } 
 }
