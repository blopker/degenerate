// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// When the view was created.
extension type DnsSettingsCreatedTime(DateTime value) {
factory DnsSettingsCreatedTime.fromJson(String json) => DnsSettingsCreatedTime(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
/// When the view was last modified.
extension type DnsSettingsModifiedTime(DateTime value) {
factory DnsSettingsModifiedTime.fromJson(String json) => DnsSettingsModifiedTime(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
/// The name of the view.
extension type const DnsSettingsName(String value) {
factory DnsSettingsName.fromJson(String json) => DnsSettingsName(json);

String toJson() => value;

}
final class DnsSettingsDnsView {const DnsSettingsDnsView({this.createdTime, this.modifiedTime, this.name, this.zones, });

factory DnsSettingsDnsView.fromJson(Map<String, dynamic> json) { return DnsSettingsDnsView(
  createdTime: json['created_time'] != null ? DnsSettingsCreatedTime.fromJson(json['created_time'] as String) : null,
  modifiedTime: json['modified_time'] != null ? DnsSettingsModifiedTime.fromJson(json['modified_time'] as String) : null,
  name: json['name'] != null ? DnsSettingsName.fromJson(json['name'] as String) : null,
  zones: (json['zones'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// When the view was created.
final DnsSettingsCreatedTime? createdTime;

final DnsSettingsModifiedTime? modifiedTime;

final DnsSettingsName? name;

final List<String>? zones;

Map<String, dynamic> toJson() { return {
  if (createdTime != null) 'created_time': createdTime?.toJson(),
  if (modifiedTime != null) 'modified_time': modifiedTime?.toJson(),
  if (name != null) 'name': name?.toJson(),
  'zones': ?zones,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'created_time', 'modified_time', 'name', 'zones'}.contains(key)); } 
DnsSettingsDnsView copyWith({DnsSettingsCreatedTime Function()? createdTime, DnsSettingsModifiedTime Function()? modifiedTime, DnsSettingsName Function()? name, List<String> Function()? zones, }) { return DnsSettingsDnsView(
  createdTime: createdTime != null ? createdTime() : this.createdTime,
  modifiedTime: modifiedTime != null ? modifiedTime() : this.modifiedTime,
  name: name != null ? name() : this.name,
  zones: zones != null ? zones() : this.zones,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsSettingsDnsView &&
          createdTime == other.createdTime &&
          modifiedTime == other.modifiedTime &&
          name == other.name &&
          listEquals(zones, other.zones); } 
@override int get hashCode { return Object.hash(createdTime, modifiedTime, name, Object.hashAll(zones ?? const [])); } 
@override String toString() { return 'DnsSettingsDnsView(createdTime: $createdTime, modifiedTime: $modifiedTime, name: $name, zones: $zones)'; } 
 }
