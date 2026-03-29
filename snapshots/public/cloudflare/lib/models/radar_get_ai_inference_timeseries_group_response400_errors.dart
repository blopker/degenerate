// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetAiInferenceTimeseriesGroupResponse400Errors {const RadarGetAiInferenceTimeseriesGroupResponse400Errors({required this.message});

factory RadarGetAiInferenceTimeseriesGroupResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetAiInferenceTimeseriesGroupResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetAiInferenceTimeseriesGroupResponse400Errors copyWith({String? message}) { return RadarGetAiInferenceTimeseriesGroupResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAiInferenceTimeseriesGroupResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetAiInferenceTimeseriesGroupResponse400Errors(message: $message)'; } 
 }
