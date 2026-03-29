// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetBgpTopPrefixesResponse400Errors {const RadarGetBgpTopPrefixesResponse400Errors({required this.message});

factory RadarGetBgpTopPrefixesResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetBgpTopPrefixesResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetBgpTopPrefixesResponse400Errors copyWith({String? message}) { return RadarGetBgpTopPrefixesResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetBgpTopPrefixesResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetBgpTopPrefixesResponse400Errors(message: $message)'; } 
 }
