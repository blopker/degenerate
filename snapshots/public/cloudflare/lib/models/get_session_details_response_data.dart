// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtimekit_active_session.dart';@immutable final class GetSessionDetailsResponseData {const GetSessionDetailsResponseData({this.session});

factory GetSessionDetailsResponseData.fromJson(Map<String, dynamic> json) { return GetSessionDetailsResponseData(
  session: json['session'] != null ? RealtimekitActiveSession.fromJson(json['session'] as Map<String, dynamic>) : null,
); }

final RealtimekitActiveSession? session;

Map<String, dynamic> toJson() { return {
  if (session != null) 'session': session?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'session'}.contains(key)); } 
GetSessionDetailsResponseData copyWith({RealtimekitActiveSession Function()? session}) { return GetSessionDetailsResponseData(
  session: session != null ? session() : this.session,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetSessionDetailsResponseData &&
          session == other.session; } 
@override int get hashCode { return session.hashCode; } 
@override String toString() { return 'GetSessionDetailsResponseData(session: $session)'; } 
 }
