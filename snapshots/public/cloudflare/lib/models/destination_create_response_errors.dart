// GENERATED CODE - DO NOT MODIFY BY HAND

final class DestinationCreateResponseErrors {const DestinationCreateResponseErrors({required this.message});

factory DestinationCreateResponseErrors.fromJson(Map<String, dynamic> json) { return DestinationCreateResponseErrors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
DestinationCreateResponseErrors copyWith({String? message}) { return DestinationCreateResponseErrors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DestinationCreateResponseErrors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'DestinationCreateResponseErrors(message: $message)'; } 
 }
