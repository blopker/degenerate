// GENERATED CODE - DO NOT MODIFY BY HAND

final class CreateServersRequestAuthType {const CreateServersRequestAuthType._(this.value);

factory CreateServersRequestAuthType.fromJson(String json) { return switch (json) {
  'oauth' => oauth,
  'bearer' => bearer,
  'unauthenticated' => unauthenticated,
  _ => CreateServersRequestAuthType._(json),
}; }

static const CreateServersRequestAuthType oauth = CreateServersRequestAuthType._('oauth');

static const CreateServersRequestAuthType bearer = CreateServersRequestAuthType._('bearer');

static const CreateServersRequestAuthType unauthenticated = CreateServersRequestAuthType._('unauthenticated');

static const List<CreateServersRequestAuthType> values = [oauth, bearer, unauthenticated];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateServersRequestAuthType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateServersRequestAuthType($value)'; } 
 }
final class CreateServersRequest {const CreateServersRequest({this.authCredentials, required this.authType, this.description, required this.hostname, required this.id, required this.name, });

factory CreateServersRequest.fromJson(Map<String, dynamic> json) { return CreateServersRequest(
  authCredentials: json['auth_credentials'] as String?,
  authType: CreateServersRequestAuthType.fromJson(json['auth_type'] as String),
  description: json['description'] as String?,
  hostname: Uri.parse(json['hostname'] as String),
  id: json['id'] as String,
  name: json['name'] as String,
); }

final String? authCredentials;

final CreateServersRequestAuthType authType;

final String? description;

final Uri hostname;

/// server id
final String id;

final String name;

Map<String, dynamic> toJson() { return {
  'auth_credentials': ?authCredentials,
  'auth_type': authType.toJson(),
  'description': ?description,
  'hostname': hostname.toString(),
  'id': id,
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('auth_type') &&
      json.containsKey('hostname') && json['hostname'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('name') && json['name'] is String; } 
CreateServersRequest copyWith({String Function()? authCredentials, CreateServersRequestAuthType? authType, String? Function()? description, Uri? hostname, String? id, String? name, }) { return CreateServersRequest(
  authCredentials: authCredentials != null ? authCredentials() : this.authCredentials,
  authType: authType ?? this.authType,
  description: description != null ? description() : this.description,
  hostname: hostname ?? this.hostname,
  id: id ?? this.id,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateServersRequest &&
          authCredentials == other.authCredentials &&
          authType == other.authType &&
          description == other.description &&
          hostname == other.hostname &&
          id == other.id &&
          name == other.name; } 
@override int get hashCode { return Object.hash(authCredentials, authType, description, hostname, id, name); } 
@override String toString() { return 'CreateServersRequest(authCredentials: $authCredentials, authType: $authType, description: $description, hostname: $hostname, id: $id, name: $name)'; } 
 }
