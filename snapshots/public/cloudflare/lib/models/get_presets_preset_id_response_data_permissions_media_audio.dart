// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Can produce audio
@immutable final class GetPresetsPresetIdResponseDataPermissionsMediaAudioCanProduce {const GetPresetsPresetIdResponseDataPermissionsMediaAudioCanProduce._(this.value);

factory GetPresetsPresetIdResponseDataPermissionsMediaAudioCanProduce.fromJson(String json) { return switch (json) {
  'ALLOWED' => allowed,
  'NOT_ALLOWED' => notAllowed,
  'CAN_REQUEST' => canRequest,
  _ => GetPresetsPresetIdResponseDataPermissionsMediaAudioCanProduce._(json),
}; }

static const GetPresetsPresetIdResponseDataPermissionsMediaAudioCanProduce allowed = GetPresetsPresetIdResponseDataPermissionsMediaAudioCanProduce._('ALLOWED');

static const GetPresetsPresetIdResponseDataPermissionsMediaAudioCanProduce notAllowed = GetPresetsPresetIdResponseDataPermissionsMediaAudioCanProduce._('NOT_ALLOWED');

static const GetPresetsPresetIdResponseDataPermissionsMediaAudioCanProduce canRequest = GetPresetsPresetIdResponseDataPermissionsMediaAudioCanProduce._('CAN_REQUEST');

static const List<GetPresetsPresetIdResponseDataPermissionsMediaAudioCanProduce> values = [allowed, notAllowed, canRequest];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetPresetsPresetIdResponseDataPermissionsMediaAudioCanProduce && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetPresetsPresetIdResponseDataPermissionsMediaAudioCanProduce($value)'; } 
 }
/// Audio permissions
@immutable final class GetPresetsPresetIdResponseDataPermissionsMediaAudio {const GetPresetsPresetIdResponseDataPermissionsMediaAudio({required this.canProduce});

factory GetPresetsPresetIdResponseDataPermissionsMediaAudio.fromJson(Map<String, dynamic> json) { return GetPresetsPresetIdResponseDataPermissionsMediaAudio(
  canProduce: GetPresetsPresetIdResponseDataPermissionsMediaAudioCanProduce.fromJson(json['can_produce'] as String),
); }

/// Can produce audio
final GetPresetsPresetIdResponseDataPermissionsMediaAudioCanProduce canProduce;

Map<String, dynamic> toJson() { return {
  'can_produce': canProduce.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('can_produce'); } 
GetPresetsPresetIdResponseDataPermissionsMediaAudio copyWith({GetPresetsPresetIdResponseDataPermissionsMediaAudioCanProduce? canProduce}) { return GetPresetsPresetIdResponseDataPermissionsMediaAudio(
  canProduce: canProduce ?? this.canProduce,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetPresetsPresetIdResponseDataPermissionsMediaAudio &&
          canProduce == other.canProduce; } 
@override int get hashCode { return canProduce.hashCode; } 
@override String toString() { return 'GetPresetsPresetIdResponseDataPermissionsMediaAudio(canProduce: $canProduce)'; } 
 }
