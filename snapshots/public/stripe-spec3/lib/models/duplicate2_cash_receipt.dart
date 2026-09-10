// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Duplicate2CashReceiptVariant2 {const Duplicate2CashReceiptVariant2._(this.value);

factory Duplicate2CashReceiptVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => Duplicate2CashReceiptVariant2._(json),
};}

static const Duplicate2CashReceiptVariant2 $empty = Duplicate2CashReceiptVariant2._('');

static const List<Duplicate2CashReceiptVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is Duplicate2CashReceiptVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'Duplicate2CashReceiptVariant2($value)';}
}

@immutable
final class Duplicate2CashReceipt {
  const Duplicate2CashReceipt({this.string = const Omittable.absent(),
this.duplicate2CashReceiptVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const Duplicate2CashReceipt._({required this.rawValue, required this.string,
required this.duplicate2CashReceiptVariant2,});
  factory Duplicate2CashReceipt.fromJson(Object? json) => Duplicate2CashReceipt._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
duplicate2CashReceiptVariant2: parseAnyOfVariant<Duplicate2CashReceiptVariant2>(json, (value) => Duplicate2CashReceiptVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<Duplicate2CashReceiptVariant2> duplicate2CashReceiptVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || duplicate2CashReceiptVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (duplicate2CashReceiptVariant2.isPresent) duplicate2CashReceiptVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is Duplicate2CashReceipt && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'Duplicate2CashReceipt(${toJson()})';
}
