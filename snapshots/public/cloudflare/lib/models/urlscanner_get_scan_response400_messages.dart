// GENERATED CODE - DO NOT MODIFY BY HAND

final class UrlscannerGetScanResponse400Messages {const UrlscannerGetScanResponse400Messages({required this.message});

factory UrlscannerGetScanResponse400Messages.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponse400Messages(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
UrlscannerGetScanResponse400Messages copyWith({String? message}) { return UrlscannerGetScanResponse400Messages(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponse400Messages &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'UrlscannerGetScanResponse400Messages(message: $message)'; } 
 }
