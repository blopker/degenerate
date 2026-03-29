// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostInvoicesRequestPaymentSettingsDefaultMandateVariant2 {const PostInvoicesRequestPaymentSettingsDefaultMandateVariant2._(this.value);

factory PostInvoicesRequestPaymentSettingsDefaultMandateVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesRequestPaymentSettingsDefaultMandateVariant2._(json),
}; }

static const PostInvoicesRequestPaymentSettingsDefaultMandateVariant2 $empty = PostInvoicesRequestPaymentSettingsDefaultMandateVariant2._('');

static const List<PostInvoicesRequestPaymentSettingsDefaultMandateVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesRequestPaymentSettingsDefaultMandateVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesRequestPaymentSettingsDefaultMandateVariant2($value)'; } 
 }
typedef PostInvoicesRequestPaymentSettingsDefaultMandate = OneOf2<String,PostInvoicesRequestPaymentSettingsDefaultMandateVariant2>;