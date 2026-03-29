// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'input_embedding4_text.dart';final class InputEmbedding4 {const InputEmbedding4({required this.text, this.truncateInputs = false, });

factory InputEmbedding4.fromJson(Map<String, dynamic> json) { return InputEmbedding4(
  text: OneOf2.parse(json['text'], fromA: (v) => v as String, fromB: (v) => (v as List<dynamic>).map((e) => e as String).toList(),),
  truncateInputs: json.containsKey('truncate_inputs') ? json['truncate_inputs'] as bool : false,
); }

final InputEmbedding4Text text;

/// When provided with too long context should the model error out or truncate the context to fit?
final bool truncateInputs;

Map<String, dynamic> toJson() { return {
  'text': text.toJson(),
  'truncate_inputs': truncateInputs,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('text'); } 
InputEmbedding4 copyWith({InputEmbedding4Text? text, bool Function()? truncateInputs, }) { return InputEmbedding4(
  text: text ?? this.text,
  truncateInputs: truncateInputs != null ? truncateInputs() : this.truncateInputs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InputEmbedding4 &&
          text == other.text &&
          truncateInputs == other.truncateInputs; } 
@override int get hashCode { return Object.hash(text, truncateInputs); } 
@override String toString() { return 'InputEmbedding4(text: $text, truncateInputs: $truncateInputs)'; } 
 }
