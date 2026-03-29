// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetAttacksLayer7TimeseriesGroupByIpVersionResponse400Errors {const RadarGetAttacksLayer7TimeseriesGroupByIpVersionResponse400Errors({required this.message});

factory RadarGetAttacksLayer7TimeseriesGroupByIpVersionResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer7TimeseriesGroupByIpVersionResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetAttacksLayer7TimeseriesGroupByIpVersionResponse400Errors copyWith({String? message}) { return RadarGetAttacksLayer7TimeseriesGroupByIpVersionResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer7TimeseriesGroupByIpVersionResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7TimeseriesGroupByIpVersionResponse400Errors(message: $message)'; } 
 }
