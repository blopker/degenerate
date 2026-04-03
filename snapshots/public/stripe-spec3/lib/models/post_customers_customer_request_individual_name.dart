// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCustomersCustomerRequestIndividualNameVariant2 {const PostCustomersCustomerRequestIndividualNameVariant2._(this.value);

factory PostCustomersCustomerRequestIndividualNameVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerRequestIndividualNameVariant2._(json),
}; }

static const PostCustomersCustomerRequestIndividualNameVariant2 $empty = PostCustomersCustomerRequestIndividualNameVariant2._('');

static const List<PostCustomersCustomerRequestIndividualNameVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerRequestIndividualNameVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerRequestIndividualNameVariant2($value)'; } 
 }
typedef PostCustomersCustomerRequestIndividualName = OneOf2<String,PostCustomersCustomerRequestIndividualNameVariant2>;
