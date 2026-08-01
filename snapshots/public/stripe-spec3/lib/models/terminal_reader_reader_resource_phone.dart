// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Information about a phone number being collected using a reader
@immutable final class TerminalReaderReaderResourcePhone {const TerminalReaderReaderResourcePhone({this.value = const Omittable.absent()});

factory TerminalReaderReaderResourcePhone.fromJson(Map<String, dynamic> json) { return TerminalReaderReaderResourcePhone(
  value: json.containsKey('value') ? Omittable(json['value'] as String?) : const Omittable.absent(),
); }

/// The collected phone number
final Omittable<String?> value;

Map<String, dynamic> toJson() { return {
  if (value.isPresent) 'value': value.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'value'}.contains(key)); } 
TerminalReaderReaderResourcePhone copyWith({Omittable<String?>? value}) { return TerminalReaderReaderResourcePhone(
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TerminalReaderReaderResourcePhone &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TerminalReaderReaderResourcePhone(value: $value)'; } 
 }
