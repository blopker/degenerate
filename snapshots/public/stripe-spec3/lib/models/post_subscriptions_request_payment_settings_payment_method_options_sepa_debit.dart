// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param36.dart';@immutable final class PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2 {const PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2._(this.value);

factory PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2._(json),
}; }

static const PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2 $empty = PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2._('');

static const List<PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2($value)'; } 
 }

@immutable
final class PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsSepaDebit {
  const PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsSepaDebit({this.invoicePaymentMethodOptionsParam36 = const Omittable.absent(),
this.postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsSepaDebit._({required this.rawValue, required this.invoicePaymentMethodOptionsParam36,
required this.postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2,});
  factory PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsSepaDebit.fromJson(Object? json) => PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsSepaDebit._(
    rawValue: Omittable(json),
    invoicePaymentMethodOptionsParam36: parseAnyOfVariant<InvoicePaymentMethodOptionsParam36>(json, (value) => InvoicePaymentMethodOptionsParam36.fromJson(value! as Map<String, dynamic>)),
postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2: parseAnyOfVariant<PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2>(json, (value) => PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InvoicePaymentMethodOptionsParam36> invoicePaymentMethodOptionsParam36;
final Omittable<PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2> postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => invoicePaymentMethodOptionsParam36.isPresent || postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (invoicePaymentMethodOptionsParam36.isPresent) invoicePaymentMethodOptionsParam36.value?.toJson(),
if (postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2.isPresent) postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsSepaDebit && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsSepaDebit(${toJson()})';
}
