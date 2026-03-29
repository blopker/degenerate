// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostWebhookEndpointsWebhookEndpointRequestMetadataVariant2 {const PostWebhookEndpointsWebhookEndpointRequestMetadataVariant2._(this.value);

factory PostWebhookEndpointsWebhookEndpointRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostWebhookEndpointsWebhookEndpointRequestMetadataVariant2._(json),
}; }

static const PostWebhookEndpointsWebhookEndpointRequestMetadataVariant2 $empty = PostWebhookEndpointsWebhookEndpointRequestMetadataVariant2._('');

static const List<PostWebhookEndpointsWebhookEndpointRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostWebhookEndpointsWebhookEndpointRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostWebhookEndpointsWebhookEndpointRequestMetadataVariant2($value)'; } 
 }
typedef PostWebhookEndpointsWebhookEndpointRequestMetadata = OneOf2<Map<String,String>,PostWebhookEndpointsWebhookEndpointRequestMetadataVariant2>;