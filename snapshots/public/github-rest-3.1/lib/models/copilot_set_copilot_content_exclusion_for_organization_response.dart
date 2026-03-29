// GENERATED CODE - DO NOT MODIFY BY HAND

final class CopilotSetCopilotContentExclusionForOrganizationResponse {const CopilotSetCopilotContentExclusionForOrganizationResponse({this.message});

factory CopilotSetCopilotContentExclusionForOrganizationResponse.fromJson(Map<String, dynamic> json) { return CopilotSetCopilotContentExclusionForOrganizationResponse(
  message: json['message'] as String?,
); }

final String? message;

Map<String, dynamic> toJson() { return {
  'message': ?message,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
CopilotSetCopilotContentExclusionForOrganizationResponse copyWith({String Function()? message}) { return CopilotSetCopilotContentExclusionForOrganizationResponse(
  message: message != null ? message() : this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CopilotSetCopilotContentExclusionForOrganizationResponse &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'CopilotSetCopilotContentExclusionForOrganizationResponse(message: $message)'; } 
 }
