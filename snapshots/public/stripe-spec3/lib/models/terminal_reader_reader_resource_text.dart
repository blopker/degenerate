// GENERATED CODE - DO NOT MODIFY BY HAND

/// Information about text being collected using a reader
final class TerminalReaderReaderResourceText {const TerminalReaderReaderResourceText({this.value});

factory TerminalReaderReaderResourceText.fromJson(Map<String, dynamic> json) { return TerminalReaderReaderResourceText(
  value: json['value'] as String?,
); }

/// The collected text value
final String? value;

Map<String, dynamic> toJson() { return {
  'value': ?value,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
TerminalReaderReaderResourceText copyWith({String? Function()? value}) { return TerminalReaderReaderResourceText(
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TerminalReaderReaderResourceText &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TerminalReaderReaderResourceText(value: $value)'; } 
 }
