// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'charge.dart';/// Charge that is being refunded.
@immutable
final class TerminalReaderReaderResourceRefundPaymentActionCharge {
  const TerminalReaderReaderResourceRefundPaymentActionCharge({this.string = const Omittable.absent(),
this.charge = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const TerminalReaderReaderResourceRefundPaymentActionCharge._({required this.rawValue, required this.string,
required this.charge,});
  factory TerminalReaderReaderResourceRefundPaymentActionCharge.fromJson(Object? json) => TerminalReaderReaderResourceRefundPaymentActionCharge._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
charge: parseAnyOfVariant<Charge>(json, (value) => Charge.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<Charge> charge;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || charge.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (charge.isPresent) charge.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is TerminalReaderReaderResourceRefundPaymentActionCharge && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'TerminalReaderReaderResourceRefundPaymentActionCharge(${toJson()})';
}
