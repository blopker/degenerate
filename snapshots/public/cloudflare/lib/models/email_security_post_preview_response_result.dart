// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EmailSecurityPostPreviewResponseResult {const EmailSecurityPostPreviewResponseResult({required this.screenshot});

factory EmailSecurityPostPreviewResponseResult.fromJson(Map<String, dynamic> json) { return EmailSecurityPostPreviewResponseResult(
  screenshot: json['screenshot'] as String,
); }

/// A base64 encoded PNG image of the email.
final String screenshot;

Map<String, dynamic> toJson() { return {
  'screenshot': screenshot,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('screenshot') && json['screenshot'] is String; } 
EmailSecurityPostPreviewResponseResult copyWith({String? screenshot}) { return EmailSecurityPostPreviewResponseResult(
  screenshot: screenshot ?? this.screenshot,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityPostPreviewResponseResult &&
          screenshot == other.screenshot; } 
@override int get hashCode { return screenshot.hashCode; } 
@override String toString() { return 'EmailSecurityPostPreviewResponseResult(screenshot: $screenshot)'; } 
 }
