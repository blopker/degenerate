// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentLinksResourceCustomTextPosition {const PaymentLinksResourceCustomTextPosition({required this.message});

factory PaymentLinksResourceCustomTextPosition.fromJson(Map<String, dynamic> json) { return PaymentLinksResourceCustomTextPosition(
  message: json['message'] as String,
); }

/// Text can be up to 1200 characters in length.
final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
PaymentLinksResourceCustomTextPosition copyWith({String? message}) { return PaymentLinksResourceCustomTextPosition(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentLinksResourceCustomTextPosition &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'PaymentLinksResourceCustomTextPosition(message: $message)'; } 
 }
