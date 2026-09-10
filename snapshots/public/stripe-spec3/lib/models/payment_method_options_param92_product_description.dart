// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentMethodOptionsParam92ProductDescriptionVariant2 {const PaymentMethodOptionsParam92ProductDescriptionVariant2._(this.value);

factory PaymentMethodOptionsParam92ProductDescriptionVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PaymentMethodOptionsParam92ProductDescriptionVariant2._(json),
};}

static const PaymentMethodOptionsParam92ProductDescriptionVariant2 $empty = PaymentMethodOptionsParam92ProductDescriptionVariant2._('');

static const List<PaymentMethodOptionsParam92ProductDescriptionVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PaymentMethodOptionsParam92ProductDescriptionVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PaymentMethodOptionsParam92ProductDescriptionVariant2($value)';}
}

@immutable
final class PaymentMethodOptionsParam92ProductDescription {
  const PaymentMethodOptionsParam92ProductDescription({this.string = const Omittable.absent(),
this.paymentMethodOptionsParam92ProductDescriptionVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentMethodOptionsParam92ProductDescription._({required this.rawValue, required this.string,
required this.paymentMethodOptionsParam92ProductDescriptionVariant2,});
  factory PaymentMethodOptionsParam92ProductDescription.fromJson(Object? json) => PaymentMethodOptionsParam92ProductDescription._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
paymentMethodOptionsParam92ProductDescriptionVariant2: parseAnyOfVariant<PaymentMethodOptionsParam92ProductDescriptionVariant2>(json, (value) => PaymentMethodOptionsParam92ProductDescriptionVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PaymentMethodOptionsParam92ProductDescriptionVariant2> paymentMethodOptionsParam92ProductDescriptionVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || paymentMethodOptionsParam92ProductDescriptionVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (paymentMethodOptionsParam92ProductDescriptionVariant2.isPresent) paymentMethodOptionsParam92ProductDescriptionVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentMethodOptionsParam92ProductDescription && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentMethodOptionsParam92ProductDescription(${toJson()})';
}
