// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice.dart';/// The invoice that was cloned.
@immutable
final class InvoicesResourceFromInvoiceInvoice {
  const InvoicesResourceFromInvoiceInvoice({this.string = const Omittable.absent(),
this.invoice = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const InvoicesResourceFromInvoiceInvoice._({required this.rawValue, required this.string,
required this.invoice,});
  factory InvoicesResourceFromInvoiceInvoice.fromJson(Object? json) => InvoicesResourceFromInvoiceInvoice._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
invoice: parseAnyOfVariant<Invoice>(json, (value) => Invoice.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<Invoice> invoice;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || invoice.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (invoice.isPresent) invoice.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is InvoicesResourceFromInvoiceInvoice && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'InvoicesResourceFromInvoiceInvoice(${toJson()})';
}
