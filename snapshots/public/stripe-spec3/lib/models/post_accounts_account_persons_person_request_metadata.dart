// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountPersonsPersonRequestMetadataVariant2 {const PostAccountsAccountPersonsPersonRequestMetadataVariant2._(this.value);

factory PostAccountsAccountPersonsPersonRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPersonsPersonRequestMetadataVariant2._(json),
}; }

static const PostAccountsAccountPersonsPersonRequestMetadataVariant2 $empty = PostAccountsAccountPersonsPersonRequestMetadataVariant2._('');

static const List<PostAccountsAccountPersonsPersonRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountPersonsPersonRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountPersonsPersonRequestMetadataVariant2($value)'; } 
 }
typedef PostAccountsAccountPersonsPersonRequestMetadata = OneOf2<Map<String,String>,PostAccountsAccountPersonsPersonRequestMetadataVariant2>;
