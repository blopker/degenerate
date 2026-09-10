// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Authentication method used for "sftp" type storage medium
/// 
@immutable final class RealtimekitStorageConfigResponseAuthMethod {const RealtimekitStorageConfigResponseAuthMethod._(this.value);

factory RealtimekitStorageConfigResponseAuthMethod.fromJson(String json) {return switch (json) {
  'KEY' => key,
  'PASSWORD' => password,
  _ => RealtimekitStorageConfigResponseAuthMethod._(json),
};}

static const RealtimekitStorageConfigResponseAuthMethod key = RealtimekitStorageConfigResponseAuthMethod._('KEY');

static const RealtimekitStorageConfigResponseAuthMethod password = RealtimekitStorageConfigResponseAuthMethod._('PASSWORD');

static const List<RealtimekitStorageConfigResponseAuthMethod> values = [key, password];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is RealtimekitStorageConfigResponseAuthMethod && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'RealtimekitStorageConfigResponseAuthMethod($value)';}
}
/// Type of storage media.
@immutable final class RealtimekitStorageConfigResponseType {const RealtimekitStorageConfigResponseType._(this.value);

factory RealtimekitStorageConfigResponseType.fromJson(String json) {return switch (json) {
  'aws' => aws,
  'azure' => azure,
  'digitalocean' => digitalocean,
  'gcs' => gcs,
  'sftp' => sftp,
  _ => RealtimekitStorageConfigResponseType._(json),
};}

static const RealtimekitStorageConfigResponseType aws = RealtimekitStorageConfigResponseType._('aws');

static const RealtimekitStorageConfigResponseType azure = RealtimekitStorageConfigResponseType._('azure');

static const RealtimekitStorageConfigResponseType digitalocean = RealtimekitStorageConfigResponseType._('digitalocean');

static const RealtimekitStorageConfigResponseType gcs = RealtimekitStorageConfigResponseType._('gcs');

static const RealtimekitStorageConfigResponseType sftp = RealtimekitStorageConfigResponseType._('sftp');

static const List<RealtimekitStorageConfigResponseType> values = [aws, azure, digitalocean, gcs, sftp];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is RealtimekitStorageConfigResponseType && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'RealtimekitStorageConfigResponseType($value)';}
}
@immutable final class RealtimekitStorageConfigResponse {const RealtimekitStorageConfigResponse({required this.type, this.authMethod, this.bucket, this.host, this.password, this.path, this.port, this.privateKey, this.region, this.secret, this.username, });

factory RealtimekitStorageConfigResponse.fromJson(Map<String, dynamic> json) {return RealtimekitStorageConfigResponse(
  authMethod: json['auth_method'] != null ? RealtimekitStorageConfigResponseAuthMethod.fromJson(json['auth_method'] as String) : null,
  bucket: json['bucket'] as String?,
  host: json['host'] as String?,
  password: json['password'] as String?,
  path: json['path'] as String?,
  port: json['port'] != null ? (json['port'] as num).toDouble() : null,
  privateKey: json['private_key'] as String?,
  region: json['region'] as String?,
  secret: json['secret'] as String?,
  type: RealtimekitStorageConfigResponseType.fromJson(json['type'] as String),
  username: json['username'] as String?,
);}

/// Authentication method used for "sftp" type storage medium
/// 
final RealtimekitStorageConfigResponseAuthMethod? authMethod;

/// Name of the storage medium's bucket.
final String? bucket;

/// SSH destination server host for SFTP type storage medium
final String? host;

/// SSH destination server password for SFTP type storage medium when auth_method is "PASSWORD". If auth_method is "KEY", this specifies the password for the ssh private key.
final String? password;

/// Path relative to the bucket root at which the recording will be placed.
final String? path;

/// SSH destination server port for SFTP type storage medium
final double? port;

/// Private key used to login to destination SSH server for SFTP type storage medium, when auth_method used is "KEY"
final String? privateKey;

/// Region of the storage medium.
final String? region;

/// Secret key of the storage medium. Similar to `access_key`, it is only writeable by clients, not readable.
final String? secret;

/// Type of storage media.
final RealtimekitStorageConfigResponseType type;

/// SSH destination server username for SFTP type storage medium
final String? username;

Map<String, dynamic> toJson() {return {
  if (authMethod != null) 'auth_method': authMethod?.toJson(),
  'bucket': ?bucket,
  'host': ?host,
  'password': ?password,
  'path': ?path,
  'port': ?port,
  'private_key': ?privateKey,
  'region': ?region,
  'secret': ?secret,
  'type': type.toJson(),
  'username': ?username,
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('type');}
RealtimekitStorageConfigResponse copyWith({RealtimekitStorageConfigResponseAuthMethod? Function()? authMethod, String? Function()? bucket, String? Function()? host, String? Function()? password, String? Function()? path, double? Function()? port, String? Function()? privateKey, String? Function()? region, String? Function()? secret, RealtimekitStorageConfigResponseType? type, String? Function()? username, }) {return RealtimekitStorageConfigResponse(
  authMethod: authMethod != null ? authMethod() : this.authMethod,
  bucket: bucket != null ? bucket() : this.bucket,
  host: host != null ? host() : this.host,
  password: password != null ? password() : this.password,
  path: path != null ? path() : this.path,
  port: port != null ? port() : this.port,
  privateKey: privateKey != null ? privateKey() : this.privateKey,
  region: region != null ? region() : this.region,
  secret: secret != null ? secret() : this.secret,
  type: type ?? this.type,
  username: username != null ? username() : this.username,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is RealtimekitStorageConfigResponse &&
          authMethod == other.authMethod &&
          bucket == other.bucket &&
          host == other.host &&
          password == other.password &&
          path == other.path &&
          port == other.port &&
          privateKey == other.privateKey &&
          region == other.region &&
          secret == other.secret &&
          type == other.type &&
          username == other.username;}
@override int get hashCode {return Object.hash(authMethod, bucket, host, password, path, port, privateKey, region, secret, type, username);}
@override String toString() {return 'RealtimekitStorageConfigResponse(authMethod: $authMethod, bucket: $bucket, host: $host, password: $password, path: $path, port: $port, privateKey: $privateKey, region: $region, secret: $secret, type: $type, username: $username)';}
}
