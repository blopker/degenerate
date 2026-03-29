// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'input_query_and_contexts2_contexts.dart';final class InputQueryAndContexts2 {const InputQueryAndContexts2({required this.contexts, this.query, this.truncateInputs = false, });

factory InputQueryAndContexts2.fromJson(Map<String, dynamic> json) { return InputQueryAndContexts2(
  contexts: (json['contexts'] as List<dynamic>).map((e) => InputQueryAndContexts2Contexts.fromJson(e as Map<String, dynamic>)).toList(),
  query: json['query'] as String?,
  truncateInputs: json.containsKey('truncate_inputs') ? json['truncate_inputs'] as bool : false,
); }

/// List of provided contexts. Note that the index in this array is important, as the response will refer to it.
final List<InputQueryAndContexts2Contexts> contexts;

/// A query you wish to perform against the provided contexts. If no query is provided the model with respond with embeddings for contexts
final String? query;

/// When provided with too long context should the model error out or truncate the context to fit?
final bool truncateInputs;

Map<String, dynamic> toJson() { return {
  'contexts': contexts.map((e) => e.toJson()).toList(),
  'query': ?query,
  'truncate_inputs': truncateInputs,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('contexts'); } 
InputQueryAndContexts2 copyWith({List<InputQueryAndContexts2Contexts>? contexts, String Function()? query, bool Function()? truncateInputs, }) { return InputQueryAndContexts2(
  contexts: contexts ?? this.contexts,
  query: query != null ? query() : this.query,
  truncateInputs: truncateInputs != null ? truncateInputs() : this.truncateInputs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InputQueryAndContexts2 &&
          listEquals(contexts, other.contexts) &&
          query == other.query &&
          truncateInputs == other.truncateInputs; } 
@override int get hashCode { return Object.hash(Object.hashAll(contexts), query, truncateInputs); } 
@override String toString() { return 'InputQueryAndContexts2(contexts: $contexts, query: $query, truncateInputs: $truncateInputs)'; } 
 }
