// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice.dart';/// The most recent invoice this subscription has generated over its lifecycle (for example, when it cycles or is updated).
@immutable
final class SubscriptionLatestInvoice {
  const SubscriptionLatestInvoice({this.string = const Omittable.absent(),
this.invoice = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const SubscriptionLatestInvoice._({required this.rawValue, required this.string,
required this.invoice,});
  factory SubscriptionLatestInvoice.fromJson(Object? json) => SubscriptionLatestInvoice._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
invoice: parseAnyOfVariant<Invoice>(json, (value) => Invoice.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<Invoice> invoice;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || invoice.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (invoice.isPresent) invoice.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is SubscriptionLatestInvoice && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'SubscriptionLatestInvoice(${toJson()})';
}
