// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SmsDetails {const SmsDetails({required this.phoneNumber, this.message, });

factory SmsDetails.fromJson(Map<String, dynamic> json) { return SmsDetails(
  phoneNumber: json['phoneNumber'] as String,
  message: json['message'] as String?,
); }

final String phoneNumber;

final String? message;

Map<String, dynamic> toJson() { return {
  'phoneNumber': phoneNumber,
  'message': ?message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('phoneNumber') && json['phoneNumber'] is String; } 
SmsDetails copyWith({String? phoneNumber, String Function()? message, }) { return SmsDetails(
  phoneNumber: phoneNumber ?? this.phoneNumber,
  message: message != null ? message() : this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SmsDetails &&
          phoneNumber == other.phoneNumber &&
          message == other.message; } 
@override int get hashCode { return Object.hash(phoneNumber, message); } 
@override String toString() { return 'SmsDetails(phoneNumber: $phoneNumber, message: $message)'; } 
 }
