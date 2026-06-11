// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Can produce video
@immutable final class GetPresetsPresetIdResponseDataPermissionsMediaVideoCanProduce {const GetPresetsPresetIdResponseDataPermissionsMediaVideoCanProduce._(this.value);

factory GetPresetsPresetIdResponseDataPermissionsMediaVideoCanProduce.fromJson(String json) { return switch (json) {
  'ALLOWED' => allowed,
  'NOT_ALLOWED' => notAllowed,
  'CAN_REQUEST' => canRequest,
  _ => GetPresetsPresetIdResponseDataPermissionsMediaVideoCanProduce._(json),
}; }

static const GetPresetsPresetIdResponseDataPermissionsMediaVideoCanProduce allowed = GetPresetsPresetIdResponseDataPermissionsMediaVideoCanProduce._('ALLOWED');

static const GetPresetsPresetIdResponseDataPermissionsMediaVideoCanProduce notAllowed = GetPresetsPresetIdResponseDataPermissionsMediaVideoCanProduce._('NOT_ALLOWED');

static const GetPresetsPresetIdResponseDataPermissionsMediaVideoCanProduce canRequest = GetPresetsPresetIdResponseDataPermissionsMediaVideoCanProduce._('CAN_REQUEST');

static const List<GetPresetsPresetIdResponseDataPermissionsMediaVideoCanProduce> values = [allowed, notAllowed, canRequest];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetPresetsPresetIdResponseDataPermissionsMediaVideoCanProduce && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetPresetsPresetIdResponseDataPermissionsMediaVideoCanProduce($value)'; } 
 }
/// Video permissions
@immutable final class GetPresetsPresetIdResponseDataPermissionsMediaVideo {const GetPresetsPresetIdResponseDataPermissionsMediaVideo({required this.canProduce});

factory GetPresetsPresetIdResponseDataPermissionsMediaVideo.fromJson(Map<String, dynamic> json) { return GetPresetsPresetIdResponseDataPermissionsMediaVideo(
  canProduce: GetPresetsPresetIdResponseDataPermissionsMediaVideoCanProduce.fromJson(json['can_produce'] as String),
); }

/// Can produce video
final GetPresetsPresetIdResponseDataPermissionsMediaVideoCanProduce canProduce;

Map<String, dynamic> toJson() { return {
  'can_produce': canProduce.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('can_produce'); } 
GetPresetsPresetIdResponseDataPermissionsMediaVideo copyWith({GetPresetsPresetIdResponseDataPermissionsMediaVideoCanProduce? canProduce}) { return GetPresetsPresetIdResponseDataPermissionsMediaVideo(
  canProduce: canProduce ?? this.canProduce,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetPresetsPresetIdResponseDataPermissionsMediaVideo &&
          canProduce == other.canProduce; } 
@override int get hashCode { return canProduce.hashCode; } 
@override String toString() { return 'GetPresetsPresetIdResponseDataPermissionsMediaVideo(canProduce: $canProduce)'; } 
 }
