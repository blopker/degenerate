// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param33.dart';@immutable final class PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2 {const PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2._(this.value);

factory PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2._(json),
}; }

static const PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2 $empty = PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2._('');

static const List<PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2($value)'; } 
 }

@immutable
final class PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalance {
  const PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalance({this.invoicePaymentMethodOptionsParam33 = const Omittable.absent(),
this.postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalance._({required this.rawValue, required this.invoicePaymentMethodOptionsParam33,
required this.postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2,});
  factory PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalance.fromJson(Object? json) => PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalance._(
    rawValue: Omittable(json),
    invoicePaymentMethodOptionsParam33: parseAnyOfVariant<InvoicePaymentMethodOptionsParam33>(json, (value) => InvoicePaymentMethodOptionsParam33.fromJson(value! as Map<String, dynamic>)),
postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2: parseAnyOfVariant<PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2>(json, (value) => PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InvoicePaymentMethodOptionsParam33> invoicePaymentMethodOptionsParam33;
final Omittable<PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2> postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => invoicePaymentMethodOptionsParam33.isPresent || postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (invoicePaymentMethodOptionsParam33.isPresent) invoicePaymentMethodOptionsParam33.value?.toJson(),
if (postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2.isPresent) postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalance && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalance(${toJson()})';
}
