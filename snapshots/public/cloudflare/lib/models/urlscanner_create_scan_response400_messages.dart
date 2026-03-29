// GENERATED CODE - DO NOT MODIFY BY HAND

final class UrlscannerCreateScanResponse400Messages {const UrlscannerCreateScanResponse400Messages({required this.message});

factory UrlscannerCreateScanResponse400Messages.fromJson(Map<String, dynamic> json) { return UrlscannerCreateScanResponse400Messages(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
UrlscannerCreateScanResponse400Messages copyWith({String? message}) { return UrlscannerCreateScanResponse400Messages(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerCreateScanResponse400Messages &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'UrlscannerCreateScanResponse400Messages(message: $message)'; } 
 }
