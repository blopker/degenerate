// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class OverviewDomainsArtifactAttestations {const OverviewDomainsArtifactAttestations({this.trustDomain, this.services, });

factory OverviewDomainsArtifactAttestations.fromJson(Map<String, dynamic> json) { return OverviewDomainsArtifactAttestations(
  trustDomain: json['trust_domain'] as String?,
  services: (json['services'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

final String? trustDomain;

final List<String>? services;

Map<String, dynamic> toJson() { return {
  'trust_domain': ?trustDomain,
  'services': ?services,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
OverviewDomainsArtifactAttestations copyWith({String Function()? trustDomain, List<String> Function()? services, }) { return OverviewDomainsArtifactAttestations(
  trustDomain: trustDomain != null ? trustDomain() : this.trustDomain,
  services: services != null ? services() : this.services,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OverviewDomainsArtifactAttestations &&
          trustDomain == other.trustDomain &&
          listEquals(services, other.services); } 
@override int get hashCode { return Object.hash(trustDomain, Object.hashAll(services ?? const [])); } 
@override String toString() { return 'OverviewDomainsArtifactAttestations(trustDomain: $trustDomain, services: $services)'; } 
 }
