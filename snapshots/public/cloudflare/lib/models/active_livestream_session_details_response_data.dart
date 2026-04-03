// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'active_livestream_session_details_response_data_livestream.dart';import 'active_livestream_session_details_response_data_session.dart';@immutable final class ActiveLivestreamSessionDetailsResponseData {const ActiveLivestreamSessionDetailsResponseData({this.livestream, this.session, });

factory ActiveLivestreamSessionDetailsResponseData.fromJson(Map<String, dynamic> json) { return ActiveLivestreamSessionDetailsResponseData(
  livestream: json['livestream'] != null ? ActiveLivestreamSessionDetailsResponseDataLivestream.fromJson(json['livestream'] as Map<String, dynamic>) : null,
  session: json['session'] != null ? ActiveLivestreamSessionDetailsResponseDataSession.fromJson(json['session'] as Map<String, dynamic>) : null,
); }

final ActiveLivestreamSessionDetailsResponseDataLivestream? livestream;

final ActiveLivestreamSessionDetailsResponseDataSession? session;

Map<String, dynamic> toJson() { return {
  if (livestream != null) 'livestream': livestream?.toJson(),
  if (session != null) 'session': session?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'livestream', 'session'}.contains(key)); } 
ActiveLivestreamSessionDetailsResponseData copyWith({ActiveLivestreamSessionDetailsResponseDataLivestream Function()? livestream, ActiveLivestreamSessionDetailsResponseDataSession Function()? session, }) { return ActiveLivestreamSessionDetailsResponseData(
  livestream: livestream != null ? livestream() : this.livestream,
  session: session != null ? session() : this.session,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActiveLivestreamSessionDetailsResponseData &&
          livestream == other.livestream &&
          session == other.session; } 
@override int get hashCode { return Object.hash(livestream, session); } 
@override String toString() { return 'ActiveLivestreamSessionDetailsResponseData(livestream: $livestream, session: $session)'; } 
 }
