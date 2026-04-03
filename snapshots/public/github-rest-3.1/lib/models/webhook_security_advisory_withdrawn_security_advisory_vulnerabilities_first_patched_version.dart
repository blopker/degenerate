// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryVulnerabilitiesFirstPatchedVersion {const WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryVulnerabilitiesFirstPatchedVersion({required this.identifier});

factory WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryVulnerabilitiesFirstPatchedVersion.fromJson(Map<String, dynamic> json) { return WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryVulnerabilitiesFirstPatchedVersion(
  identifier: json['identifier'] as String,
); }

final String identifier;

Map<String, dynamic> toJson() { return {
  'identifier': identifier,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('identifier') && json['identifier'] is String; } 
WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryVulnerabilitiesFirstPatchedVersion copyWith({String? identifier}) { return WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryVulnerabilitiesFirstPatchedVersion(
  identifier: identifier ?? this.identifier,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryVulnerabilitiesFirstPatchedVersion &&
          identifier == other.identifier; } 
@override int get hashCode { return identifier.hashCode; } 
@override String toString() { return 'WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryVulnerabilitiesFirstPatchedVersion(identifier: $identifier)'; } 
 }
