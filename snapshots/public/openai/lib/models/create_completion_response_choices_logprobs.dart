// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class CreateCompletionResponseChoicesLogprobs {const CreateCompletionResponseChoicesLogprobs({this.textOffset, this.tokenLogprobs, this.tokens, this.topLogprobs, });

factory CreateCompletionResponseChoicesLogprobs.fromJson(Map<String, dynamic> json) { return CreateCompletionResponseChoicesLogprobs(
  textOffset: (json['text_offset'] as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
  tokenLogprobs: (json['token_logprobs'] as List<dynamic>?)?.map((e) => (e as num).toDouble()).toList(),
  tokens: (json['tokens'] as List<dynamic>?)?.map((e) => e as String).toList(),
  topLogprobs: (json['top_logprobs'] as List<dynamic>?)?.map((e) => (e as Map<String, dynamic>).map((k, v) => MapEntry(k, (v as num).toDouble()))).toList(),
); }

final List<int>? textOffset;

final List<double>? tokenLogprobs;

final List<String>? tokens;

final List<Map<String,double>>? topLogprobs;

Map<String, dynamic> toJson() { return {
  'text_offset': ?textOffset,
  'token_logprobs': ?tokenLogprobs,
  'tokens': ?tokens,
  if (topLogprobs != null) 'top_logprobs': topLogprobs?.map((e) => e).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'text_offset', 'token_logprobs', 'tokens', 'top_logprobs'}.contains(key)); } 
CreateCompletionResponseChoicesLogprobs copyWith({List<int> Function()? textOffset, List<double> Function()? tokenLogprobs, List<String> Function()? tokens, List<Map<String, double>> Function()? topLogprobs, }) { return CreateCompletionResponseChoicesLogprobs(
  textOffset: textOffset != null ? textOffset() : this.textOffset,
  tokenLogprobs: tokenLogprobs != null ? tokenLogprobs() : this.tokenLogprobs,
  tokens: tokens != null ? tokens() : this.tokens,
  topLogprobs: topLogprobs != null ? topLogprobs() : this.topLogprobs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateCompletionResponseChoicesLogprobs &&
          listEquals(textOffset, other.textOffset) &&
          listEquals(tokenLogprobs, other.tokenLogprobs) &&
          listEquals(tokens, other.tokens) &&
          listEquals(topLogprobs, other.topLogprobs); } 
@override int get hashCode { return Object.hash(Object.hashAll(textOffset ?? const []), Object.hashAll(tokenLogprobs ?? const []), Object.hashAll(tokens ?? const []), Object.hashAll(topLogprobs ?? const [])); } 
@override String toString() { return 'CreateCompletionResponseChoicesLogprobs(textOffset: $textOffset, tokenLogprobs: $tokenLogprobs, tokens: $tokens, topLogprobs: $topLogprobs)'; } 
 }
