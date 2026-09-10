// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Information about a email being collected using a reader
@immutable final class TerminalReaderReaderResourceEmail {const TerminalReaderReaderResourceEmail({this.value = const Omittable.absent()});

factory TerminalReaderReaderResourceEmail.fromJson(Map<String, dynamic> json) { return TerminalReaderReaderResourceEmail(
  value: json.containsKey('value') ? Omittable(json['value'] as String?) : const Omittable.absent(),
); }

/// The collected email address
final Omittable<String?> value;

Map<String, dynamic> toJson() { return {
  if (value.isPresent) 'value': value.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'value'}.contains(key)); } 
TerminalReaderReaderResourceEmail copyWith({Omittable<String?>? value}) { return TerminalReaderReaderResourceEmail(
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TerminalReaderReaderResourceEmail &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TerminalReaderReaderResourceEmail(value: $value)'; } 
 }
