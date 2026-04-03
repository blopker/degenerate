// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DestinationListResponse500Messages {const DestinationListResponse500Messages({required this.message});

factory DestinationListResponse500Messages.fromJson(Map<String, dynamic> json) { return DestinationListResponse500Messages(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
DestinationListResponse500Messages copyWith({String? message}) { return DestinationListResponse500Messages(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DestinationListResponse500Messages &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'DestinationListResponse500Messages(message: $message)'; } 
 }
