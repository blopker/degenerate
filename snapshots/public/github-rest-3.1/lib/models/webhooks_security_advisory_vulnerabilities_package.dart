// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhooksSecurityAdvisoryVulnerabilitiesPackage {const WebhooksSecurityAdvisoryVulnerabilitiesPackage({required this.ecosystem, required this.name, });

factory WebhooksSecurityAdvisoryVulnerabilitiesPackage.fromJson(Map<String, dynamic> json) { return WebhooksSecurityAdvisoryVulnerabilitiesPackage(
  ecosystem: json['ecosystem'] as String,
  name: json['name'] as String,
); }

final String ecosystem;

final String name;

Map<String, dynamic> toJson() { return {
  'ecosystem': ecosystem,
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('ecosystem') && json['ecosystem'] is String &&
      json.containsKey('name') && json['name'] is String; } 
WebhooksSecurityAdvisoryVulnerabilitiesPackage copyWith({String? ecosystem, String? name, }) { return WebhooksSecurityAdvisoryVulnerabilitiesPackage(
  ecosystem: ecosystem ?? this.ecosystem,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhooksSecurityAdvisoryVulnerabilitiesPackage &&
          ecosystem == other.ecosystem &&
          name == other.name; } 
@override int get hashCode { return Object.hash(ecosystem, name); } 
@override String toString() { return 'WebhooksSecurityAdvisoryVulnerabilitiesPackage(ecosystem: $ecosystem, name: $name)'; } 
 }
