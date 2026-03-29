// GENERATED CODE - DO NOT MODIFY BY HAND

import 'account_settings.dart';final class AccountType {const AccountType._(this.value);

factory AccountType.fromJson(String json) { return switch (json) {
  'standard' => standard,
  'enterprise' => enterprise,
  _ => AccountType._(json),
}; }

static const AccountType standard = AccountType._('standard');

static const AccountType enterprise = AccountType._('enterprise');

static const List<AccountType> values = [standard, enterprise];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountType($value)'; } 
 }
final class Account {const Account({required this.createdOn, required this.id, required this.name, required this.settings, required this.type, });

factory Account.fromJson(Map<String, dynamic> json) { return Account(
  createdOn: DateTime.parse(json['created_on'] as String),
  id: json['id'] as String,
  name: json['name'] as String?,
  settings: AccountSettings.fromJson(json['settings'] as Map<String, dynamic>),
  type: AccountType.fromJson(json['type'] as String),
); }

final DateTime createdOn;

final String id;

final String? name;

final AccountSettings settings;

final AccountType type;

Map<String, dynamic> toJson() { return {
  'created_on': createdOn.toIso8601String(),
  'id': id,
  'name': ?name,
  'settings': settings.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_on') && json['created_on'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('settings') &&
      json.containsKey('type'); } 
Account copyWith({DateTime? createdOn, String? id, String? Function()? name, AccountSettings? settings, AccountType? type, }) { return Account(
  createdOn: createdOn ?? this.createdOn,
  id: id ?? this.id,
  name: name != null ? name() : this.name,
  settings: settings ?? this.settings,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Account &&
          createdOn == other.createdOn &&
          id == other.id &&
          name == other.name &&
          settings == other.settings &&
          type == other.type; } 
@override int get hashCode { return Object.hash(createdOn, id, name, settings, type); } 
@override String toString() { return 'Account(createdOn: $createdOn, id: $id, name: $name, settings: $settings, type: $type)'; } 
 }
