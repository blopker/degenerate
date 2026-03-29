// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class SearchResultTextMatches2Matches {const SearchResultTextMatches2Matches({this.text, this.indices, });

factory SearchResultTextMatches2Matches.fromJson(Map<String, dynamic> json) { return SearchResultTextMatches2Matches(
  text: json['text'] as String?,
  indices: (json['indices'] as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
); }

final String? text;

final List<int>? indices;

Map<String, dynamic> toJson() { return {
  'text': ?text,
  'indices': ?indices,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'text', 'indices'}.contains(key)); } 
SearchResultTextMatches2Matches copyWith({String Function()? text, List<int> Function()? indices, }) { return SearchResultTextMatches2Matches(
  text: text != null ? text() : this.text,
  indices: indices != null ? indices() : this.indices,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SearchResultTextMatches2Matches &&
          text == other.text &&
          listEquals(indices, other.indices); } 
@override int get hashCode { return Object.hash(text, Object.hashAll(indices ?? const [])); } 
@override String toString() { return 'SearchResultTextMatches2Matches(text: $text, indices: $indices)'; } 
 }
