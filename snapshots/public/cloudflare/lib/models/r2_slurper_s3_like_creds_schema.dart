// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class R2SlurperS3LikeCredsSchema {const R2SlurperS3LikeCredsSchema({required this.accessKeyId, required this.secretAccessKey, });

factory R2SlurperS3LikeCredsSchema.fromJson(Map<String, dynamic> json) { return R2SlurperS3LikeCredsSchema(
  accessKeyId: json['accessKeyId'] as String,
  secretAccessKey: json['secretAccessKey'] as String,
); }

final String accessKeyId;

final String secretAccessKey;

Map<String, dynamic> toJson() { return {
  'accessKeyId': accessKeyId,
  'secretAccessKey': secretAccessKey,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('accessKeyId') && json['accessKeyId'] is String &&
      json.containsKey('secretAccessKey') && json['secretAccessKey'] is String; } 
R2SlurperS3LikeCredsSchema copyWith({String? accessKeyId, String? secretAccessKey, }) { return R2SlurperS3LikeCredsSchema(
  accessKeyId: accessKeyId ?? this.accessKeyId,
  secretAccessKey: secretAccessKey ?? this.secretAccessKey,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2SlurperS3LikeCredsSchema &&
          accessKeyId == other.accessKeyId &&
          secretAccessKey == other.secretAccessKey; } 
@override int get hashCode { return Object.hash(accessKeyId, secretAccessKey); } 
@override String toString() { return 'R2SlurperS3LikeCredsSchema(accessKeyId: $accessKeyId, secretAccessKey: $secretAccessKey)'; } 
 }
