// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RecipientShippingWithOptionalFieldsAddressPhoneVariant2 {const RecipientShippingWithOptionalFieldsAddressPhoneVariant2._(this.value);

factory RecipientShippingWithOptionalFieldsAddressPhoneVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => RecipientShippingWithOptionalFieldsAddressPhoneVariant2._(json),
};}

static const RecipientShippingWithOptionalFieldsAddressPhoneVariant2 $empty = RecipientShippingWithOptionalFieldsAddressPhoneVariant2._('');

static const List<RecipientShippingWithOptionalFieldsAddressPhoneVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is RecipientShippingWithOptionalFieldsAddressPhoneVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'RecipientShippingWithOptionalFieldsAddressPhoneVariant2($value)';}
}

@immutable
final class RecipientShippingWithOptionalFieldsAddressPhone {
  const RecipientShippingWithOptionalFieldsAddressPhone({this.string = const Omittable.absent(),
this.recipientShippingWithOptionalFieldsAddressPhoneVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const RecipientShippingWithOptionalFieldsAddressPhone._({required this.rawValue, required this.string,
required this.recipientShippingWithOptionalFieldsAddressPhoneVariant2,});
  factory RecipientShippingWithOptionalFieldsAddressPhone.fromJson(Object? json) => RecipientShippingWithOptionalFieldsAddressPhone._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
recipientShippingWithOptionalFieldsAddressPhoneVariant2: parseAnyOfVariant<RecipientShippingWithOptionalFieldsAddressPhoneVariant2>(json, (value) => RecipientShippingWithOptionalFieldsAddressPhoneVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<RecipientShippingWithOptionalFieldsAddressPhoneVariant2> recipientShippingWithOptionalFieldsAddressPhoneVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || recipientShippingWithOptionalFieldsAddressPhoneVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (recipientShippingWithOptionalFieldsAddressPhoneVariant2.isPresent) recipientShippingWithOptionalFieldsAddressPhoneVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is RecipientShippingWithOptionalFieldsAddressPhone && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'RecipientShippingWithOptionalFieldsAddressPhone(${toJson()})';
}
