// GENERATED CODE - DO NOT MODIFY BY HAND

/// Information about a number being collected using a reader
final class TerminalReaderReaderResourceNumeric {const TerminalReaderReaderResourceNumeric({this.value});

factory TerminalReaderReaderResourceNumeric.fromJson(Map<String, dynamic> json) { return TerminalReaderReaderResourceNumeric(
  value: json['value'] as String?,
); }

/// The collected number
final String? value;

Map<String, dynamic> toJson() { return {
  'value': ?value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'value'}.contains(key)); } 
TerminalReaderReaderResourceNumeric copyWith({String? Function()? value}) { return TerminalReaderReaderResourceNumeric(
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TerminalReaderReaderResourceNumeric &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TerminalReaderReaderResourceNumeric(value: $value)'; } 
 }
