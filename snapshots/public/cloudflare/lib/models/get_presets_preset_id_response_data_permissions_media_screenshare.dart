// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Can produce screen share video
@immutable final class GetPresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce {const GetPresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce._(this.value);

factory GetPresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce.fromJson(String json) { return switch (json) {
  'ALLOWED' => allowed,
  'NOT_ALLOWED' => notAllowed,
  'CAN_REQUEST' => canRequest,
  _ => GetPresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce._(json),
}; }

static const GetPresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce allowed = GetPresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce._('ALLOWED');

static const GetPresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce notAllowed = GetPresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce._('NOT_ALLOWED');

static const GetPresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce canRequest = GetPresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce._('CAN_REQUEST');

static const List<GetPresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce> values = [allowed, notAllowed, canRequest];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetPresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetPresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce($value)'; } 
 }
/// Screenshare permissions
@immutable final class GetPresetsPresetIdResponseDataPermissionsMediaScreenshare {const GetPresetsPresetIdResponseDataPermissionsMediaScreenshare({required this.canProduce});

factory GetPresetsPresetIdResponseDataPermissionsMediaScreenshare.fromJson(Map<String, dynamic> json) { return GetPresetsPresetIdResponseDataPermissionsMediaScreenshare(
  canProduce: GetPresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce.fromJson(json['can_produce'] as String),
); }

/// Can produce screen share video
final GetPresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce canProduce;

Map<String, dynamic> toJson() { return {
  'can_produce': canProduce.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('can_produce'); } 
GetPresetsPresetIdResponseDataPermissionsMediaScreenshare copyWith({GetPresetsPresetIdResponseDataPermissionsMediaScreenshareCanProduce? canProduce}) { return GetPresetsPresetIdResponseDataPermissionsMediaScreenshare(
  canProduce: canProduce ?? this.canProduce,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetPresetsPresetIdResponseDataPermissionsMediaScreenshare &&
          canProduce == other.canProduce; } 
@override int get hashCode { return canProduce.hashCode; } 
@override String toString() { return 'GetPresetsPresetIdResponseDataPermissionsMediaScreenshare(canProduce: $canProduce)'; } 
 }
