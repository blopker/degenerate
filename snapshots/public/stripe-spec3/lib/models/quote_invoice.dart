// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'deleted_invoice.dart';import 'invoice.dart';/// The invoice that was created from this quote.
@immutable
final class QuoteInvoice {
  const QuoteInvoice({this.string = const Omittable.absent(),
this.invoice = const Omittable.absent(),
this.deletedInvoice = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const QuoteInvoice._({required this.rawValue, required this.string,
required this.invoice,
required this.deletedInvoice,});
  factory QuoteInvoice.fromJson(Object? json) => QuoteInvoice._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
invoice: parseAnyOfVariant<Invoice>(json, (value) => Invoice.fromJson(value! as Map<String, dynamic>)),
deletedInvoice: parseAnyOfVariant<DeletedInvoice>(json, (value) => DeletedInvoice.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<Invoice> invoice;
final Omittable<DeletedInvoice> deletedInvoice;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || invoice.isPresent || deletedInvoice.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (invoice.isPresent) invoice.value?.toJson(),
if (deletedInvoice.isPresent) deletedInvoice.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is QuoteInvoice && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'QuoteInvoice(${toJson()})';
}
