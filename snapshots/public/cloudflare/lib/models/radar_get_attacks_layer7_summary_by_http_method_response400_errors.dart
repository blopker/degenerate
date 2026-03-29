// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetAttacksLayer7SummaryByHttpMethodResponse400Errors {const RadarGetAttacksLayer7SummaryByHttpMethodResponse400Errors({required this.message});

factory RadarGetAttacksLayer7SummaryByHttpMethodResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer7SummaryByHttpMethodResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetAttacksLayer7SummaryByHttpMethodResponse400Errors copyWith({String? message}) { return RadarGetAttacksLayer7SummaryByHttpMethodResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer7SummaryByHttpMethodResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7SummaryByHttpMethodResponse400Errors(message: $message)'; } 
 }
