// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestOffSessionVariant2 {const PostPaymentIntentsIntentConfirmRequestOffSessionVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestOffSessionVariant2.fromJson(String json) { return switch (json) {
  'one_off' => oneOff,
  'recurring' => recurring,
  _ => PostPaymentIntentsIntentConfirmRequestOffSessionVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestOffSessionVariant2 oneOff = PostPaymentIntentsIntentConfirmRequestOffSessionVariant2._('one_off');

static const PostPaymentIntentsIntentConfirmRequestOffSessionVariant2 recurring = PostPaymentIntentsIntentConfirmRequestOffSessionVariant2._('recurring');

static const List<PostPaymentIntentsIntentConfirmRequestOffSessionVariant2> values = [oneOff, recurring];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestOffSessionVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestOffSessionVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentConfirmRequestOffSession = OneOf2<bool,PostPaymentIntentsIntentConfirmRequestOffSessionVariant2>;
