// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTokensRequestPersonRelationshipPercentOwnershipVariant2 {const PostTokensRequestPersonRelationshipPercentOwnershipVariant2._(this.value);

factory PostTokensRequestPersonRelationshipPercentOwnershipVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTokensRequestPersonRelationshipPercentOwnershipVariant2._(json),
}; }

static const PostTokensRequestPersonRelationshipPercentOwnershipVariant2 $empty = PostTokensRequestPersonRelationshipPercentOwnershipVariant2._('');

static const List<PostTokensRequestPersonRelationshipPercentOwnershipVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTokensRequestPersonRelationshipPercentOwnershipVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTokensRequestPersonRelationshipPercentOwnershipVariant2($value)'; } 
 }
typedef PostTokensRequestPersonRelationshipPercentOwnership = OneOf2<double,PostTokensRequestPersonRelationshipPercentOwnershipVariant2>;
