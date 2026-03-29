// GENERATED CODE - DO NOT MODIFY BY HAND

final class UrlscannerGetScanScreenshotResponse404Messages {const UrlscannerGetScanScreenshotResponse404Messages({required this.message});

factory UrlscannerGetScanScreenshotResponse404Messages.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanScreenshotResponse404Messages(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
UrlscannerGetScanScreenshotResponse404Messages copyWith({String? message}) { return UrlscannerGetScanScreenshotResponse404Messages(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanScreenshotResponse404Messages &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'UrlscannerGetScanScreenshotResponse404Messages(message: $message)'; } 
 }
