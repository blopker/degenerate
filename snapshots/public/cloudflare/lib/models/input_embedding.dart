// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'input_embedding_text.dart';@immutable final class InputEmbedding {const InputEmbedding({required this.text, this.truncateInputs = false, });

factory InputEmbedding.fromJson(Map<String, dynamic> json) { return InputEmbedding(
  text: OneOf2.parse(json['text'], fromA: (v) => v as String, fromB: (v) => (v as List<dynamic>).map((e) => e as String).toList(),),
  truncateInputs: json.containsKey('truncate_inputs') ? json['truncate_inputs'] as bool : false,
); }

final InputEmbeddingText text;

/// When provided with too long context should the model error out or truncate the context to fit?
final bool truncateInputs;

Map<String, dynamic> toJson() { return {
  'text': text.toJson(),
  'truncate_inputs': truncateInputs,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('text'); } 
InputEmbedding copyWith({InputEmbeddingText? text, bool Function()? truncateInputs, }) { return InputEmbedding(
  text: text ?? this.text,
  truncateInputs: truncateInputs != null ? truncateInputs() : this.truncateInputs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InputEmbedding &&
          text == other.text &&
          truncateInputs == other.truncateInputs; } 
@override int get hashCode { return Object.hash(text, truncateInputs); } 
@override String toString() { return 'InputEmbedding(text: $text, truncateInputs: $truncateInputs)'; } 
 }
