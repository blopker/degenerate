// GENERATED CODE - DO NOT MODIFY BY HAND

final class ReposCreateDeploymentResponse202 {const ReposCreateDeploymentResponse202({this.message});

factory ReposCreateDeploymentResponse202.fromJson(Map<String, dynamic> json) { return ReposCreateDeploymentResponse202(
  message: json['message'] as String?,
); }

final String? message;

Map<String, dynamic> toJson() { return {
  'message': ?message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'message'}.contains(key)); } 
ReposCreateDeploymentResponse202 copyWith({String Function()? message}) { return ReposCreateDeploymentResponse202(
  message: message != null ? message() : this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposCreateDeploymentResponse202 &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'ReposCreateDeploymentResponse202(message: $message)'; } 
 }
