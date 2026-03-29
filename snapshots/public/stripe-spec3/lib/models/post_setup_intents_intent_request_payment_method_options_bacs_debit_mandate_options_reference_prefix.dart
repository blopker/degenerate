// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefixVariant2 {const PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefixVariant2._(this.value);

factory PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefixVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefixVariant2._(json),
}; }

static const PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefixVariant2 $empty = PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefixVariant2._('');

static const List<PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefixVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefixVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefixVariant2($value)'; } 
 }
typedef PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefix = OneOf2<String,PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefixVariant2>;