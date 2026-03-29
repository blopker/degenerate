// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetBgpPfx2asResponse400Errors {const RadarGetBgpPfx2asResponse400Errors({required this.message});

factory RadarGetBgpPfx2asResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetBgpPfx2asResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetBgpPfx2asResponse400Errors copyWith({String? message}) { return RadarGetBgpPfx2asResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetBgpPfx2asResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetBgpPfx2asResponse400Errors(message: $message)'; } 
 }
