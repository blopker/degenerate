// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Can produce audio
@immutable final class PatchPresetsPresetIdResponseDataPermissionsMediaAudioCanProduce {const PatchPresetsPresetIdResponseDataPermissionsMediaAudioCanProduce._(this.value);

factory PatchPresetsPresetIdResponseDataPermissionsMediaAudioCanProduce.fromJson(String json) { return switch (json) {
  'ALLOWED' => allowed,
  'NOT_ALLOWED' => notAllowed,
  'CAN_REQUEST' => canRequest,
  _ => PatchPresetsPresetIdResponseDataPermissionsMediaAudioCanProduce._(json),
}; }

static const PatchPresetsPresetIdResponseDataPermissionsMediaAudioCanProduce allowed = PatchPresetsPresetIdResponseDataPermissionsMediaAudioCanProduce._('ALLOWED');

static const PatchPresetsPresetIdResponseDataPermissionsMediaAudioCanProduce notAllowed = PatchPresetsPresetIdResponseDataPermissionsMediaAudioCanProduce._('NOT_ALLOWED');

static const PatchPresetsPresetIdResponseDataPermissionsMediaAudioCanProduce canRequest = PatchPresetsPresetIdResponseDataPermissionsMediaAudioCanProduce._('CAN_REQUEST');

static const List<PatchPresetsPresetIdResponseDataPermissionsMediaAudioCanProduce> values = [allowed, notAllowed, canRequest];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PatchPresetsPresetIdResponseDataPermissionsMediaAudioCanProduce && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PatchPresetsPresetIdResponseDataPermissionsMediaAudioCanProduce($value)'; } 
 }
/// Audio permissions
@immutable final class PatchPresetsPresetIdResponseDataPermissionsMediaAudio {const PatchPresetsPresetIdResponseDataPermissionsMediaAudio({required this.canProduce});

factory PatchPresetsPresetIdResponseDataPermissionsMediaAudio.fromJson(Map<String, dynamic> json) { return PatchPresetsPresetIdResponseDataPermissionsMediaAudio(
  canProduce: PatchPresetsPresetIdResponseDataPermissionsMediaAudioCanProduce.fromJson(json['can_produce'] as String),
); }

/// Can produce audio
final PatchPresetsPresetIdResponseDataPermissionsMediaAudioCanProduce canProduce;

Map<String, dynamic> toJson() { return {
  'can_produce': canProduce.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('can_produce'); } 
PatchPresetsPresetIdResponseDataPermissionsMediaAudio copyWith({PatchPresetsPresetIdResponseDataPermissionsMediaAudioCanProduce? canProduce}) { return PatchPresetsPresetIdResponseDataPermissionsMediaAudio(
  canProduce: canProduce ?? this.canProduce,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PatchPresetsPresetIdResponseDataPermissionsMediaAudio &&
          canProduce == other.canProduce; } 
@override int get hashCode { return canProduce.hashCode; } 
@override String toString() { return 'PatchPresetsPresetIdResponseDataPermissionsMediaAudio(canProduce: $canProduce)'; } 
 }
