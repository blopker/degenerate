// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DependencyGraphSpdxSbomSbomPackagesExternalRefs {const DependencyGraphSpdxSbomSbomPackagesExternalRefs({required this.referenceCategory, required this.referenceLocator, required this.referenceType, });

factory DependencyGraphSpdxSbomSbomPackagesExternalRefs.fromJson(Map<String, dynamic> json) { return DependencyGraphSpdxSbomSbomPackagesExternalRefs(
  referenceCategory: json['referenceCategory'] as String,
  referenceLocator: json['referenceLocator'] as String,
  referenceType: json['referenceType'] as String,
); }

/// The category of reference to an external resource this reference refers to.
final String referenceCategory;

/// A locator for the particular external resource this reference refers to.
final String referenceLocator;

/// The category of reference to an external resource this reference refers to.
final String referenceType;

Map<String, dynamic> toJson() { return {
  'referenceCategory': referenceCategory,
  'referenceLocator': referenceLocator,
  'referenceType': referenceType,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('referenceCategory') && json['referenceCategory'] is String &&
      json.containsKey('referenceLocator') && json['referenceLocator'] is String &&
      json.containsKey('referenceType') && json['referenceType'] is String; } 
DependencyGraphSpdxSbomSbomPackagesExternalRefs copyWith({String? referenceCategory, String? referenceLocator, String? referenceType, }) { return DependencyGraphSpdxSbomSbomPackagesExternalRefs(
  referenceCategory: referenceCategory ?? this.referenceCategory,
  referenceLocator: referenceLocator ?? this.referenceLocator,
  referenceType: referenceType ?? this.referenceType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DependencyGraphSpdxSbomSbomPackagesExternalRefs &&
          referenceCategory == other.referenceCategory &&
          referenceLocator == other.referenceLocator &&
          referenceType == other.referenceType; } 
@override int get hashCode { return Object.hash(referenceCategory, referenceLocator, referenceType); } 
@override String toString() { return 'DependencyGraphSpdxSbomSbomPackagesExternalRefs(referenceCategory: $referenceCategory, referenceLocator: $referenceLocator, referenceType: $referenceType)'; } 
 }
