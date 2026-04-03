// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class NoValidAuthorizationAdditionalDocumentationVariant2 {const NoValidAuthorizationAdditionalDocumentationVariant2._(this.value);

factory NoValidAuthorizationAdditionalDocumentationVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => NoValidAuthorizationAdditionalDocumentationVariant2._(json),
}; }

static const NoValidAuthorizationAdditionalDocumentationVariant2 $empty = NoValidAuthorizationAdditionalDocumentationVariant2._('');

static const List<NoValidAuthorizationAdditionalDocumentationVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is NoValidAuthorizationAdditionalDocumentationVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'NoValidAuthorizationAdditionalDocumentationVariant2($value)'; } 
 }
typedef NoValidAuthorizationAdditionalDocumentation = OneOf2<String,NoValidAuthorizationAdditionalDocumentationVariant2>;
