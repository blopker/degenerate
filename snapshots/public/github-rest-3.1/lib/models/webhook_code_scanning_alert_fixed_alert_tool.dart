// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookCodeScanningAlertFixedAlertTool {const WebhookCodeScanningAlertFixedAlertTool({required this.name, required this.version, this.guid, });

factory WebhookCodeScanningAlertFixedAlertTool.fromJson(Map<String, dynamic> json) { return WebhookCodeScanningAlertFixedAlertTool(
  guid: json['guid'] as String?,
  name: json['name'] as String,
  version: json['version'] as String?,
); }

final String? guid;

/// The name of the tool used to generate the code scanning analysis alert.
final String name;

/// The version of the tool used to detect the alert.
final String? version;

Map<String, dynamic> toJson() { return {
  'guid': ?guid,
  'name': name,
  'version': ?version,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('version') && json['version'] is String; } 
WebhookCodeScanningAlertFixedAlertTool copyWith({String? Function()? guid, String? name, String? Function()? version, }) { return WebhookCodeScanningAlertFixedAlertTool(
  guid: guid != null ? guid() : this.guid,
  name: name ?? this.name,
  version: version != null ? version() : this.version,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookCodeScanningAlertFixedAlertTool &&
          guid == other.guid &&
          name == other.name &&
          version == other.version; } 
@override int get hashCode { return Object.hash(guid, name, version); } 
@override String toString() { return 'WebhookCodeScanningAlertFixedAlertTool(guid: $guid, name: $name, version: $version)'; } 
 }
