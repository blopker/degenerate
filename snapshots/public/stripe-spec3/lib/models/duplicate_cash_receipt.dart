// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DuplicateCashReceiptVariant2 {const DuplicateCashReceiptVariant2._(this.value);

factory DuplicateCashReceiptVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => DuplicateCashReceiptVariant2._(json),
};}

static const DuplicateCashReceiptVariant2 $empty = DuplicateCashReceiptVariant2._('');

static const List<DuplicateCashReceiptVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is DuplicateCashReceiptVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'DuplicateCashReceiptVariant2($value)';}
}

@immutable
final class DuplicateCashReceipt {
  const DuplicateCashReceipt({this.string = const Omittable.absent(),
this.duplicateCashReceiptVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const DuplicateCashReceipt._({required this.rawValue, required this.string,
required this.duplicateCashReceiptVariant2,});
  factory DuplicateCashReceipt.fromJson(Object? json) => DuplicateCashReceipt._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
duplicateCashReceiptVariant2: parseAnyOfVariant<DuplicateCashReceiptVariant2>(json, (value) => DuplicateCashReceiptVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<DuplicateCashReceiptVariant2> duplicateCashReceiptVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || duplicateCashReceiptVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (duplicateCashReceiptVariant2.isPresent) duplicateCashReceiptVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is DuplicateCashReceipt && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'DuplicateCashReceipt(${toJson()})';
}
