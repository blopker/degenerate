// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'accounts_by_account_id_pipelines_by_pipeline_name_deprecated_request_destination_batch.dart';import 'accounts_by_account_id_pipelines_by_pipeline_name_deprecated_request_destination_compression.dart';import 'accounts_by_account_id_pipelines_by_pipeline_name_deprecated_request_destination_credentials.dart';import 'accounts_by_account_id_pipelines_by_pipeline_name_deprecated_request_destination_path.dart';/// Specifies the format of data to deliver.
@immutable final class AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationFormat {const AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationFormat._(this.value);

factory AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationFormat.fromJson(String json) { return switch (json) {
  'json' => $json,
  _ => AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationFormat._(json),
}; }

static const AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationFormat $json = AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationFormat._('json');

static const List<AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationFormat> values = [$json];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationFormat($value)'; } 
 }
/// Specifies the type of destination.
@immutable final class AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationType {const AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationType._(this.value);

factory AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationType.fromJson(String json) { return switch (json) {
  'r2' => r2,
  _ => AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationType._(json),
}; }

static const AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationType r2 = AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationType._('r2');

static const List<AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationType> values = [r2];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationType($value)'; } 
 }
@immutable final class AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestination {const AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestination({required this.batch, required this.compression, required this.format, required this.path, required this.type, this.credentials, });

factory AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestination.fromJson(Map<String, dynamic> json) { return AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestination(
  batch: AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationBatch.fromJson(json['batch'] as Map<String, dynamic>),
  compression: AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationCompression.fromJson(json['compression'] as Map<String, dynamic>),
  credentials: json['credentials'] != null ? AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationCredentials.fromJson(json['credentials'] as Map<String, dynamic>) : null,
  format: AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationFormat.fromJson(json['format'] as String),
  path: AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationPath.fromJson(json['path'] as Map<String, dynamic>),
  type: AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationType.fromJson(json['type'] as String),
); }

final AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationBatch batch;

final AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationCompression compression;

final AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationCredentials? credentials;

/// Specifies the format of data to deliver.
final AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationFormat format;

final AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationPath path;

/// Specifies the type of destination.
final AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationType type;

Map<String, dynamic> toJson() { return {
  'batch': batch.toJson(),
  'compression': compression.toJson(),
  if (credentials != null) 'credentials': credentials?.toJson(),
  'format': format.toJson(),
  'path': path.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('batch') &&
      json.containsKey('compression') &&
      json.containsKey('format') &&
      json.containsKey('path') &&
      json.containsKey('type'); } 
AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestination copyWith({AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationBatch? batch, AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationCompression? compression, AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationCredentials Function()? credentials, AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationFormat? format, AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationPath? path, AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationType? type, }) { return AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestination(
  batch: batch ?? this.batch,
  compression: compression ?? this.compression,
  credentials: credentials != null ? credentials() : this.credentials,
  format: format ?? this.format,
  path: path ?? this.path,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestination &&
          batch == other.batch &&
          compression == other.compression &&
          credentials == other.credentials &&
          format == other.format &&
          path == other.path &&
          type == other.type; } 
@override int get hashCode { return Object.hash(batch, compression, credentials, format, path, type); } 
@override String toString() { return 'AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestination(batch: $batch, compression: $compression, credentials: $credentials, format: $format, path: $path, type: $type)'; } 
 }
