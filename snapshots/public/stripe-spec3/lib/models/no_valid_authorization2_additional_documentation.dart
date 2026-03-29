// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class NoValidAuthorization2AdditionalDocumentationVariant2 {const NoValidAuthorization2AdditionalDocumentationVariant2._(this.value);

factory NoValidAuthorization2AdditionalDocumentationVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => NoValidAuthorization2AdditionalDocumentationVariant2._(json),
}; }

static const NoValidAuthorization2AdditionalDocumentationVariant2 $empty = NoValidAuthorization2AdditionalDocumentationVariant2._('');

static const List<NoValidAuthorization2AdditionalDocumentationVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is NoValidAuthorization2AdditionalDocumentationVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'NoValidAuthorization2AdditionalDocumentationVariant2($value)'; } 
 }
typedef NoValidAuthorization2AdditionalDocumentation = OneOf2<String,NoValidAuthorization2AdditionalDocumentationVariant2>;