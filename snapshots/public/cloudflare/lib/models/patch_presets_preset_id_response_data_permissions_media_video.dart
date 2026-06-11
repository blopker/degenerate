// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Can produce video
@immutable final class PatchPresetsPresetIdResponseDataPermissionsMediaVideoCanProduce {const PatchPresetsPresetIdResponseDataPermissionsMediaVideoCanProduce._(this.value);

factory PatchPresetsPresetIdResponseDataPermissionsMediaVideoCanProduce.fromJson(String json) { return switch (json) {
  'ALLOWED' => allowed,
  'NOT_ALLOWED' => notAllowed,
  'CAN_REQUEST' => canRequest,
  _ => PatchPresetsPresetIdResponseDataPermissionsMediaVideoCanProduce._(json),
}; }

static const PatchPresetsPresetIdResponseDataPermissionsMediaVideoCanProduce allowed = PatchPresetsPresetIdResponseDataPermissionsMediaVideoCanProduce._('ALLOWED');

static const PatchPresetsPresetIdResponseDataPermissionsMediaVideoCanProduce notAllowed = PatchPresetsPresetIdResponseDataPermissionsMediaVideoCanProduce._('NOT_ALLOWED');

static const PatchPresetsPresetIdResponseDataPermissionsMediaVideoCanProduce canRequest = PatchPresetsPresetIdResponseDataPermissionsMediaVideoCanProduce._('CAN_REQUEST');

static const List<PatchPresetsPresetIdResponseDataPermissionsMediaVideoCanProduce> values = [allowed, notAllowed, canRequest];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PatchPresetsPresetIdResponseDataPermissionsMediaVideoCanProduce && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PatchPresetsPresetIdResponseDataPermissionsMediaVideoCanProduce($value)'; } 
 }
/// Video permissions
@immutable final class PatchPresetsPresetIdResponseDataPermissionsMediaVideo {const PatchPresetsPresetIdResponseDataPermissionsMediaVideo({required this.canProduce});

factory PatchPresetsPresetIdResponseDataPermissionsMediaVideo.fromJson(Map<String, dynamic> json) { return PatchPresetsPresetIdResponseDataPermissionsMediaVideo(
  canProduce: PatchPresetsPresetIdResponseDataPermissionsMediaVideoCanProduce.fromJson(json['can_produce'] as String),
); }

/// Can produce video
final PatchPresetsPresetIdResponseDataPermissionsMediaVideoCanProduce canProduce;

Map<String, dynamic> toJson() { return {
  'can_produce': canProduce.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('can_produce'); } 
PatchPresetsPresetIdResponseDataPermissionsMediaVideo copyWith({PatchPresetsPresetIdResponseDataPermissionsMediaVideoCanProduce? canProduce}) { return PatchPresetsPresetIdResponseDataPermissionsMediaVideo(
  canProduce: canProduce ?? this.canProduce,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PatchPresetsPresetIdResponseDataPermissionsMediaVideo &&
          canProduce == other.canProduce; } 
@override int get hashCode { return canProduce.hashCode; } 
@override String toString() { return 'PatchPresetsPresetIdResponseDataPermissionsMediaVideo(canProduce: $canProduce)'; } 
 }
