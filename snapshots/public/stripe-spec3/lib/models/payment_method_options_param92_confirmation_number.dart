// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentMethodOptionsParam92ConfirmationNumberVariant2 {const PaymentMethodOptionsParam92ConfirmationNumberVariant2._(this.value);

factory PaymentMethodOptionsParam92ConfirmationNumberVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PaymentMethodOptionsParam92ConfirmationNumberVariant2._(json),
};}

static const PaymentMethodOptionsParam92ConfirmationNumberVariant2 $empty = PaymentMethodOptionsParam92ConfirmationNumberVariant2._('');

static const List<PaymentMethodOptionsParam92ConfirmationNumberVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PaymentMethodOptionsParam92ConfirmationNumberVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PaymentMethodOptionsParam92ConfirmationNumberVariant2($value)';}
}

@immutable
final class PaymentMethodOptionsParam92ConfirmationNumber {
  const PaymentMethodOptionsParam92ConfirmationNumber({this.string = const Omittable.absent(),
this.paymentMethodOptionsParam92ConfirmationNumberVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentMethodOptionsParam92ConfirmationNumber._({required this.rawValue, required this.string,
required this.paymentMethodOptionsParam92ConfirmationNumberVariant2,});
  factory PaymentMethodOptionsParam92ConfirmationNumber.fromJson(Object? json) => PaymentMethodOptionsParam92ConfirmationNumber._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
paymentMethodOptionsParam92ConfirmationNumberVariant2: parseAnyOfVariant<PaymentMethodOptionsParam92ConfirmationNumberVariant2>(json, (value) => PaymentMethodOptionsParam92ConfirmationNumberVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PaymentMethodOptionsParam92ConfirmationNumberVariant2> paymentMethodOptionsParam92ConfirmationNumberVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || paymentMethodOptionsParam92ConfirmationNumberVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (paymentMethodOptionsParam92ConfirmationNumberVariant2.isPresent) paymentMethodOptionsParam92ConfirmationNumberVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentMethodOptionsParam92ConfirmationNumber && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentMethodOptionsParam92ConfirmationNumber(${toJson()})';
}
