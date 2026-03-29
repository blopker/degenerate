// GENERATED CODE - DO NOT MODIFY BY HAND

final class UrlscannerGetScanHarResponse202Errors {const UrlscannerGetScanHarResponse202Errors({required this.message});

factory UrlscannerGetScanHarResponse202Errors.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanHarResponse202Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
UrlscannerGetScanHarResponse202Errors copyWith({String? message}) { return UrlscannerGetScanHarResponse202Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanHarResponse202Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'UrlscannerGetScanHarResponse202Errors(message: $message)'; } 
 }
