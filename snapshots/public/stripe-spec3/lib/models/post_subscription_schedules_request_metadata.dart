// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionSchedulesRequestMetadataVariant2 {const PostSubscriptionSchedulesRequestMetadataVariant2._(this.value);

factory PostSubscriptionSchedulesRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionSchedulesRequestMetadataVariant2._(json),
}; }

static const PostSubscriptionSchedulesRequestMetadataVariant2 $empty = PostSubscriptionSchedulesRequestMetadataVariant2._('');

static const List<PostSubscriptionSchedulesRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionSchedulesRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesRequestMetadataVariant2($value)'; } 
 }
typedef PostSubscriptionSchedulesRequestMetadata = OneOf2<Map<String,String>,PostSubscriptionSchedulesRequestMetadataVariant2>;
