// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetDnsAs112TimeseriesGroupByEdnsResponse400Errors {const RadarGetDnsAs112TimeseriesGroupByEdnsResponse400Errors({required this.message});

factory RadarGetDnsAs112TimeseriesGroupByEdnsResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetDnsAs112TimeseriesGroupByEdnsResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetDnsAs112TimeseriesGroupByEdnsResponse400Errors copyWith({String? message}) { return RadarGetDnsAs112TimeseriesGroupByEdnsResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsAs112TimeseriesGroupByEdnsResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesGroupByEdnsResponse400Errors(message: $message)'; } 
 }
