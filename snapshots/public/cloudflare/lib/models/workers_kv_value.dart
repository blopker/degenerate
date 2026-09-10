// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'dart:typed_data';import 'package:degenerate_runtime/degenerate_runtime.dart';/// A byte sequence to be stored, up to 25 MiB in length.
@immutable
final class WorkersKvValue {
  const WorkersKvValue({this.string = const Omittable.absent(),
this.uint8List = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const WorkersKvValue._({required this.rawValue, required this.string,
required this.uint8List,});
  factory WorkersKvValue.fromJson(Object? json) => WorkersKvValue._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
uint8List: parseAnyOfVariant<Uint8List>(json, (value) => base64Decode(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<Uint8List> uint8List;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || uint8List.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (uint8List.isPresent) switch (uint8List.value) { final bytes? => base64Encode(bytes), _ => null },
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is WorkersKvValue && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'WorkersKvValue(${toJson()})';
}
