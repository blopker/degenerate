// GENERATED CODE - DO NOT MODIFY BY HAND

final class UrlscannerGetScanResponse202Errors {const UrlscannerGetScanResponse202Errors({required this.message});

factory UrlscannerGetScanResponse202Errors.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponse202Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
UrlscannerGetScanResponse202Errors copyWith({String? message}) { return UrlscannerGetScanResponse202Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponse202Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'UrlscannerGetScanResponse202Errors(message: $message)'; } 
 }
