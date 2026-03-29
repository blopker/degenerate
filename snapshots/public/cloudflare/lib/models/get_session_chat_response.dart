// GENERATED CODE - DO NOT MODIFY BY HAND

import 'realtimekit_chat_message.dart';final class GetSessionChatResponse {const GetSessionChatResponse({this.data, this.success, });

factory GetSessionChatResponse.fromJson(Map<String, dynamic> json) { return GetSessionChatResponse(
  data: json['data'] != null ? RealtimekitChatMessage.fromJson(json['data'] as Map<String, dynamic>) : null,
  success: json['success'] as bool?,
); }

final RealtimekitChatMessage? data;

final bool? success;

Map<String, dynamic> toJson() { return {
  if (data != null) 'data': data?.toJson(),
  'success': ?success,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
GetSessionChatResponse copyWith({RealtimekitChatMessage Function()? data, bool Function()? success, }) { return GetSessionChatResponse(
  data: data != null ? data() : this.data,
  success: success != null ? success() : this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetSessionChatResponse &&
          data == other.data &&
          success == other.success; } 
@override int get hashCode { return Object.hash(data, success); } 
@override String toString() { return 'GetSessionChatResponse(data: $data, success: $success)'; } 
 }
