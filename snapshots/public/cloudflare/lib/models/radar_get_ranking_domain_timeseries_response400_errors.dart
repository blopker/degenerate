// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetRankingDomainTimeseriesResponse400Errors {const RadarGetRankingDomainTimeseriesResponse400Errors({required this.message});

factory RadarGetRankingDomainTimeseriesResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetRankingDomainTimeseriesResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetRankingDomainTimeseriesResponse400Errors copyWith({String? message}) { return RadarGetRankingDomainTimeseriesResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetRankingDomainTimeseriesResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetRankingDomainTimeseriesResponse400Errors(message: $message)'; } 
 }
