// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param2.dart';@immutable final class PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2 {const PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2._(json),
}; }

static const PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2 $empty = PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2._('');

static const List<PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2($value)'; } 
 }

@immutable
final class PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontact {
  const PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontact({this.invoicePaymentMethodOptionsParam2 = const Omittable.absent(),
this.postCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontact._({required this.rawValue, required this.invoicePaymentMethodOptionsParam2,
required this.postCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2,});
  factory PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontact.fromJson(Object? json) => PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontact._(
    rawValue: Omittable(json),
    invoicePaymentMethodOptionsParam2: parseAnyOfVariant<InvoicePaymentMethodOptionsParam2>(json, (value) => InvoicePaymentMethodOptionsParam2.fromJson(value! as Map<String, dynamic>)),
postCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2: parseAnyOfVariant<PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2>(json, (value) => PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InvoicePaymentMethodOptionsParam2> invoicePaymentMethodOptionsParam2;
final Omittable<PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2> postCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => invoicePaymentMethodOptionsParam2.isPresent || postCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (invoicePaymentMethodOptionsParam2.isPresent) invoicePaymentMethodOptionsParam2.value?.toJson(),
if (postCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2.isPresent) postCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontact && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontact(${toJson()})';
}
