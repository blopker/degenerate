// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'intel_additional_information.dart';import 'intel_application.dart';import 'intel_category_with_super_category_id.dart';import 'intel_content_categories2.dart';import 'intel_domain_name.dart';import 'intel_inherited_from.dart';import 'intel_popularity_rank.dart';import 'intel_resolves_to_ref.dart';import 'intel_risk_score.dart';@immutable final class IntelDomain {const IntelDomain({this.additionalInformation, this.application, this.contentCategories, this.domain, this.inheritedContentCategories, this.inheritedFrom, this.inheritedRiskTypes, this.popularityRank, this.resolvesToRefs, this.riskScore, this.riskTypes, });

factory IntelDomain.fromJson(Map<String, dynamic> json) { return IntelDomain(
  additionalInformation: json['additional_information'] != null ? IntelAdditionalInformation.fromJson(json['additional_information'] as Map<String, dynamic>) : null,
  application: json['application'] != null ? IntelApplication.fromJson(json['application'] as Map<String, dynamic>) : null,
  contentCategories: (json['content_categories'] as List<dynamic>?)?.map((e) => IntelContentCategories2.fromJson(e as Map<String, dynamic>)).toList(),
  domain: json['domain'] != null ? IntelDomainName.fromJson(json['domain'] as String) : null,
  inheritedContentCategories: (json['inherited_content_categories'] as List<dynamic>?)?.map((e) => IntelCategoryWithSuperCategoryId.fromJson(e as Map<String, dynamic>)).toList(),
  inheritedFrom: json['inherited_from'] != null ? IntelInheritedFrom.fromJson(json['inherited_from'] as String) : null,
  inheritedRiskTypes: (json['inherited_risk_types'] as List<dynamic>?)?.map((e) => IntelCategoryWithSuperCategoryId.fromJson(e as Map<String, dynamic>)).toList(),
  popularityRank: json['popularity_rank'] != null ? IntelPopularityRank.fromJson(json['popularity_rank'] as num) : null,
  resolvesToRefs: (json['resolves_to_refs'] as List<dynamic>?)?.map((e) => IntelResolvesToRef.fromJson(e as Map<String, dynamic>)).toList(),
  riskScore: json['risk_score'] != null ? IntelRiskScore.fromJson(json['risk_score'] as num) : null,
  riskTypes: (json['risk_types'] as List<dynamic>?)?.map((e) => IntelCategoryWithSuperCategoryId.fromJson(e as Map<String, dynamic>)).toList(),
); }

final IntelAdditionalInformation? additionalInformation;

final IntelApplication? application;

final List<IntelContentCategories2>? contentCategories;

final IntelDomainName? domain;

final List<IntelCategoryWithSuperCategoryId>? inheritedContentCategories;

final IntelInheritedFrom? inheritedFrom;

final List<IntelCategoryWithSuperCategoryId>? inheritedRiskTypes;

final IntelPopularityRank? popularityRank;

final List<IntelResolvesToRef>? resolvesToRefs;

final IntelRiskScore? riskScore;

final List<IntelCategoryWithSuperCategoryId>? riskTypes;

Map<String, dynamic> toJson() { return {
  if (additionalInformation != null) 'additional_information': additionalInformation?.toJson(),
  if (application != null) 'application': application?.toJson(),
  if (contentCategories != null) 'content_categories': contentCategories?.map((e) => e.toJson()).toList(),
  if (domain != null) 'domain': domain?.toJson(),
  if (inheritedContentCategories != null) 'inherited_content_categories': inheritedContentCategories?.map((e) => e.toJson()).toList(),
  if (inheritedFrom != null) 'inherited_from': inheritedFrom?.toJson(),
  if (inheritedRiskTypes != null) 'inherited_risk_types': inheritedRiskTypes?.map((e) => e.toJson()).toList(),
  if (popularityRank != null) 'popularity_rank': popularityRank?.toJson(),
  if (resolvesToRefs != null) 'resolves_to_refs': resolvesToRefs?.map((e) => e.toJson()).toList(),
  if (riskScore != null) 'risk_score': riskScore?.toJson(),
  if (riskTypes != null) 'risk_types': riskTypes?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'additional_information', 'application', 'content_categories', 'domain', 'inherited_content_categories', 'inherited_from', 'inherited_risk_types', 'popularity_rank', 'resolves_to_refs', 'risk_score', 'risk_types'}.contains(key)); } 
IntelDomain copyWith({IntelAdditionalInformation Function()? additionalInformation, IntelApplication Function()? application, List<IntelContentCategories2> Function()? contentCategories, IntelDomainName Function()? domain, List<IntelCategoryWithSuperCategoryId> Function()? inheritedContentCategories, IntelInheritedFrom Function()? inheritedFrom, List<IntelCategoryWithSuperCategoryId> Function()? inheritedRiskTypes, IntelPopularityRank Function()? popularityRank, List<IntelResolvesToRef> Function()? resolvesToRefs, IntelRiskScore Function()? riskScore, List<IntelCategoryWithSuperCategoryId> Function()? riskTypes, }) { return IntelDomain(
  additionalInformation: additionalInformation != null ? additionalInformation() : this.additionalInformation,
  application: application != null ? application() : this.application,
  contentCategories: contentCategories != null ? contentCategories() : this.contentCategories,
  domain: domain != null ? domain() : this.domain,
  inheritedContentCategories: inheritedContentCategories != null ? inheritedContentCategories() : this.inheritedContentCategories,
  inheritedFrom: inheritedFrom != null ? inheritedFrom() : this.inheritedFrom,
  inheritedRiskTypes: inheritedRiskTypes != null ? inheritedRiskTypes() : this.inheritedRiskTypes,
  popularityRank: popularityRank != null ? popularityRank() : this.popularityRank,
  resolvesToRefs: resolvesToRefs != null ? resolvesToRefs() : this.resolvesToRefs,
  riskScore: riskScore != null ? riskScore() : this.riskScore,
  riskTypes: riskTypes != null ? riskTypes() : this.riskTypes,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IntelDomain &&
          additionalInformation == other.additionalInformation &&
          application == other.application &&
          listEquals(contentCategories, other.contentCategories) &&
          domain == other.domain &&
          listEquals(inheritedContentCategories, other.inheritedContentCategories) &&
          inheritedFrom == other.inheritedFrom &&
          listEquals(inheritedRiskTypes, other.inheritedRiskTypes) &&
          popularityRank == other.popularityRank &&
          listEquals(resolvesToRefs, other.resolvesToRefs) &&
          riskScore == other.riskScore &&
          listEquals(riskTypes, other.riskTypes); } 
@override int get hashCode { return Object.hash(additionalInformation, application, Object.hashAll(contentCategories ?? const []), domain, Object.hashAll(inheritedContentCategories ?? const []), inheritedFrom, Object.hashAll(inheritedRiskTypes ?? const []), popularityRank, Object.hashAll(resolvesToRefs ?? const []), riskScore, Object.hashAll(riskTypes ?? const [])); } 
@override String toString() { return 'IntelDomain(additionalInformation: $additionalInformation, application: $application, contentCategories: $contentCategories, domain: $domain, inheritedContentCategories: $inheritedContentCategories, inheritedFrom: $inheritedFrom, inheritedRiskTypes: $inheritedRiskTypes, popularityRank: $popularityRank, resolvesToRefs: $resolvesToRefs, riskScore: $riskScore, riskTypes: $riskTypes)'; } 
 }
