// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetTagListResponseTags {const GetTagListResponseTags({required this.uuid, required this.value, this.activeDuration, this.actorCategory, this.aliasGroupNames, this.aliasGroupNamesInternal, this.analyticPriority, this.attributionConfidence, this.attributionOrganization, this.categoryName, this.categoryUuid, this.externalReferenceLinks, this.internalDescription, this.motive, this.opsecLevel, this.originCountryIso, this.priority, this.sophisticationLevel, });

factory GetTagListResponseTags.fromJson(Map<String, dynamic> json) { return GetTagListResponseTags(
  activeDuration: json['activeDuration'] as String?,
  actorCategory: json['actorCategory'] as String?,
  aliasGroupNames: (json['aliasGroupNames'] as List<dynamic>?)?.map((e) => e as String).toList(),
  aliasGroupNamesInternal: (json['aliasGroupNamesInternal'] as List<dynamic>?)?.map((e) => e as String).toList(),
  analyticPriority: json['analyticPriority'] != null ? (json['analyticPriority'] as num).toDouble() : null,
  attributionConfidence: json['attributionConfidence'] as String?,
  attributionOrganization: json['attributionOrganization'] as String?,
  categoryName: json['categoryName'] as String?,
  categoryUuid: json['categoryUuid'] as String?,
  externalReferenceLinks: (json['externalReferenceLinks'] as List<dynamic>?)?.map((e) => e as String).toList(),
  internalDescription: json['internalDescription'] as String?,
  motive: json['motive'] as String?,
  opsecLevel: json['opsecLevel'] as String?,
  originCountryIso: json['originCountryISO'] as String?,
  priority: json['priority'] != null ? (json['priority'] as num).toDouble() : null,
  sophisticationLevel: json['sophisticationLevel'] as String?,
  uuid: json['uuid'] as String,
  value: json['value'] as String,
); }

final String? activeDuration;

final String? actorCategory;

final List<String>? aliasGroupNames;

final List<String>? aliasGroupNamesInternal;

final double? analyticPriority;

final String? attributionConfidence;

final String? attributionOrganization;

final String? categoryName;

final String? categoryUuid;

final List<String>? externalReferenceLinks;

final String? internalDescription;

final String? motive;

final String? opsecLevel;

final String? originCountryIso;

final double? priority;

final String? sophisticationLevel;

final String uuid;

final String value;

Map<String, dynamic> toJson() { return {
  'activeDuration': ?activeDuration,
  'actorCategory': ?actorCategory,
  'aliasGroupNames': ?aliasGroupNames,
  'aliasGroupNamesInternal': ?aliasGroupNamesInternal,
  'analyticPriority': ?analyticPriority,
  'attributionConfidence': ?attributionConfidence,
  'attributionOrganization': ?attributionOrganization,
  'categoryName': ?categoryName,
  'categoryUuid': ?categoryUuid,
  'externalReferenceLinks': ?externalReferenceLinks,
  'internalDescription': ?internalDescription,
  'motive': ?motive,
  'opsecLevel': ?opsecLevel,
  'originCountryISO': ?originCountryIso,
  'priority': ?priority,
  'sophisticationLevel': ?sophisticationLevel,
  'uuid': uuid,
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('uuid') && json['uuid'] is String &&
      json.containsKey('value') && json['value'] is String; } 
GetTagListResponseTags copyWith({String Function()? activeDuration, String Function()? actorCategory, List<String> Function()? aliasGroupNames, List<String> Function()? aliasGroupNamesInternal, double Function()? analyticPriority, String Function()? attributionConfidence, String Function()? attributionOrganization, String Function()? categoryName, String Function()? categoryUuid, List<String> Function()? externalReferenceLinks, String Function()? internalDescription, String Function()? motive, String Function()? opsecLevel, String Function()? originCountryIso, double Function()? priority, String Function()? sophisticationLevel, String? uuid, String? value, }) { return GetTagListResponseTags(
  activeDuration: activeDuration != null ? activeDuration() : this.activeDuration,
  actorCategory: actorCategory != null ? actorCategory() : this.actorCategory,
  aliasGroupNames: aliasGroupNames != null ? aliasGroupNames() : this.aliasGroupNames,
  aliasGroupNamesInternal: aliasGroupNamesInternal != null ? aliasGroupNamesInternal() : this.aliasGroupNamesInternal,
  analyticPriority: analyticPriority != null ? analyticPriority() : this.analyticPriority,
  attributionConfidence: attributionConfidence != null ? attributionConfidence() : this.attributionConfidence,
  attributionOrganization: attributionOrganization != null ? attributionOrganization() : this.attributionOrganization,
  categoryName: categoryName != null ? categoryName() : this.categoryName,
  categoryUuid: categoryUuid != null ? categoryUuid() : this.categoryUuid,
  externalReferenceLinks: externalReferenceLinks != null ? externalReferenceLinks() : this.externalReferenceLinks,
  internalDescription: internalDescription != null ? internalDescription() : this.internalDescription,
  motive: motive != null ? motive() : this.motive,
  opsecLevel: opsecLevel != null ? opsecLevel() : this.opsecLevel,
  originCountryIso: originCountryIso != null ? originCountryIso() : this.originCountryIso,
  priority: priority != null ? priority() : this.priority,
  sophisticationLevel: sophisticationLevel != null ? sophisticationLevel() : this.sophisticationLevel,
  uuid: uuid ?? this.uuid,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetTagListResponseTags &&
          activeDuration == other.activeDuration &&
          actorCategory == other.actorCategory &&
          listEquals(aliasGroupNames, other.aliasGroupNames) &&
          listEquals(aliasGroupNamesInternal, other.aliasGroupNamesInternal) &&
          analyticPriority == other.analyticPriority &&
          attributionConfidence == other.attributionConfidence &&
          attributionOrganization == other.attributionOrganization &&
          categoryName == other.categoryName &&
          categoryUuid == other.categoryUuid &&
          listEquals(externalReferenceLinks, other.externalReferenceLinks) &&
          internalDescription == other.internalDescription &&
          motive == other.motive &&
          opsecLevel == other.opsecLevel &&
          originCountryIso == other.originCountryIso &&
          priority == other.priority &&
          sophisticationLevel == other.sophisticationLevel &&
          uuid == other.uuid &&
          value == other.value; } 
@override int get hashCode { return Object.hash(activeDuration, actorCategory, Object.hashAll(aliasGroupNames ?? const []), Object.hashAll(aliasGroupNamesInternal ?? const []), analyticPriority, attributionConfidence, attributionOrganization, categoryName, categoryUuid, Object.hashAll(externalReferenceLinks ?? const []), internalDescription, motive, opsecLevel, originCountryIso, priority, sophisticationLevel, uuid, value); } 
@override String toString() { return 'GetTagListResponseTags(activeDuration: $activeDuration, actorCategory: $actorCategory, aliasGroupNames: $aliasGroupNames, aliasGroupNamesInternal: $aliasGroupNamesInternal, analyticPriority: $analyticPriority, attributionConfidence: $attributionConfidence, attributionOrganization: $attributionOrganization, categoryName: $categoryName, categoryUuid: $categoryUuid, externalReferenceLinks: $externalReferenceLinks, internalDescription: $internalDescription, motive: $motive, opsecLevel: $opsecLevel, originCountryIso: $originCountryIso, priority: $priority, sophisticationLevel: $sophisticationLevel, uuid: $uuid, value: $value)'; } 
 }
