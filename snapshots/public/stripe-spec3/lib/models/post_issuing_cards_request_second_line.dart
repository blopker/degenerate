// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostIssuingCardsRequestSecondLineVariant2 {const PostIssuingCardsRequestSecondLineVariant2._(this.value);

factory PostIssuingCardsRequestSecondLineVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostIssuingCardsRequestSecondLineVariant2._(json),
}; }

static const PostIssuingCardsRequestSecondLineVariant2 $empty = PostIssuingCardsRequestSecondLineVariant2._('');

static const List<PostIssuingCardsRequestSecondLineVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingCardsRequestSecondLineVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingCardsRequestSecondLineVariant2($value)'; } 
 }
typedef PostIssuingCardsRequestSecondLine = OneOf2<String,PostIssuingCardsRequestSecondLineVariant2>;