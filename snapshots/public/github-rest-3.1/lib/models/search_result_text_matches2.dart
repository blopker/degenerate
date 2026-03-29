// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'search_result_text_matches2_matches.dart';final class SearchResultTextMatches2 {const SearchResultTextMatches2({this.objectUrl, this.objectType, this.property, this.fragment, this.matches, });

factory SearchResultTextMatches2.fromJson(Map<String, dynamic> json) { return SearchResultTextMatches2(
  objectUrl: json['object_url'] as String?,
  objectType: json['object_type'] as String?,
  property: json['property'] as String?,
  fragment: json['fragment'] as String?,
  matches: (json['matches'] as List<dynamic>?)?.map((e) => SearchResultTextMatches2Matches.fromJson(e as Map<String, dynamic>)).toList(),
); }

final String? objectUrl;

final String? objectType;

final String? property;

final String? fragment;

final List<SearchResultTextMatches2Matches>? matches;

Map<String, dynamic> toJson() { return {
  'object_url': ?objectUrl,
  'object_type': ?objectType,
  'property': ?property,
  'fragment': ?fragment,
  if (matches != null) 'matches': matches?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
SearchResultTextMatches2 copyWith({String Function()? objectUrl, String? Function()? objectType, String Function()? property, String Function()? fragment, List<SearchResultTextMatches2Matches> Function()? matches, }) { return SearchResultTextMatches2(
  objectUrl: objectUrl != null ? objectUrl() : this.objectUrl,
  objectType: objectType != null ? objectType() : this.objectType,
  property: property != null ? property() : this.property,
  fragment: fragment != null ? fragment() : this.fragment,
  matches: matches != null ? matches() : this.matches,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SearchResultTextMatches2 &&
          objectUrl == other.objectUrl &&
          objectType == other.objectType &&
          property == other.property &&
          fragment == other.fragment &&
          listEquals(matches, other.matches); } 
@override int get hashCode { return Object.hash(objectUrl, objectType, property, fragment, Object.hashAll(matches ?? const [])); } 
@override String toString() { return 'SearchResultTextMatches2(objectUrl: $objectUrl, objectType: $objectType, property: $property, fragment: $fragment, matches: $matches)'; } 
 }
