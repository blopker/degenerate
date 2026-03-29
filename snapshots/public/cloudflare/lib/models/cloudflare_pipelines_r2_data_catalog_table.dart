// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cloudflare_pipelines_r2_data_catalog_table_rolling_policy.dart';/// R2 Data Catalog Sink
final class CloudflarePipelinesR2DataCatalogTable {const CloudflarePipelinesR2DataCatalogTable({required this.accountId, required this.bucket, this.namespace, this.rollingPolicy, required this.tableName, required this.token, });

factory CloudflarePipelinesR2DataCatalogTable.fromJson(Map<String, dynamic> json) { return CloudflarePipelinesR2DataCatalogTable(
  accountId: Uri.parse(json['account_id'] as String),
  bucket: json['bucket'] as String,
  namespace: json['namespace'] as String?,
  rollingPolicy: json['rolling_policy'] != null ? CloudflarePipelinesR2DataCatalogTableRollingPolicy.fromJson(json['rolling_policy'] as Map<String, dynamic>) : null,
  tableName: json['table_name'] as String,
  token: json['token'] as String,
); }

/// Cloudflare Account ID
final Uri accountId;

/// The R2 Bucket that hosts this catalog
final String bucket;

/// Table namespace
final String? namespace;

/// Rolling policy for file sinks (when & why to close a file and open a new one).
final CloudflarePipelinesR2DataCatalogTableRollingPolicy? rollingPolicy;

/// Table name
final String tableName;

/// Authentication token
final String token;

Map<String, dynamic> toJson() { return {
  'account_id': accountId.toString(),
  'bucket': bucket,
  'namespace': ?namespace,
  if (rollingPolicy != null) 'rolling_policy': rollingPolicy?.toJson(),
  'table_name': tableName,
  'token': token,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('account_id') && json['account_id'] is String &&
      json.containsKey('bucket') && json['bucket'] is String &&
      json.containsKey('table_name') && json['table_name'] is String &&
      json.containsKey('token') && json['token'] is String; } 
CloudflarePipelinesR2DataCatalogTable copyWith({Uri? accountId, String? bucket, String Function()? namespace, CloudflarePipelinesR2DataCatalogTableRollingPolicy Function()? rollingPolicy, String? tableName, String? token, }) { return CloudflarePipelinesR2DataCatalogTable(
  accountId: accountId ?? this.accountId,
  bucket: bucket ?? this.bucket,
  namespace: namespace != null ? namespace() : this.namespace,
  rollingPolicy: rollingPolicy != null ? rollingPolicy() : this.rollingPolicy,
  tableName: tableName ?? this.tableName,
  token: token ?? this.token,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CloudflarePipelinesR2DataCatalogTable &&
          accountId == other.accountId &&
          bucket == other.bucket &&
          namespace == other.namespace &&
          rollingPolicy == other.rollingPolicy &&
          tableName == other.tableName &&
          token == other.token; } 
@override int get hashCode { return Object.hash(accountId, bucket, namespace, rollingPolicy, tableName, token); } 
@override String toString() { return 'CloudflarePipelinesR2DataCatalogTable(accountId: $accountId, bucket: $bucket, namespace: $namespace, rollingPolicy: $rollingPolicy, tableName: $tableName, token: $token)'; } 
 }
