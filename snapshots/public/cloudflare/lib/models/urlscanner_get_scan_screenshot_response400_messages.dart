// GENERATED CODE - DO NOT MODIFY BY HAND

final class UrlscannerGetScanScreenshotResponse400Messages {const UrlscannerGetScanScreenshotResponse400Messages({required this.message});

factory UrlscannerGetScanScreenshotResponse400Messages.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanScreenshotResponse400Messages(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
UrlscannerGetScanScreenshotResponse400Messages copyWith({String? message}) { return UrlscannerGetScanScreenshotResponse400Messages(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanScreenshotResponse400Messages &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'UrlscannerGetScanScreenshotResponse400Messages(message: $message)'; } 
 }
