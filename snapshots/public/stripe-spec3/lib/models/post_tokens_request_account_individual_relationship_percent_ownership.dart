// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTokensRequestAccountIndividualRelationshipPercentOwnershipVariant2 {const PostTokensRequestAccountIndividualRelationshipPercentOwnershipVariant2._(this.value);

factory PostTokensRequestAccountIndividualRelationshipPercentOwnershipVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTokensRequestAccountIndividualRelationshipPercentOwnershipVariant2._(json),
}; }

static const PostTokensRequestAccountIndividualRelationshipPercentOwnershipVariant2 $empty = PostTokensRequestAccountIndividualRelationshipPercentOwnershipVariant2._('');

static const List<PostTokensRequestAccountIndividualRelationshipPercentOwnershipVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTokensRequestAccountIndividualRelationshipPercentOwnershipVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTokensRequestAccountIndividualRelationshipPercentOwnershipVariant2($value)'; } 
 }
typedef PostTokensRequestAccountIndividualRelationshipPercentOwnership = OneOf2<double,PostTokensRequestAccountIndividualRelationshipPercentOwnershipVariant2>;
