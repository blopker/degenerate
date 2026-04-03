// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DependencyGraphSpdxSbomSbomRelationships {const DependencyGraphSpdxSbomSbomRelationships({this.relationshipType, this.spdxElementId, this.relatedSpdxElement, });

factory DependencyGraphSpdxSbomSbomRelationships.fromJson(Map<String, dynamic> json) { return DependencyGraphSpdxSbomSbomRelationships(
  relationshipType: json['relationshipType'] as String?,
  spdxElementId: json['spdxElementId'] as String?,
  relatedSpdxElement: json['relatedSpdxElement'] as String?,
); }

/// The type of relationship between the two SPDX elements.
final String? relationshipType;

/// The SPDX identifier of the package that is the source of the relationship.
final String? spdxElementId;

/// The SPDX identifier of the package that is the target of the relationship.
final String? relatedSpdxElement;

Map<String, dynamic> toJson() { return {
  'relationshipType': ?relationshipType,
  'spdxElementId': ?spdxElementId,
  'relatedSpdxElement': ?relatedSpdxElement,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'relationshipType', 'spdxElementId', 'relatedSpdxElement'}.contains(key)); } 
DependencyGraphSpdxSbomSbomRelationships copyWith({String Function()? relationshipType, String Function()? spdxElementId, String Function()? relatedSpdxElement, }) { return DependencyGraphSpdxSbomSbomRelationships(
  relationshipType: relationshipType != null ? relationshipType() : this.relationshipType,
  spdxElementId: spdxElementId != null ? spdxElementId() : this.spdxElementId,
  relatedSpdxElement: relatedSpdxElement != null ? relatedSpdxElement() : this.relatedSpdxElement,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DependencyGraphSpdxSbomSbomRelationships &&
          relationshipType == other.relationshipType &&
          spdxElementId == other.spdxElementId &&
          relatedSpdxElement == other.relatedSpdxElement; } 
@override int get hashCode { return Object.hash(relationshipType, spdxElementId, relatedSpdxElement); } 
@override String toString() { return 'DependencyGraphSpdxSbomSbomRelationships(relationshipType: $relationshipType, spdxElementId: $spdxElementId, relatedSpdxElement: $relatedSpdxElement)'; } 
 }
