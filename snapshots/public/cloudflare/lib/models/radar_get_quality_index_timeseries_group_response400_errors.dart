// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetQualityIndexTimeseriesGroupResponse400Errors {const RadarGetQualityIndexTimeseriesGroupResponse400Errors({required this.message});

factory RadarGetQualityIndexTimeseriesGroupResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetQualityIndexTimeseriesGroupResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetQualityIndexTimeseriesGroupResponse400Errors copyWith({String? message}) { return RadarGetQualityIndexTimeseriesGroupResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetQualityIndexTimeseriesGroupResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetQualityIndexTimeseriesGroupResponse400Errors(message: $message)'; } 
 }
