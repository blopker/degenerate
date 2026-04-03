// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CloudflarePipelinesR2TableCredentials {const CloudflarePipelinesR2TableCredentials({required this.accessKeyId, required this.secretAccessKey, });

factory CloudflarePipelinesR2TableCredentials.fromJson(Map<String, dynamic> json) { return CloudflarePipelinesR2TableCredentials(
  accessKeyId: json['access_key_id'] as String,
  secretAccessKey: json['secret_access_key'] as String,
); }

/// Cloudflare Account ID for the bucket
final String accessKeyId;

/// Cloudflare Account ID for the bucket
final String secretAccessKey;

Map<String, dynamic> toJson() { return {
  'access_key_id': accessKeyId,
  'secret_access_key': secretAccessKey,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('access_key_id') && json['access_key_id'] is String &&
      json.containsKey('secret_access_key') && json['secret_access_key'] is String; } 
CloudflarePipelinesR2TableCredentials copyWith({String? accessKeyId, String? secretAccessKey, }) { return CloudflarePipelinesR2TableCredentials(
  accessKeyId: accessKeyId ?? this.accessKeyId,
  secretAccessKey: secretAccessKey ?? this.secretAccessKey,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CloudflarePipelinesR2TableCredentials &&
          accessKeyId == other.accessKeyId &&
          secretAccessKey == other.secretAccessKey; } 
@override int get hashCode { return Object.hash(accessKeyId, secretAccessKey); } 
@override String toString() { return 'CloudflarePipelinesR2TableCredentials(accessKeyId: $accessKeyId, secretAccessKey: $secretAccessKey)'; } 
 }
