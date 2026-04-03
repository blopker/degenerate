// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Duplicate2AdditionalDocumentationVariant2 {const Duplicate2AdditionalDocumentationVariant2._(this.value);

factory Duplicate2AdditionalDocumentationVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => Duplicate2AdditionalDocumentationVariant2._(json),
}; }

static const Duplicate2AdditionalDocumentationVariant2 $empty = Duplicate2AdditionalDocumentationVariant2._('');

static const List<Duplicate2AdditionalDocumentationVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Duplicate2AdditionalDocumentationVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Duplicate2AdditionalDocumentationVariant2($value)'; } 
 }
typedef Duplicate2AdditionalDocumentation = OneOf2<String,Duplicate2AdditionalDocumentationVariant2>;
