// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_fetch_instances_response_result_retrieval_options_boost_by.dart';/// Controls how keyword search terms are matched. exact_match requires all terms to appear (AND); fuzzy_match returns results containing any term (OR). Defaults to exact_match.
@immutable final class AiSearchFetchInstancesResponseResultRetrievalOptionsKeywordMatchMode {const AiSearchFetchInstancesResponseResultRetrievalOptionsKeywordMatchMode._(this.value);

factory AiSearchFetchInstancesResponseResultRetrievalOptionsKeywordMatchMode.fromJson(String json) { return switch (json) {
  'exact_match' => exactMatch,
  'fuzzy_match' => fuzzyMatch,
  _ => AiSearchFetchInstancesResponseResultRetrievalOptionsKeywordMatchMode._(json),
}; }

static const AiSearchFetchInstancesResponseResultRetrievalOptionsKeywordMatchMode exactMatch = AiSearchFetchInstancesResponseResultRetrievalOptionsKeywordMatchMode._('exact_match');

static const AiSearchFetchInstancesResponseResultRetrievalOptionsKeywordMatchMode fuzzyMatch = AiSearchFetchInstancesResponseResultRetrievalOptionsKeywordMatchMode._('fuzzy_match');

static const List<AiSearchFetchInstancesResponseResultRetrievalOptionsKeywordMatchMode> values = [exactMatch, fuzzyMatch];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchFetchInstancesResponseResultRetrievalOptionsKeywordMatchMode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AiSearchFetchInstancesResponseResultRetrievalOptionsKeywordMatchMode($value)'; } 
 }
@immutable final class AiSearchFetchInstancesResponseResultRetrievalOptions {const AiSearchFetchInstancesResponseResultRetrievalOptions({this.boostBy, this.keywordMatchMode = AiSearchFetchInstancesResponseResultRetrievalOptionsKeywordMatchMode.exactMatch, });

factory AiSearchFetchInstancesResponseResultRetrievalOptions.fromJson(Map<String, dynamic> json) { return AiSearchFetchInstancesResponseResultRetrievalOptions(
  boostBy: (json['boost_by'] as List<dynamic>?)?.map((e) => AiSearchFetchInstancesResponseResultRetrievalOptionsBoostBy.fromJson(e as Map<String, dynamic>)).toList(),
  keywordMatchMode: json.containsKey('keyword_match_mode') ? AiSearchFetchInstancesResponseResultRetrievalOptionsKeywordMatchMode.fromJson(json['keyword_match_mode'] as String) : AiSearchFetchInstancesResponseResultRetrievalOptionsKeywordMatchMode.exactMatch,
); }

/// Metadata fields to boost search results by. Each entry specifies a metadata field and an optional direction. Direction defaults to 'asc' for numeric fields and 'exists' for text/boolean fields. Fields must match 'timestamp' or a defined custom_metadata field.
final List<AiSearchFetchInstancesResponseResultRetrievalOptionsBoostBy>? boostBy;

/// Controls how keyword search terms are matched. exact_match requires all terms to appear (AND); fuzzy_match returns results containing any term (OR). Defaults to exact_match.
final AiSearchFetchInstancesResponseResultRetrievalOptionsKeywordMatchMode keywordMatchMode;

Map<String, dynamic> toJson() { return {
  if (boostBy != null) 'boost_by': boostBy?.map((e) => e.toJson()).toList(),
  'keyword_match_mode': keywordMatchMode.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'boost_by', 'keyword_match_mode'}.contains(key)); } 
AiSearchFetchInstancesResponseResultRetrievalOptions copyWith({List<AiSearchFetchInstancesResponseResultRetrievalOptionsBoostBy> Function()? boostBy, AiSearchFetchInstancesResponseResultRetrievalOptionsKeywordMatchMode Function()? keywordMatchMode, }) { return AiSearchFetchInstancesResponseResultRetrievalOptions(
  boostBy: boostBy != null ? boostBy() : this.boostBy,
  keywordMatchMode: keywordMatchMode != null ? keywordMatchMode() : this.keywordMatchMode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchFetchInstancesResponseResultRetrievalOptions &&
          listEquals(boostBy, other.boostBy) &&
          keywordMatchMode == other.keywordMatchMode; } 
@override int get hashCode { return Object.hash(Object.hashAll(boostBy ?? const []), keywordMatchMode); } 
@override String toString() { return 'AiSearchFetchInstancesResponseResultRetrievalOptions(boostBy: $boostBy, keywordMatchMode: $keywordMatchMode)'; } 
 }
