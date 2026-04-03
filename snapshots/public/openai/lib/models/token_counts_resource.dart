// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class TokenCountsResourceObject {const TokenCountsResourceObject._(this.value);

factory TokenCountsResourceObject.fromJson(String json) { return switch (json) {
  'response.input_tokens' => responseInputTokens,
  _ => TokenCountsResourceObject._(json),
}; }

static const TokenCountsResourceObject responseInputTokens = TokenCountsResourceObject._('response.input_tokens');

static const List<TokenCountsResourceObject> values = [responseInputTokens];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TokenCountsResourceObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TokenCountsResourceObject($value)'; } 
 }
@immutable final class TokenCountsResource {const TokenCountsResource({required this.inputTokens, this.object = TokenCountsResourceObject.responseInputTokens, });

factory TokenCountsResource.fromJson(Map<String, dynamic> json) { return TokenCountsResource(
  object: TokenCountsResourceObject.fromJson(json['object'] as String),
  inputTokens: (json['input_tokens'] as num).toInt(),
); }

final TokenCountsResourceObject object;

final int inputTokens;

Map<String, dynamic> toJson() { return {
  'object': object.toJson(),
  'input_tokens': inputTokens,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('object') &&
      json.containsKey('input_tokens') && json['input_tokens'] is num; } 
TokenCountsResource copyWith({TokenCountsResourceObject? object, int? inputTokens, }) { return TokenCountsResource(
  object: object ?? this.object,
  inputTokens: inputTokens ?? this.inputTokens,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TokenCountsResource &&
          object == other.object &&
          inputTokens == other.inputTokens; } 
@override int get hashCode { return Object.hash(object, inputTokens); } 
@override String toString() { return 'TokenCountsResource(object: $object, inputTokens: $inputTokens)'; } 
 }
