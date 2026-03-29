// GENERATED CODE - DO NOT MODIFY BY HAND

final class PageBuildError {const PageBuildError({required this.message});

factory PageBuildError.fromJson(Map<String, dynamic> json) { return PageBuildError(
  message: json['message'] as String?,
); }

final String? message;

Map<String, dynamic> toJson() { return {
  'message': ?message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
PageBuildError copyWith({String? Function()? message}) { return PageBuildError(
  message: message != null ? message() : this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PageBuildError &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'PageBuildError(message: $message)'; } 
 }
