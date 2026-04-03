// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Can produce audio
@immutable final class RealtimekitPresetPermissionsMediaAudioCanProduce {const RealtimekitPresetPermissionsMediaAudioCanProduce._(this.value);

factory RealtimekitPresetPermissionsMediaAudioCanProduce.fromJson(String json) { return switch (json) {
  'ALLOWED' => allowed,
  'NOT_ALLOWED' => notAllowed,
  'CAN_REQUEST' => canRequest,
  _ => RealtimekitPresetPermissionsMediaAudioCanProduce._(json),
}; }

static const RealtimekitPresetPermissionsMediaAudioCanProduce allowed = RealtimekitPresetPermissionsMediaAudioCanProduce._('ALLOWED');

static const RealtimekitPresetPermissionsMediaAudioCanProduce notAllowed = RealtimekitPresetPermissionsMediaAudioCanProduce._('NOT_ALLOWED');

static const RealtimekitPresetPermissionsMediaAudioCanProduce canRequest = RealtimekitPresetPermissionsMediaAudioCanProduce._('CAN_REQUEST');

static const List<RealtimekitPresetPermissionsMediaAudioCanProduce> values = [allowed, notAllowed, canRequest];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimekitPresetPermissionsMediaAudioCanProduce && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimekitPresetPermissionsMediaAudioCanProduce($value)'; } 
 }
/// Audio permissions
@immutable final class RealtimekitPresetPermissionsMediaAudio {const RealtimekitPresetPermissionsMediaAudio({required this.canProduce});

factory RealtimekitPresetPermissionsMediaAudio.fromJson(Map<String, dynamic> json) { return RealtimekitPresetPermissionsMediaAudio(
  canProduce: RealtimekitPresetPermissionsMediaAudioCanProduce.fromJson(json['can_produce'] as String),
); }

/// Can produce audio
final RealtimekitPresetPermissionsMediaAudioCanProduce canProduce;

Map<String, dynamic> toJson() { return {
  'can_produce': canProduce.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('can_produce'); } 
RealtimekitPresetPermissionsMediaAudio copyWith({RealtimekitPresetPermissionsMediaAudioCanProduce? canProduce}) { return RealtimekitPresetPermissionsMediaAudio(
  canProduce: canProduce ?? this.canProduce,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitPresetPermissionsMediaAudio &&
          canProduce == other.canProduce; } 
@override int get hashCode { return canProduce.hashCode; } 
@override String toString() { return 'RealtimekitPresetPermissionsMediaAudio(canProduce: $canProduce)'; } 
 }
