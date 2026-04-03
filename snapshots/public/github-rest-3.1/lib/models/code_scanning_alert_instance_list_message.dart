// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CodeScanningAlertInstanceListMessage {const CodeScanningAlertInstanceListMessage({this.text});

factory CodeScanningAlertInstanceListMessage.fromJson(Map<String, dynamic> json) { return CodeScanningAlertInstanceListMessage(
  text: json['text'] as String?,
); }

final String? text;

Map<String, dynamic> toJson() { return {
  'text': ?text,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'text'}.contains(key)); } 
CodeScanningAlertInstanceListMessage copyWith({String Function()? text}) { return CodeScanningAlertInstanceListMessage(
  text: text != null ? text() : this.text,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodeScanningAlertInstanceListMessage &&
          text == other.text; } 
@override int get hashCode { return text.hashCode; } 
@override String toString() { return 'CodeScanningAlertInstanceListMessage(text: $text)'; } 
 }
