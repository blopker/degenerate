// GENERATED CODE - DO NOT MODIFY BY HAND

final class DestinationListResponseErrors {const DestinationListResponseErrors({required this.message});

factory DestinationListResponseErrors.fromJson(Map<String, dynamic> json) { return DestinationListResponseErrors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
DestinationListResponseErrors copyWith({String? message}) { return DestinationListResponseErrors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DestinationListResponseErrors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'DestinationListResponseErrors(message: $message)'; } 
 }
