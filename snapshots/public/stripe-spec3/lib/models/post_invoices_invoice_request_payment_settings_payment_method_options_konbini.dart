// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param27.dart';@immutable final class PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2 {const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2._(this.value);

factory PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2._(json),
};}

static const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2 $empty = PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2._('');

static const List<PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2($value)';}
}

@immutable
final class PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsKonbini {
  const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsKonbini({this.invoicePaymentMethodOptionsParam27 = const Omittable.absent(),
this.postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsKonbini._({required this.rawValue, required this.invoicePaymentMethodOptionsParam27,
required this.postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2,});
  factory PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsKonbini.fromJson(Object? json) => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsKonbini._(
    rawValue: Omittable(json),
    invoicePaymentMethodOptionsParam27: parseAnyOfVariant<InvoicePaymentMethodOptionsParam27>(json, (value) => InvoicePaymentMethodOptionsParam27.fromJson(value! as Map<String, dynamic>)),
postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2: parseAnyOfVariant<PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2>(json, (value) => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InvoicePaymentMethodOptionsParam27> invoicePaymentMethodOptionsParam27;
final Omittable<PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2> postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => invoicePaymentMethodOptionsParam27.isPresent || postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (invoicePaymentMethodOptionsParam27.isPresent) invoicePaymentMethodOptionsParam27.value?.toJson(),
if (postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2.isPresent) postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsKonbini && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsKonbini(${toJson()})';
}
