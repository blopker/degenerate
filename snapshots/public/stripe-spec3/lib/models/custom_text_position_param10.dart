// GENERATED CODE - DO NOT MODIFY BY HAND

final class CustomTextPositionParam10 {const CustomTextPositionParam10({required this.message});

factory CustomTextPositionParam10.fromJson(Map<String, dynamic> json) { return CustomTextPositionParam10(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
CustomTextPositionParam10 copyWith({String? message}) { return CustomTextPositionParam10(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomTextPositionParam10 &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'CustomTextPositionParam10(message: $message)'; } 
 }
