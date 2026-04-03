// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secret_key_param.dart';@immutable final class PostPaymentIntentsRequestMandateDataVariant2 {const PostPaymentIntentsRequestMandateDataVariant2._(this.value);

factory PostPaymentIntentsRequestMandateDataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestMandateDataVariant2._(json),
}; }

static const PostPaymentIntentsRequestMandateDataVariant2 $empty = PostPaymentIntentsRequestMandateDataVariant2._('');

static const List<PostPaymentIntentsRequestMandateDataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestMandateDataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestMandateDataVariant2($value)'; } 
 }
typedef PostPaymentIntentsRequestMandateData = OneOf2<SecretKeyParam,PostPaymentIntentsRequestMandateDataVariant2>;
