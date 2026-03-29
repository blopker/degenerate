// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetTldsResponse400Errors {const RadarGetTldsResponse400Errors({required this.message});

factory RadarGetTldsResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetTldsResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetTldsResponse400Errors copyWith({String? message}) { return RadarGetTldsResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetTldsResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetTldsResponse400Errors(message: $message)'; } 
 }
