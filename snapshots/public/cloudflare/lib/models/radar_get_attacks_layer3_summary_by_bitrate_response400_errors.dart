// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetAttacksLayer3SummaryByBitrateResponse400Errors {const RadarGetAttacksLayer3SummaryByBitrateResponse400Errors({required this.message});

factory RadarGetAttacksLayer3SummaryByBitrateResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer3SummaryByBitrateResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetAttacksLayer3SummaryByBitrateResponse400Errors copyWith({String? message}) { return RadarGetAttacksLayer3SummaryByBitrateResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer3SummaryByBitrateResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3SummaryByBitrateResponse400Errors(message: $message)'; } 
 }
