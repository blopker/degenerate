// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param37.dart';@immutable final class PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2 {const PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2._(this.value);

factory PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2._(json),
}; }

static const PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2 $empty = PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2._('');

static const List<PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2($value)'; } 
 }

@immutable
final class PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccount {
  const PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccount({this.invoicePaymentMethodOptionsParam37 = const Omittable.absent(),
this.postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccount._({required this.rawValue, required this.invoicePaymentMethodOptionsParam37,
required this.postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2,});
  factory PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccount.fromJson(Object? json) => PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccount._(
    rawValue: Omittable(json),
    invoicePaymentMethodOptionsParam37: parseAnyOfVariant<InvoicePaymentMethodOptionsParam37>(json, (value) => InvoicePaymentMethodOptionsParam37.fromJson(value! as Map<String, dynamic>)),
postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2: parseAnyOfVariant<PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2>(json, (value) => PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InvoicePaymentMethodOptionsParam37> invoicePaymentMethodOptionsParam37;
final Omittable<PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2> postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => invoicePaymentMethodOptionsParam37.isPresent || postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (invoicePaymentMethodOptionsParam37.isPresent) invoicePaymentMethodOptionsParam37.value?.toJson(),
if (postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2.isPresent) postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccount(${toJson()})';
}
