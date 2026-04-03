// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'n5_request3_variant2_requests_text.dart';/// The pooling method used in the embedding process. `cls` pooling will generate more accurate embeddings on larger inputs - however, embeddings created with cls pooling are not compatible with embeddings generated with mean pooling. The default pooling method is `mean` in order for this to not be a breaking change, but we highly suggest using the new `cls` pooling for better accuracy.
@immutable final class $5Request3Variant2RequestsPooling {const $5Request3Variant2RequestsPooling._(this.value);

factory $5Request3Variant2RequestsPooling.fromJson(String json) { return switch (json) {
  'mean' => mean,
  'cls' => cls,
  _ => $5Request3Variant2RequestsPooling._(json),
}; }

static const $5Request3Variant2RequestsPooling mean = $5Request3Variant2RequestsPooling._('mean');

static const $5Request3Variant2RequestsPooling cls = $5Request3Variant2RequestsPooling._('cls');

static const List<$5Request3Variant2RequestsPooling> values = [mean, cls];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is $5Request3Variant2RequestsPooling && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return '\$5Request3Variant2RequestsPooling($value)'; } 
 }
@immutable final class $5Request3Variant2Requests {const $5Request3Variant2Requests({required this.text, this.pooling = $5Request3Variant2RequestsPooling.mean, });

factory $5Request3Variant2Requests.fromJson(Map<String, dynamic> json) { return $5Request3Variant2Requests(
  pooling: json.containsKey('pooling') ? $5Request3Variant2RequestsPooling.fromJson(json['pooling'] as String) : $5Request3Variant2RequestsPooling.mean,
  text: OneOf2.parse(json['text'], fromA: (v) => v as String, fromB: (v) => (v as List<dynamic>).map((e) => e as String).toList(),),
); }

/// The pooling method used in the embedding process. `cls` pooling will generate more accurate embeddings on larger inputs - however, embeddings created with cls pooling are not compatible with embeddings generated with mean pooling. The default pooling method is `mean` in order for this to not be a breaking change, but we highly suggest using the new `cls` pooling for better accuracy.
final $5Request3Variant2RequestsPooling pooling;

final $5Request3Variant2RequestsText text;

Map<String, dynamic> toJson() { return {
  'pooling': pooling.toJson(),
  'text': text.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('text'); } 
$5Request3Variant2Requests copyWith({$5Request3Variant2RequestsPooling Function()? pooling, $5Request3Variant2RequestsText? text, }) { return $5Request3Variant2Requests(
  pooling: pooling != null ? pooling() : this.pooling,
  text: text ?? this.text,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is $5Request3Variant2Requests &&
          pooling == other.pooling &&
          text == other.text; } 
@override int get hashCode { return Object.hash(pooling, text); } 
@override String toString() { return '\$5Request3Variant2Requests(pooling: $pooling, text: $text)'; } 
 }
