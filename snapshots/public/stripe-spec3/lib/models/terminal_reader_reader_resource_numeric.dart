// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Information about a number being collected using a reader
@immutable final class TerminalReaderReaderResourceNumeric {const TerminalReaderReaderResourceNumeric({this.value = const Omittable.absent()});

factory TerminalReaderReaderResourceNumeric.fromJson(Map<String, dynamic> json) { return TerminalReaderReaderResourceNumeric(
  value: json.containsKey('value') ? Omittable(json['value'] as String?) : const Omittable.absent(),
); }

/// The collected number
final Omittable<String?> value;

Map<String, dynamic> toJson() { return {
  if (value.isPresent) 'value': value.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'value'}.contains(key)); } 
TerminalReaderReaderResourceNumeric copyWith({Omittable<String?>? value}) { return TerminalReaderReaderResourceNumeric(
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TerminalReaderReaderResourceNumeric &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TerminalReaderReaderResourceNumeric(value: $value)'; } 
 }
