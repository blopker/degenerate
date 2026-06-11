// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Can produce screen share video
@immutable final class PatchPresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce {const PatchPresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce._(this.value);

factory PatchPresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce.fromJson(String json) { return switch (json) {
  'ALLOWED' => allowed,
  'NOT_ALLOWED' => notAllowed,
  'CAN_REQUEST' => canRequest,
  _ => PatchPresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce._(json),
}; }

static const PatchPresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce allowed = PatchPresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce._('ALLOWED');

static const PatchPresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce notAllowed = PatchPresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce._('NOT_ALLOWED');

static const PatchPresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce canRequest = PatchPresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce._('CAN_REQUEST');

static const List<PatchPresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce> values = [allowed, notAllowed, canRequest];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PatchPresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PatchPresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce($value)'; } 
 }
/// Screenshare permissions
@immutable final class PatchPresetsPresetIdResponseDataPermissionsMediaScreenshare {const PatchPresetsPresetIdResponseDataPermissionsMediaScreenshare({required this.canProduce});

factory PatchPresetsPresetIdResponseDataPermissionsMediaScreenshare.fromJson(Map<String, dynamic> json) { return PatchPresetsPresetIdResponseDataPermissionsMediaScreenshare(
  canProduce: PatchPresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce.fromJson(json['can_produce'] as String),
); }

/// Can produce screen share video
final PatchPresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce canProduce;

Map<String, dynamic> toJson() { return {
  'can_produce': canProduce.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('can_produce'); } 
PatchPresetsPresetIdResponseDataPermissionsMediaScreenshare copyWith({PatchPresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce? canProduce}) { return PatchPresetsPresetIdResponseDataPermissionsMediaScreenshare(
  canProduce: canProduce ?? this.canProduce,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PatchPresetsPresetIdResponseDataPermissionsMediaScreenshare &&
          canProduce == other.canProduce; } 
@override int get hashCode { return canProduce.hashCode; } 
@override String toString() { return 'PatchPresetsPresetIdResponseDataPermissionsMediaScreenshare(canProduce: $canProduce)'; } 
 }
