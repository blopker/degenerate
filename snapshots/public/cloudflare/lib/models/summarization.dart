// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Summarization {const Summarization({required this.inputText, this.maxLength, });

factory Summarization.fromJson(Map<String, dynamic> json) {return Summarization(
  inputText: json['input_text'] as String,
  maxLength: json['max_length'] != null ? (json['max_length'] as num).toInt() : null,
);}

/// The text that you want the model to summarize
final String inputText;

/// The maximum length of the generated summary in tokens
final int? maxLength;

/// The value with the schema default applied when absent.
int get maxLengthOrDefault {return maxLength ?? 1024;}
Map<String, dynamic> toJson() {return {
  'input_text': inputText,
  'max_length': ?maxLength,
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('input_text') && json['input_text'] is String;}
Summarization copyWith({String? inputText, int? Function()? maxLength, }) {return Summarization(
  inputText: inputText ?? this.inputText,
  maxLength: maxLength != null ? maxLength() : this.maxLength,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is Summarization &&
          inputText == other.inputText &&
          maxLength == other.maxLength;}
@override int get hashCode {return Object.hash(inputText, maxLength);}
@override String toString() {return 'Summarization(inputText: $inputText, maxLength: $maxLength)';}
}
