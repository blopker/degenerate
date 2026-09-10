// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param7.dart';@immutable final class PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2 {const PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2._(json),
};}

static const PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2 $empty = PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2._('');

static const List<PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2($value)';}
}

@immutable
final class PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccount {
  const PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccount({this.invoicePaymentMethodOptionsParam7 = const Omittable.absent(),
this.postCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccount._({required this.rawValue, required this.invoicePaymentMethodOptionsParam7,
required this.postCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2,});
  factory PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccount.fromJson(Object? json) => PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccount._(
    rawValue: Omittable(json),
    invoicePaymentMethodOptionsParam7: parseAnyOfVariant<InvoicePaymentMethodOptionsParam7>(json, (value) => InvoicePaymentMethodOptionsParam7.fromJson(value! as Map<String, dynamic>)),
postCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2: parseAnyOfVariant<PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2>(json, (value) => PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InvoicePaymentMethodOptionsParam7> invoicePaymentMethodOptionsParam7;
final Omittable<PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2> postCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => invoicePaymentMethodOptionsParam7.isPresent || postCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (invoicePaymentMethodOptionsParam7.isPresent) invoicePaymentMethodOptionsParam7.value?.toJson(),
if (postCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2.isPresent) postCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccount(${toJson()})';
}
