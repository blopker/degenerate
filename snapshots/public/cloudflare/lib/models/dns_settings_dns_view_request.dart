// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_settings_name.dart';@immutable final class DnsSettingsDnsViewRequest {const DnsSettingsDnsViewRequest({this.name, this.zones, });

factory DnsSettingsDnsViewRequest.fromJson(Map<String, dynamic> json) {return DnsSettingsDnsViewRequest(
  name: json['name'] != null ? DnsSettingsName.fromJson(json['name'] as String) : null,
  zones: (json['zones'] as List<dynamic>?)?.map((e) => e as String).toList(),
);}

/// The name of the view.
final DnsSettingsName? name;

/// The list of zones linked to this view.
final List<String>? zones;

Map<String, dynamic> toJson() {return {
  if (name != null) 'name': name?.toJson(),
  'zones': ?zones,
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'name', 'zones'}.contains(key));}
DnsSettingsDnsViewRequest copyWith({DnsSettingsName? Function()? name, List<String>? Function()? zones, }) {return DnsSettingsDnsViewRequest(
  name: name != null ? name() : this.name,
  zones: zones != null ? zones() : this.zones,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is DnsSettingsDnsViewRequest &&
          name == other.name &&
          listEquals(zones, other.zones);}
@override int get hashCode {return Object.hash(name, Object.hashAll(zones ?? const []));}
@override String toString() {return 'DnsSettingsDnsViewRequest(name: $name, zones: $zones)';}
}
