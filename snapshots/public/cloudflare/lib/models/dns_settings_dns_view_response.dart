// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_settings_created_time.dart';import 'dns_settings_identifier.dart';import 'dns_settings_modified_time.dart';import 'dns_settings_name.dart';final class DnsSettingsDnsViewResponse {const DnsSettingsDnsViewResponse({required this.createdTime, required this.modifiedTime, required this.name, required this.zones, required this.id, });

factory DnsSettingsDnsViewResponse.fromJson(Map<String, dynamic> json) { return DnsSettingsDnsViewResponse(
  createdTime: DnsSettingsCreatedTime.fromJson(json['created_time'] as String),
  modifiedTime: DnsSettingsModifiedTime.fromJson(json['modified_time'] as String),
  name: DnsSettingsName.fromJson(json['name'] as String),
  zones: (json['zones'] as List<dynamic>).map((e) => e as String).toList(),
  id: DnsSettingsIdentifier.fromJson(json['id'] as String),
); }

/// When the view was created.
final DnsSettingsCreatedTime createdTime;

final DnsSettingsModifiedTime modifiedTime;

final DnsSettingsName name;

final List<String> zones;

final DnsSettingsIdentifier id;

Map<String, dynamic> toJson() { return {
  'created_time': createdTime.toJson(),
  'modified_time': modifiedTime.toJson(),
  'name': name.toJson(),
  'zones': zones,
  'id': id.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_time') &&
      json.containsKey('modified_time') &&
      json.containsKey('name') &&
      json.containsKey('zones') &&
      json.containsKey('id'); } 
DnsSettingsDnsViewResponse copyWith({DnsSettingsCreatedTime? createdTime, DnsSettingsModifiedTime? modifiedTime, DnsSettingsName? name, List<String>? zones, DnsSettingsIdentifier? id, }) { return DnsSettingsDnsViewResponse(
  createdTime: createdTime ?? this.createdTime,
  modifiedTime: modifiedTime ?? this.modifiedTime,
  name: name ?? this.name,
  zones: zones ?? this.zones,
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsSettingsDnsViewResponse &&
          createdTime == other.createdTime &&
          modifiedTime == other.modifiedTime &&
          name == other.name &&
          listEquals(zones, other.zones) &&
          id == other.id; } 
@override int get hashCode { return Object.hash(createdTime, modifiedTime, name, Object.hashAll(zones), id); } 
@override String toString() { return 'DnsSettingsDnsViewResponse(createdTime: $createdTime, modifiedTime: $modifiedTime, name: $name, zones: $zones, id: $id)'; } 
 }
