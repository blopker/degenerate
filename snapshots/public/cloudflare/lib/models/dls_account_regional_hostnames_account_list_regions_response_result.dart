// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dls_region_key.dart';@immutable final class DlsAccountRegionalHostnamesAccountListRegionsResponseResult {const DlsAccountRegionalHostnamesAccountListRegionsResponseResult({this.key, this.label, });

factory DlsAccountRegionalHostnamesAccountListRegionsResponseResult.fromJson(Map<String, dynamic> json) { return DlsAccountRegionalHostnamesAccountListRegionsResponseResult(
  key: json['key'] != null ? DlsRegionKey.fromJson(json['key'] as String) : null,
  label: json['label'] as String?,
); }

/// Identifying key for the region
final DlsRegionKey? key;

/// Human-readable text label for the region
final String? label;

Map<String, dynamic> toJson() { return {
  if (key != null) 'key': key?.toJson(),
  'label': ?label,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'key', 'label'}.contains(key)); } 
DlsAccountRegionalHostnamesAccountListRegionsResponseResult copyWith({DlsRegionKey Function()? key, String Function()? label, }) { return DlsAccountRegionalHostnamesAccountListRegionsResponseResult(
  key: key != null ? key() : this.key,
  label: label != null ? label() : this.label,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlsAccountRegionalHostnamesAccountListRegionsResponseResult &&
          key == other.key &&
          label == other.label; } 
@override int get hashCode { return Object.hash(key, label); } 
@override String toString() { return 'DlsAccountRegionalHostnamesAccountListRegionsResponseResult(key: $key, label: $label)'; } 
 }
