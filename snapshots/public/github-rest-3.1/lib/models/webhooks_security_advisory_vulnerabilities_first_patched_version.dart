// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhooksSecurityAdvisoryVulnerabilitiesFirstPatchedVersion {const WebhooksSecurityAdvisoryVulnerabilitiesFirstPatchedVersion({required this.identifier});

factory WebhooksSecurityAdvisoryVulnerabilitiesFirstPatchedVersion.fromJson(Map<String, dynamic> json) { return WebhooksSecurityAdvisoryVulnerabilitiesFirstPatchedVersion(
  identifier: json['identifier'] as String,
); }

final String identifier;

Map<String, dynamic> toJson() { return {
  'identifier': identifier,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('identifier') && json['identifier'] is String; } 
WebhooksSecurityAdvisoryVulnerabilitiesFirstPatchedVersion copyWith({String? identifier}) { return WebhooksSecurityAdvisoryVulnerabilitiesFirstPatchedVersion(
  identifier: identifier ?? this.identifier,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhooksSecurityAdvisoryVulnerabilitiesFirstPatchedVersion &&
          identifier == other.identifier; } 
@override int get hashCode { return identifier.hashCode; } 
@override String toString() { return 'WebhooksSecurityAdvisoryVulnerabilitiesFirstPatchedVersion(identifier: $identifier)'; } 
 }
