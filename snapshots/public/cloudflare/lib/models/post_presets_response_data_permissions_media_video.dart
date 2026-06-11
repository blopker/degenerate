// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Can produce video
@immutable final class PostPresetsResponseDataPermissionsMediaVideoCanProduce {const PostPresetsResponseDataPermissionsMediaVideoCanProduce._(this.value);

factory PostPresetsResponseDataPermissionsMediaVideoCanProduce.fromJson(String json) { return switch (json) {
  'ALLOWED' => allowed,
  'NOT_ALLOWED' => notAllowed,
  'CAN_REQUEST' => canRequest,
  _ => PostPresetsResponseDataPermissionsMediaVideoCanProduce._(json),
}; }

static const PostPresetsResponseDataPermissionsMediaVideoCanProduce allowed = PostPresetsResponseDataPermissionsMediaVideoCanProduce._('ALLOWED');

static const PostPresetsResponseDataPermissionsMediaVideoCanProduce notAllowed = PostPresetsResponseDataPermissionsMediaVideoCanProduce._('NOT_ALLOWED');

static const PostPresetsResponseDataPermissionsMediaVideoCanProduce canRequest = PostPresetsResponseDataPermissionsMediaVideoCanProduce._('CAN_REQUEST');

static const List<PostPresetsResponseDataPermissionsMediaVideoCanProduce> values = [allowed, notAllowed, canRequest];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPresetsResponseDataPermissionsMediaVideoCanProduce && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPresetsResponseDataPermissionsMediaVideoCanProduce($value)'; } 
 }
/// Video permissions
@immutable final class PostPresetsResponseDataPermissionsMediaVideo {const PostPresetsResponseDataPermissionsMediaVideo({required this.canProduce});

factory PostPresetsResponseDataPermissionsMediaVideo.fromJson(Map<String, dynamic> json) { return PostPresetsResponseDataPermissionsMediaVideo(
  canProduce: PostPresetsResponseDataPermissionsMediaVideoCanProduce.fromJson(json['can_produce'] as String),
); }

/// Can produce video
final PostPresetsResponseDataPermissionsMediaVideoCanProduce canProduce;

Map<String, dynamic> toJson() { return {
  'can_produce': canProduce.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('can_produce'); } 
PostPresetsResponseDataPermissionsMediaVideo copyWith({PostPresetsResponseDataPermissionsMediaVideoCanProduce? canProduce}) { return PostPresetsResponseDataPermissionsMediaVideo(
  canProduce: canProduce ?? this.canProduce,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPresetsResponseDataPermissionsMediaVideo &&
          canProduce == other.canProduce; } 
@override int get hashCode { return canProduce.hashCode; } 
@override String toString() { return 'PostPresetsResponseDataPermissionsMediaVideo(canProduce: $canProduce)'; } 
 }
