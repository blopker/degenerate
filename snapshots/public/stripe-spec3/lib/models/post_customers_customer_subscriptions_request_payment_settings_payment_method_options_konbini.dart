// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param4.dart';@immutable final class PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2 {const PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2._(json),
};}

static const PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2 $empty = PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2._('');

static const List<PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2($value)';}
}

@immutable
final class PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbini {
  const PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbini({this.invoicePaymentMethodOptionsParam4 = const Omittable.absent(),
this.postCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbini._({required this.rawValue, required this.invoicePaymentMethodOptionsParam4,
required this.postCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2,});
  factory PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbini.fromJson(Object? json) => PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbini._(
    rawValue: Omittable(json),
    invoicePaymentMethodOptionsParam4: parseAnyOfVariant<InvoicePaymentMethodOptionsParam4>(json, (value) => InvoicePaymentMethodOptionsParam4.fromJson(value! as Map<String, dynamic>)),
postCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2: parseAnyOfVariant<PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2>(json, (value) => PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InvoicePaymentMethodOptionsParam4> invoicePaymentMethodOptionsParam4;
final Omittable<PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2> postCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => invoicePaymentMethodOptionsParam4.isPresent || postCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (invoicePaymentMethodOptionsParam4.isPresent) invoicePaymentMethodOptionsParam4.value?.toJson(),
if (postCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2.isPresent) postCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbini && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbini(${toJson()})';
}
