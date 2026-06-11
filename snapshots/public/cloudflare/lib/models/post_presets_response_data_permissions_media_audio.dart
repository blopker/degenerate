// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Can produce audio
@immutable final class PostPresetsResponseDataPermissionsMediaAudioCanProduce {const PostPresetsResponseDataPermissionsMediaAudioCanProduce._(this.value);

factory PostPresetsResponseDataPermissionsMediaAudioCanProduce.fromJson(String json) { return switch (json) {
  'ALLOWED' => allowed,
  'NOT_ALLOWED' => notAllowed,
  'CAN_REQUEST' => canRequest,
  _ => PostPresetsResponseDataPermissionsMediaAudioCanProduce._(json),
}; }

static const PostPresetsResponseDataPermissionsMediaAudioCanProduce allowed = PostPresetsResponseDataPermissionsMediaAudioCanProduce._('ALLOWED');

static const PostPresetsResponseDataPermissionsMediaAudioCanProduce notAllowed = PostPresetsResponseDataPermissionsMediaAudioCanProduce._('NOT_ALLOWED');

static const PostPresetsResponseDataPermissionsMediaAudioCanProduce canRequest = PostPresetsResponseDataPermissionsMediaAudioCanProduce._('CAN_REQUEST');

static const List<PostPresetsResponseDataPermissionsMediaAudioCanProduce> values = [allowed, notAllowed, canRequest];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPresetsResponseDataPermissionsMediaAudioCanProduce && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPresetsResponseDataPermissionsMediaAudioCanProduce($value)'; } 
 }
/// Audio permissions
@immutable final class PostPresetsResponseDataPermissionsMediaAudio {const PostPresetsResponseDataPermissionsMediaAudio({required this.canProduce});

factory PostPresetsResponseDataPermissionsMediaAudio.fromJson(Map<String, dynamic> json) { return PostPresetsResponseDataPermissionsMediaAudio(
  canProduce: PostPresetsResponseDataPermissionsMediaAudioCanProduce.fromJson(json['can_produce'] as String),
); }

/// Can produce audio
final PostPresetsResponseDataPermissionsMediaAudioCanProduce canProduce;

Map<String, dynamic> toJson() { return {
  'can_produce': canProduce.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('can_produce'); } 
PostPresetsResponseDataPermissionsMediaAudio copyWith({PostPresetsResponseDataPermissionsMediaAudioCanProduce? canProduce}) { return PostPresetsResponseDataPermissionsMediaAudio(
  canProduce: canProduce ?? this.canProduce,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPresetsResponseDataPermissionsMediaAudio &&
          canProduce == other.canProduce; } 
@override int get hashCode { return canProduce.hashCode; } 
@override String toString() { return 'PostPresetsResponseDataPermissionsMediaAudio(canProduce: $canProduce)'; } 
 }
