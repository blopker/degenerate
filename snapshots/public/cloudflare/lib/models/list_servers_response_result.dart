// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class ListServersResponseResultAuthType {const ListServersResponseResultAuthType._(this.value);

factory ListServersResponseResultAuthType.fromJson(String json) { return switch (json) {
  'oauth' => oauth,
  'bearer' => bearer,
  'unauthenticated' => unauthenticated,
  _ => ListServersResponseResultAuthType._(json),
}; }

static const ListServersResponseResultAuthType oauth = ListServersResponseResultAuthType._('oauth');

static const ListServersResponseResultAuthType bearer = ListServersResponseResultAuthType._('bearer');

static const ListServersResponseResultAuthType unauthenticated = ListServersResponseResultAuthType._('unauthenticated');

static const List<ListServersResponseResultAuthType> values = [oauth, bearer, unauthenticated];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ListServersResponseResultAuthType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ListServersResponseResultAuthType($value)'; } 
 }
final class ListServersResponseResult {const ListServersResponseResult({required this.authType, this.createdAt, this.createdBy, this.description, this.error, required this.hostname, required this.id, this.lastSuccessfulSync, this.lastSynced, this.modifiedAt, this.modifiedBy, required this.name, required this.prompts, this.status = 'waiting', required this.tools, });

factory ListServersResponseResult.fromJson(Map<String, dynamic> json) { return ListServersResponseResult(
  authType: ListServersResponseResultAuthType.fromJson(json['auth_type'] as String),
  createdAt: json['created_at'] != null ? DateTime.parse(json['created_at'] as String) : null,
  createdBy: json['created_by'] as String?,
  description: json['description'] as String?,
  error: json['error'] as String?,
  hostname: Uri.parse(json['hostname'] as String),
  id: json['id'] as String,
  lastSuccessfulSync: json['last_successful_sync'] != null ? DateTime.parse(json['last_successful_sync'] as String) : null,
  lastSynced: json['last_synced'] != null ? DateTime.parse(json['last_synced'] as String) : null,
  modifiedAt: json['modified_at'] != null ? DateTime.parse(json['modified_at'] as String) : null,
  modifiedBy: json['modified_by'] as String?,
  name: json['name'] as String,
  prompts: (json['prompts'] as List<dynamic>).map((e) => (e as Map<String, dynamic>).map((k, v) => MapEntry(k, v))).toList(),
  status: json.containsKey('status') ? json['status'] as String : 'waiting',
  tools: (json['tools'] as List<dynamic>).map((e) => (e as Map<String, dynamic>).map((k, v) => MapEntry(k, v))).toList(),
); }

final ListServersResponseResultAuthType authType;

final DateTime? createdAt;

final String? createdBy;

final String? description;

final String? error;

final Uri hostname;

/// server id
final String id;

final DateTime? lastSuccessfulSync;

final DateTime? lastSynced;

final DateTime? modifiedAt;

final String? modifiedBy;

final String name;

final List<Map<String,dynamic>> prompts;

final String status;

final List<Map<String,dynamic>> tools;

Map<String, dynamic> toJson() { return {
  'auth_type': authType.toJson(),
  if (createdAt != null) 'created_at': createdAt?.toIso8601String(),
  'created_by': ?createdBy,
  'description': ?description,
  'error': ?error,
  'hostname': hostname.toString(),
  'id': id,
  if (lastSuccessfulSync != null) 'last_successful_sync': lastSuccessfulSync?.toIso8601String(),
  if (lastSynced != null) 'last_synced': lastSynced?.toIso8601String(),
  if (modifiedAt != null) 'modified_at': modifiedAt?.toIso8601String(),
  'modified_by': ?modifiedBy,
  'name': name,
  'prompts': prompts.map((e) => e).toList(),
  'status': status,
  'tools': tools.map((e) => e).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('auth_type') &&
      json.containsKey('hostname') && json['hostname'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('prompts') &&
      json.containsKey('tools'); } 
ListServersResponseResult copyWith({ListServersResponseResultAuthType? authType, DateTime Function()? createdAt, String Function()? createdBy, String? Function()? description, String Function()? error, Uri? hostname, String? id, DateTime Function()? lastSuccessfulSync, DateTime Function()? lastSynced, DateTime Function()? modifiedAt, String Function()? modifiedBy, String? name, List<Map<String,dynamic>>? prompts, String Function()? status, List<Map<String,dynamic>>? tools, }) { return ListServersResponseResult(
  authType: authType ?? this.authType,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  createdBy: createdBy != null ? createdBy() : this.createdBy,
  description: description != null ? description() : this.description,
  error: error != null ? error() : this.error,
  hostname: hostname ?? this.hostname,
  id: id ?? this.id,
  lastSuccessfulSync: lastSuccessfulSync != null ? lastSuccessfulSync() : this.lastSuccessfulSync,
  lastSynced: lastSynced != null ? lastSynced() : this.lastSynced,
  modifiedAt: modifiedAt != null ? modifiedAt() : this.modifiedAt,
  modifiedBy: modifiedBy != null ? modifiedBy() : this.modifiedBy,
  name: name ?? this.name,
  prompts: prompts ?? this.prompts,
  status: status != null ? status() : this.status,
  tools: tools ?? this.tools,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListServersResponseResult &&
          authType == other.authType &&
          createdAt == other.createdAt &&
          createdBy == other.createdBy &&
          description == other.description &&
          error == other.error &&
          hostname == other.hostname &&
          id == other.id &&
          lastSuccessfulSync == other.lastSuccessfulSync &&
          lastSynced == other.lastSynced &&
          modifiedAt == other.modifiedAt &&
          modifiedBy == other.modifiedBy &&
          name == other.name &&
          listEquals(prompts, other.prompts) &&
          status == other.status &&
          listEquals(tools, other.tools); } 
@override int get hashCode { return Object.hash(authType, createdAt, createdBy, description, error, hostname, id, lastSuccessfulSync, lastSynced, modifiedAt, modifiedBy, name, Object.hashAll(prompts), status, Object.hashAll(tools)); } 
@override String toString() { return 'ListServersResponseResult(authType: $authType, createdAt: $createdAt, createdBy: $createdBy, description: $description, error: $error, hostname: $hostname, id: $id, lastSuccessfulSync: $lastSuccessfulSync, lastSynced: $lastSynced, modifiedAt: $modifiedAt, modifiedBy: $modifiedBy, name: $name, prompts: $prompts, status: $status, tools: $tools)'; } 
 }
