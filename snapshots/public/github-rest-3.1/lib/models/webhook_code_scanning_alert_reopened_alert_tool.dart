// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookCodeScanningAlertReopenedAlertTool {const WebhookCodeScanningAlertReopenedAlertTool({required this.name, required this.version, this.guid = const Omittable.absent(), });

factory WebhookCodeScanningAlertReopenedAlertTool.fromJson(Map<String, dynamic> json) { return WebhookCodeScanningAlertReopenedAlertTool(
  guid: json.containsKey('guid') ? Omittable(json['guid'] as String?) : const Omittable.absent(),
  name: json['name'] as String,
  version: json['version'] as String?,
); }

final Omittable<String?> guid;

/// The name of the tool used to generate the code scanning analysis alert.
final String name;

/// The version of the tool used to detect the alert.
final String? version;

Map<String, dynamic> toJson() { return {
  if (guid.isPresent) 'guid': guid.value,
  'name': name,
  'version': version,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('version') && (json['version'] == null || json['version'] is String); } 
WebhookCodeScanningAlertReopenedAlertTool copyWith({Omittable<String?>? guid, String? name, String? Function()? version, }) { return WebhookCodeScanningAlertReopenedAlertTool(
  guid: guid ?? this.guid,
  name: name ?? this.name,
  version: version != null ? version() : this.version,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookCodeScanningAlertReopenedAlertTool &&
          guid == other.guid &&
          name == other.name &&
          version == other.version; } 
@override int get hashCode { return Object.hash(guid, name, version); } 
@override String toString() { return 'WebhookCodeScanningAlertReopenedAlertTool(guid: $guid, name: $name, version: $version)'; } 
 }
