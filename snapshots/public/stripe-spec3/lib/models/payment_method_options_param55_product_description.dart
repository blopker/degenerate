// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentMethodOptionsParam55ProductDescriptionVariant2 {const PaymentMethodOptionsParam55ProductDescriptionVariant2._(this.value);

factory PaymentMethodOptionsParam55ProductDescriptionVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PaymentMethodOptionsParam55ProductDescriptionVariant2._(json),
};}

static const PaymentMethodOptionsParam55ProductDescriptionVariant2 $empty = PaymentMethodOptionsParam55ProductDescriptionVariant2._('');

static const List<PaymentMethodOptionsParam55ProductDescriptionVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PaymentMethodOptionsParam55ProductDescriptionVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PaymentMethodOptionsParam55ProductDescriptionVariant2($value)';}
}

@immutable
final class PaymentMethodOptionsParam55ProductDescription {
  const PaymentMethodOptionsParam55ProductDescription({this.string = const Omittable.absent(),
this.paymentMethodOptionsParam55ProductDescriptionVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentMethodOptionsParam55ProductDescription._({required this.rawValue, required this.string,
required this.paymentMethodOptionsParam55ProductDescriptionVariant2,});
  factory PaymentMethodOptionsParam55ProductDescription.fromJson(Object? json) => PaymentMethodOptionsParam55ProductDescription._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
paymentMethodOptionsParam55ProductDescriptionVariant2: parseAnyOfVariant<PaymentMethodOptionsParam55ProductDescriptionVariant2>(json, (value) => PaymentMethodOptionsParam55ProductDescriptionVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PaymentMethodOptionsParam55ProductDescriptionVariant2> paymentMethodOptionsParam55ProductDescriptionVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || paymentMethodOptionsParam55ProductDescriptionVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (paymentMethodOptionsParam55ProductDescriptionVariant2.isPresent) paymentMethodOptionsParam55ProductDescriptionVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentMethodOptionsParam55ProductDescription && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentMethodOptionsParam55ProductDescription(${toJson()})';
}
