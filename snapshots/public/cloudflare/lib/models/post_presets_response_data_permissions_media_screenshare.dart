// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Can produce screen share video
@immutable final class PostPresetsResponseDataPermissionsMediaScreenshareCanProduce {const PostPresetsResponseDataPermissionsMediaScreenshareCanProduce._(this.value);

factory PostPresetsResponseDataPermissionsMediaScreenshareCanProduce.fromJson(String json) { return switch (json) {
  'ALLOWED' => allowed,
  'NOT_ALLOWED' => notAllowed,
  'CAN_REQUEST' => canRequest,
  _ => PostPresetsResponseDataPermissionsMediaScreenshareCanProduce._(json),
}; }

static const PostPresetsResponseDataPermissionsMediaScreenshareCanProduce allowed = PostPresetsResponseDataPermissionsMediaScreenshareCanProduce._('ALLOWED');

static const PostPresetsResponseDataPermissionsMediaScreenshareCanProduce notAllowed = PostPresetsResponseDataPermissionsMediaScreenshareCanProduce._('NOT_ALLOWED');

static const PostPresetsResponseDataPermissionsMediaScreenshareCanProduce canRequest = PostPresetsResponseDataPermissionsMediaScreenshareCanProduce._('CAN_REQUEST');

static const List<PostPresetsResponseDataPermissionsMediaScreenshareCanProduce> values = [allowed, notAllowed, canRequest];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPresetsResponseDataPermissionsMediaScreenshareCanProduce && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPresetsResponseDataPermissionsMediaScreenshareCanProduce($value)'; } 
 }
/// Screenshare permissions
@immutable final class PostPresetsResponseDataPermissionsMediaScreenshare {const PostPresetsResponseDataPermissionsMediaScreenshare({required this.canProduce});

factory PostPresetsResponseDataPermissionsMediaScreenshare.fromJson(Map<String, dynamic> json) { return PostPresetsResponseDataPermissionsMediaScreenshare(
  canProduce: PostPresetsResponseDataPermissionsMediaScreenshareCanProduce.fromJson(json['can_produce'] as String),
); }

/// Can produce screen share video
final PostPresetsResponseDataPermissionsMediaScreenshareCanProduce canProduce;

Map<String, dynamic> toJson() { return {
  'can_produce': canProduce.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('can_produce'); } 
PostPresetsResponseDataPermissionsMediaScreenshare copyWith({PostPresetsResponseDataPermissionsMediaScreenshareCanProduce? canProduce}) { return PostPresetsResponseDataPermissionsMediaScreenshare(
  canProduce: canProduce ?? this.canProduce,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPresetsResponseDataPermissionsMediaScreenshare &&
          canProduce == other.canProduce; } 
@override int get hashCode { return canProduce.hashCode; } 
@override String toString() { return 'PostPresetsResponseDataPermissionsMediaScreenshare(canProduce: $canProduce)'; } 
 }
