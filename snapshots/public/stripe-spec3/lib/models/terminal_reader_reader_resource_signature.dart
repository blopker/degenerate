// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Information about a signature being collected using a reader
@immutable final class TerminalReaderReaderResourceSignature {const TerminalReaderReaderResourceSignature({this.value = const Omittable.absent()});

factory TerminalReaderReaderResourceSignature.fromJson(Map<String, dynamic> json) { return TerminalReaderReaderResourceSignature(
  value: json.containsKey('value') ? Omittable(json['value'] as String?) : const Omittable.absent(),
); }

/// The File ID of a collected signature image
final Omittable<String?> value;

Map<String, dynamic> toJson() { return {
  if (value.isPresent) 'value': value.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'value'}.contains(key)); } 
TerminalReaderReaderResourceSignature copyWith({Omittable<String?>? value}) { return TerminalReaderReaderResourceSignature(
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TerminalReaderReaderResourceSignature &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TerminalReaderReaderResourceSignature(value: $value)'; } 
 }
