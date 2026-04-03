// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CodeScanningAlertInstanceMessage {const CodeScanningAlertInstanceMessage({this.text});

factory CodeScanningAlertInstanceMessage.fromJson(Map<String, dynamic> json) { return CodeScanningAlertInstanceMessage(
  text: json['text'] as String?,
); }

final String? text;

Map<String, dynamic> toJson() { return {
  'text': ?text,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'text'}.contains(key)); } 
CodeScanningAlertInstanceMessage copyWith({String Function()? text}) { return CodeScanningAlertInstanceMessage(
  text: text != null ? text() : this.text,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodeScanningAlertInstanceMessage &&
          text == other.text; } 
@override int get hashCode { return text.hashCode; } 
@override String toString() { return 'CodeScanningAlertInstanceMessage(text: $text)'; } 
 }
