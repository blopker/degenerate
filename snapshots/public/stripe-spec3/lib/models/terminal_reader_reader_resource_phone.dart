// GENERATED CODE - DO NOT MODIFY BY HAND

/// Information about a phone number being collected using a reader
final class TerminalReaderReaderResourcePhone {const TerminalReaderReaderResourcePhone({this.value});

factory TerminalReaderReaderResourcePhone.fromJson(Map<String, dynamic> json) { return TerminalReaderReaderResourcePhone(
  value: json['value'] as String?,
); }

/// The collected phone number
final String? value;

Map<String, dynamic> toJson() { return {
  'value': ?value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'value'}.contains(key)); } 
TerminalReaderReaderResourcePhone copyWith({String? Function()? value}) { return TerminalReaderReaderResourcePhone(
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TerminalReaderReaderResourcePhone &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TerminalReaderReaderResourcePhone(value: $value)'; } 
 }
