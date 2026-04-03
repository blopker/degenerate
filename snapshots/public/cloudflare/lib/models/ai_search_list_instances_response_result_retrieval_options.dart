// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_list_instances_response_result_retrieval_options_boost_by.dart';/// Controls how keyword search terms are matched. exact_match requires all terms to appear (AND); fuzzy_match returns results containing any term (OR). Defaults to exact_match.
@immutable final class AiSearchListInstancesResponseResultRetrievalOptionsKeywordMatchMode {const AiSearchListInstancesResponseResultRetrievalOptionsKeywordMatchMode._(this.value);

factory AiSearchListInstancesResponseResultRetrievalOptionsKeywordMatchMode.fromJson(String json) { return switch (json) {
  'exact_match' => exactMatch,
  'fuzzy_match' => fuzzyMatch,
  _ => AiSearchListInstancesResponseResultRetrievalOptionsKeywordMatchMode._(json),
}; }

static const AiSearchListInstancesResponseResultRetrievalOptionsKeywordMatchMode exactMatch = AiSearchListInstancesResponseResultRetrievalOptionsKeywordMatchMode._('exact_match');

static const AiSearchListInstancesResponseResultRetrievalOptionsKeywordMatchMode fuzzyMatch = AiSearchListInstancesResponseResultRetrievalOptionsKeywordMatchMode._('fuzzy_match');

static const List<AiSearchListInstancesResponseResultRetrievalOptionsKeywordMatchMode> values = [exactMatch, fuzzyMatch];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchListInstancesResponseResultRetrievalOptionsKeywordMatchMode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AiSearchListInstancesResponseResultRetrievalOptionsKeywordMatchMode($value)'; } 
 }
@immutable final class AiSearchListInstancesResponseResultRetrievalOptions {const AiSearchListInstancesResponseResultRetrievalOptions({this.boostBy, this.keywordMatchMode = AiSearchListInstancesResponseResultRetrievalOptionsKeywordMatchMode.exactMatch, });

factory AiSearchListInstancesResponseResultRetrievalOptions.fromJson(Map<String, dynamic> json) { return AiSearchListInstancesResponseResultRetrievalOptions(
  boostBy: (json['boost_by'] as List<dynamic>?)?.map((e) => AiSearchListInstancesResponseResultRetrievalOptionsBoostBy.fromJson(e as Map<String, dynamic>)).toList(),
  keywordMatchMode: json.containsKey('keyword_match_mode') ? AiSearchListInstancesResponseResultRetrievalOptionsKeywordMatchMode.fromJson(json['keyword_match_mode'] as String) : AiSearchListInstancesResponseResultRetrievalOptionsKeywordMatchMode.exactMatch,
); }

/// Metadata fields to boost search results by. Each entry specifies a metadata field and an optional direction. Direction defaults to 'asc' for numeric fields and 'exists' for text/boolean fields. Fields must match 'timestamp' or a defined custom_metadata field.
final List<AiSearchListInstancesResponseResultRetrievalOptionsBoostBy>? boostBy;

/// Controls how keyword search terms are matched. exact_match requires all terms to appear (AND); fuzzy_match returns results containing any term (OR). Defaults to exact_match.
final AiSearchListInstancesResponseResultRetrievalOptionsKeywordMatchMode keywordMatchMode;

Map<String, dynamic> toJson() { return {
  if (boostBy != null) 'boost_by': boostBy?.map((e) => e.toJson()).toList(),
  'keyword_match_mode': keywordMatchMode.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'boost_by', 'keyword_match_mode'}.contains(key)); } 
AiSearchListInstancesResponseResultRetrievalOptions copyWith({List<AiSearchListInstancesResponseResultRetrievalOptionsBoostBy> Function()? boostBy, AiSearchListInstancesResponseResultRetrievalOptionsKeywordMatchMode Function()? keywordMatchMode, }) { return AiSearchListInstancesResponseResultRetrievalOptions(
  boostBy: boostBy != null ? boostBy() : this.boostBy,
  keywordMatchMode: keywordMatchMode != null ? keywordMatchMode() : this.keywordMatchMode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchListInstancesResponseResultRetrievalOptions &&
          listEquals(boostBy, other.boostBy) &&
          keywordMatchMode == other.keywordMatchMode; } 
@override int get hashCode { return Object.hash(Object.hashAll(boostBy ?? const []), keywordMatchMode); } 
@override String toString() { return 'AiSearchListInstancesResponseResultRetrievalOptions(boostBy: $boostBy, keywordMatchMode: $keywordMatchMode)'; } 
 }
