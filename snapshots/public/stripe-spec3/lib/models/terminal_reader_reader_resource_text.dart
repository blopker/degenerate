// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Information about text being collected using a reader
@immutable final class TerminalReaderReaderResourceText {const TerminalReaderReaderResourceText({this.value = const Omittable.absent()});

factory TerminalReaderReaderResourceText.fromJson(Map<String, dynamic> json) { return TerminalReaderReaderResourceText(
  value: json.containsKey('value') ? Omittable(json['value'] as String?) : const Omittable.absent(),
); }

/// The collected text value
final Omittable<String?> value;

Map<String, dynamic> toJson() { return {
  if (value.isPresent) 'value': value.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'value'}.contains(key)); } 
TerminalReaderReaderResourceText copyWith({Omittable<String?>? value}) { return TerminalReaderReaderResourceText(
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TerminalReaderReaderResourceText &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TerminalReaderReaderResourceText(value: $value)'; } 
 }
