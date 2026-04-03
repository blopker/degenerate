// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtimekit_active_session.dart';@immutable final class GetSessionsResponseData {const GetSessionsResponseData({this.sessions});

factory GetSessionsResponseData.fromJson(Map<String, dynamic> json) { return GetSessionsResponseData(
  sessions: (json['sessions'] as List<dynamic>?)?.map((e) => RealtimekitActiveSession.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<RealtimekitActiveSession>? sessions;

Map<String, dynamic> toJson() { return {
  if (sessions != null) 'sessions': sessions?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'sessions'}.contains(key)); } 
GetSessionsResponseData copyWith({List<RealtimekitActiveSession> Function()? sessions}) { return GetSessionsResponseData(
  sessions: sessions != null ? sessions() : this.sessions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetSessionsResponseData &&
          listEquals(sessions, other.sessions); } 
@override int get hashCode { return Object.hashAll(sessions ?? const []).hashCode; } 
@override String toString() { return 'GetSessionsResponseData(sessions: $sessions)'; } 
 }
