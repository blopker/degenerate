// GENERATED CODE - DO NOT MODIFY BY HAND

/// Information about a signature being collected using a reader
final class TerminalReaderReaderResourceSignature {const TerminalReaderReaderResourceSignature({this.value});

factory TerminalReaderReaderResourceSignature.fromJson(Map<String, dynamic> json) { return TerminalReaderReaderResourceSignature(
  value: json['value'] as String?,
); }

/// The File ID of a collected signature image
final String? value;

Map<String, dynamic> toJson() { return {
  'value': ?value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'value'}.contains(key)); } 
TerminalReaderReaderResourceSignature copyWith({String? Function()? value}) { return TerminalReaderReaderResourceSignature(
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TerminalReaderReaderResourceSignature &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TerminalReaderReaderResourceSignature(value: $value)'; } 
 }
