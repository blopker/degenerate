import 'dart:convert';
import 'dart:typed_data';

/// Encodes values held by heterogeneous JSON containers.
Object? jsonValue(Object? value) => switch (value) {
  null || String() || num() || bool() => value,
  DateTime() => value.toIso8601String(),
  Uri() || BigInt() => value.toString(),
  Duration() => value.inMilliseconds,
  Uint8List() => base64Encode(value),
  List() => value.map(jsonValue).toList(),
  Map() => value.map((key, item) => MapEntry(key as String, jsonValue(item))),
  _ => (value as dynamic).toJson() as Object?,
};
