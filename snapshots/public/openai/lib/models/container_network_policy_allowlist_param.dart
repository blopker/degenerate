// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'container_network_policy_domain_secret_param.dart';/// Allow outbound network access only to specified domains. Always `allowlist`.
@immutable final class ContainerNetworkPolicyAllowlistParamType {const ContainerNetworkPolicyAllowlistParamType._(this.value);

factory ContainerNetworkPolicyAllowlistParamType.fromJson(String json) { return switch (json) {
  'allowlist' => allowlist,
  _ => ContainerNetworkPolicyAllowlistParamType._(json),
}; }

static const ContainerNetworkPolicyAllowlistParamType allowlist = ContainerNetworkPolicyAllowlistParamType._('allowlist');

static const List<ContainerNetworkPolicyAllowlistParamType> values = [allowlist];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ContainerNetworkPolicyAllowlistParamType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ContainerNetworkPolicyAllowlistParamType($value)'; } 
 }
@immutable final class ContainerNetworkPolicyAllowlistParam {const ContainerNetworkPolicyAllowlistParam({required this.allowedDomains, this.type = ContainerNetworkPolicyAllowlistParamType.allowlist, this.domainSecrets, });

factory ContainerNetworkPolicyAllowlistParam.fromJson(Map<String, dynamic> json) { return ContainerNetworkPolicyAllowlistParam(
  type: ContainerNetworkPolicyAllowlistParamType.fromJson(json['type'] as String),
  allowedDomains: (json['allowed_domains'] as List<dynamic>).map((e) => e as String).toList(),
  domainSecrets: (json['domain_secrets'] as List<dynamic>?)?.map((e) => ContainerNetworkPolicyDomainSecretParam.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Allow outbound network access only to specified domains. Always `allowlist`.
final ContainerNetworkPolicyAllowlistParamType type;

/// A list of allowed domains when type is `allowlist`.
final List<String> allowedDomains;

/// Optional domain-scoped secrets for allowlisted domains.
final List<ContainerNetworkPolicyDomainSecretParam>? domainSecrets;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'allowed_domains': allowedDomains,
  if (domainSecrets != null) 'domain_secrets': domainSecrets?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('allowed_domains'); } 
ContainerNetworkPolicyAllowlistParam copyWith({ContainerNetworkPolicyAllowlistParamType? type, List<String>? allowedDomains, List<ContainerNetworkPolicyDomainSecretParam> Function()? domainSecrets, }) { return ContainerNetworkPolicyAllowlistParam(
  type: type ?? this.type,
  allowedDomains: allowedDomains ?? this.allowedDomains,
  domainSecrets: domainSecrets != null ? domainSecrets() : this.domainSecrets,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ContainerNetworkPolicyAllowlistParam &&
          type == other.type &&
          listEquals(allowedDomains, other.allowedDomains) &&
          listEquals(domainSecrets, other.domainSecrets); } 
@override int get hashCode { return Object.hash(type, Object.hashAll(allowedDomains), Object.hashAll(domainSecrets ?? const [])); } 
@override String toString() { return 'ContainerNetworkPolicyAllowlistParam(type: $type, allowedDomains: $allowedDomains, domainSecrets: $domainSecrets)'; } 
 }
