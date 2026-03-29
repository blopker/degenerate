// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secret_key_param3.dart';final class PostSetupIntentsRequestMandateDataVariant2 {const PostSetupIntentsRequestMandateDataVariant2._(this.value);

factory PostSetupIntentsRequestMandateDataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsRequestMandateDataVariant2._(json),
}; }

static const PostSetupIntentsRequestMandateDataVariant2 $empty = PostSetupIntentsRequestMandateDataVariant2._('');

static const List<PostSetupIntentsRequestMandateDataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsRequestMandateDataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsRequestMandateDataVariant2($value)'; } 
 }
typedef PostSetupIntentsRequestMandateData = OneOf2<SecretKeyParam3,PostSetupIntentsRequestMandateDataVariant2>;