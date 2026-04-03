// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class MerchandiseNotAsDescribed2AdditionalDocumentationVariant2 {const MerchandiseNotAsDescribed2AdditionalDocumentationVariant2._(this.value);

factory MerchandiseNotAsDescribed2AdditionalDocumentationVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => MerchandiseNotAsDescribed2AdditionalDocumentationVariant2._(json),
}; }

static const MerchandiseNotAsDescribed2AdditionalDocumentationVariant2 $empty = MerchandiseNotAsDescribed2AdditionalDocumentationVariant2._('');

static const List<MerchandiseNotAsDescribed2AdditionalDocumentationVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MerchandiseNotAsDescribed2AdditionalDocumentationVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MerchandiseNotAsDescribed2AdditionalDocumentationVariant2($value)'; } 
 }
typedef MerchandiseNotAsDescribed2AdditionalDocumentation = OneOf2<String,MerchandiseNotAsDescribed2AdditionalDocumentationVariant2>;
