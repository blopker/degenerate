// GENERATED CODE - DO NOT MODIFY BY HAND

import 'terminal_reader_reader_resource_custom_text.dart';/// Default text of input being collected.
final class TerminalReaderReaderResourceInputCustomText {const TerminalReaderReaderResourceInputCustomText({this.terminalReaderReaderResourceCustomText});

factory TerminalReaderReaderResourceInputCustomText.fromJson(Map<String, dynamic> json) { return TerminalReaderReaderResourceInputCustomText(
  terminalReaderReaderResourceCustomText: TerminalReaderReaderResourceCustomText.canParse(json) ? TerminalReaderReaderResourceCustomText.fromJson(json) : null,
); }

final TerminalReaderReaderResourceCustomText? terminalReaderReaderResourceCustomText;

/// At least one variant must be present.
bool get isValid { return terminalReaderReaderResourceCustomText != null; } 
Map<String, dynamic> toJson() { return {
  ...?terminalReaderReaderResourceCustomText?.toJson(),
}; } 
 }
