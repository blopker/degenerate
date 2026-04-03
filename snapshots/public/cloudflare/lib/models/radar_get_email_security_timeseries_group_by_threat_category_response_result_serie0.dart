// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultSerie0 {const RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultSerie0({required this.brandImpersonation, required this.credentialHarvester, required this.identityDeception, required this.link, });

factory RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultSerie0.fromJson(Map<String, dynamic> json) { return RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultSerie0(
  brandImpersonation: (json['BrandImpersonation'] as List<dynamic>).map((e) => e as String).toList(),
  credentialHarvester: (json['CredentialHarvester'] as List<dynamic>).map((e) => e as String).toList(),
  identityDeception: (json['IdentityDeception'] as List<dynamic>).map((e) => e as String).toList(),
  link: (json['Link'] as List<dynamic>).map((e) => e as String).toList(),
); }

final List<String> brandImpersonation;

final List<String> credentialHarvester;

final List<String> identityDeception;

final List<String> link;

Map<String, dynamic> toJson() { return {
  'BrandImpersonation': brandImpersonation,
  'CredentialHarvester': credentialHarvester,
  'IdentityDeception': identityDeception,
  'Link': link,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('BrandImpersonation') &&
      json.containsKey('CredentialHarvester') &&
      json.containsKey('IdentityDeception') &&
      json.containsKey('Link'); } 
RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultSerie0 copyWith({List<String>? brandImpersonation, List<String>? credentialHarvester, List<String>? identityDeception, List<String>? link, }) { return RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultSerie0(
  brandImpersonation: brandImpersonation ?? this.brandImpersonation,
  credentialHarvester: credentialHarvester ?? this.credentialHarvester,
  identityDeception: identityDeception ?? this.identityDeception,
  link: link ?? this.link,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultSerie0 &&
          listEquals(brandImpersonation, other.brandImpersonation) &&
          listEquals(credentialHarvester, other.credentialHarvester) &&
          listEquals(identityDeception, other.identityDeception) &&
          listEquals(link, other.link); } 
@override int get hashCode { return Object.hash(Object.hashAll(brandImpersonation), Object.hashAll(credentialHarvester), Object.hashAll(identityDeception), Object.hashAll(link)); } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultSerie0(brandImpersonation: $brandImpersonation, credentialHarvester: $credentialHarvester, identityDeception: $identityDeception, link: $link)'; } 
 }
