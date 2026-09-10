// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param31.dart';@immutable final class PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2 {const PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2._(this.value);

factory PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2._(json),
};}

static const PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2 $empty = PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2._('');

static const List<PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2($value)';}
}

@immutable
final class PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebit {
  const PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebit({this.invoicePaymentMethodOptionsParam31 = const Omittable.absent(),
this.postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebit._({required this.rawValue, required this.invoicePaymentMethodOptionsParam31,
required this.postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2,});
  factory PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebit.fromJson(Object? json) => PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebit._(
    rawValue: Omittable(json),
    invoicePaymentMethodOptionsParam31: parseAnyOfVariant<InvoicePaymentMethodOptionsParam31>(json, (value) => InvoicePaymentMethodOptionsParam31.fromJson(value! as Map<String, dynamic>)),
postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2: parseAnyOfVariant<PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2>(json, (value) => PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InvoicePaymentMethodOptionsParam31> invoicePaymentMethodOptionsParam31;
final Omittable<PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2> postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => invoicePaymentMethodOptionsParam31.isPresent || postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (invoicePaymentMethodOptionsParam31.isPresent) invoicePaymentMethodOptionsParam31.value?.toJson(),
if (postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2.isPresent) postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebit && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebit(${toJson()})';
}
