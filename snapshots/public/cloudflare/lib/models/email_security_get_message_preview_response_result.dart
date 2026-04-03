// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EmailSecurityGetMessagePreviewResponseResult {const EmailSecurityGetMessagePreviewResponseResult({required this.screenshot});

factory EmailSecurityGetMessagePreviewResponseResult.fromJson(Map<String, dynamic> json) { return EmailSecurityGetMessagePreviewResponseResult(
  screenshot: json['screenshot'] as String,
); }

/// A base64 encoded PNG image of the email.
final String screenshot;

Map<String, dynamic> toJson() { return {
  'screenshot': screenshot,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('screenshot') && json['screenshot'] is String; } 
EmailSecurityGetMessagePreviewResponseResult copyWith({String? screenshot}) { return EmailSecurityGetMessagePreviewResponseResult(
  screenshot: screenshot ?? this.screenshot,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityGetMessagePreviewResponseResult &&
          screenshot == other.screenshot; } 
@override int get hashCode { return screenshot.hashCode; } 
@override String toString() { return 'EmailSecurityGetMessagePreviewResponseResult(screenshot: $screenshot)'; } 
 }
