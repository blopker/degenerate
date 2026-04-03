// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Configures user email settings for firewall policies. When you enable this, the system standardizes email addresses in the identity portion of the rule to match extended email variants in firewall policies. When you disable this setting, the system matches email addresses exactly as you provide them. Enable this setting if your email uses `.` or `+` modifiers.
@immutable final class ZeroTrustGatewayExtendedEmailMatching {const ZeroTrustGatewayExtendedEmailMatching({this.enabled, this.readOnly, this.sourceAccount, this.version, });

factory ZeroTrustGatewayExtendedEmailMatching.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayExtendedEmailMatching(
  enabled: json['enabled'] as bool?,
  readOnly: json['read_only'] as bool?,
  sourceAccount: json['source_account'] as String?,
  version: json['version'] != null ? (json['version'] as num).toInt() : null,
); }

/// Specify whether to match all variants of user emails (with + or . modifiers) used as criteria in Firewall policies.
final bool? enabled;

/// Indicate that this setting was shared via the Orgs API and read only for the current account.
final bool? readOnly;

/// Indicate the account tag of the account that shared this setting.
final String? sourceAccount;

/// Indicate the version number of the setting.
final int? version;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
  'read_only': ?readOnly,
  'source_account': ?sourceAccount,
  'version': ?version,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled', 'read_only', 'source_account', 'version'}.contains(key)); } 
ZeroTrustGatewayExtendedEmailMatching copyWith({bool? Function()? enabled, bool Function()? readOnly, String Function()? sourceAccount, int Function()? version, }) { return ZeroTrustGatewayExtendedEmailMatching(
  enabled: enabled != null ? enabled() : this.enabled,
  readOnly: readOnly != null ? readOnly() : this.readOnly,
  sourceAccount: sourceAccount != null ? sourceAccount() : this.sourceAccount,
  version: version != null ? version() : this.version,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayExtendedEmailMatching &&
          enabled == other.enabled &&
          readOnly == other.readOnly &&
          sourceAccount == other.sourceAccount &&
          version == other.version; } 
@override int get hashCode { return Object.hash(enabled, readOnly, sourceAccount, version); } 
@override String toString() { return 'ZeroTrustGatewayExtendedEmailMatching(enabled: $enabled, readOnly: $readOnly, sourceAccount: $sourceAccount, version: $version)'; } 
 }
