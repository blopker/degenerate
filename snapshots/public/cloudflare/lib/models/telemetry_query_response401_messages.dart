// GENERATED CODE - DO NOT MODIFY BY HAND

final class TelemetryQueryResponse401Messages {const TelemetryQueryResponse401Messages({required this.message});

factory TelemetryQueryResponse401Messages.fromJson(Map<String, dynamic> json) { return TelemetryQueryResponse401Messages(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
TelemetryQueryResponse401Messages copyWith({String? message}) { return TelemetryQueryResponse401Messages(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TelemetryQueryResponse401Messages &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'TelemetryQueryResponse401Messages(message: $message)'; } 
 }
