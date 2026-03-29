// GENERATED CODE - DO NOT MODIFY BY HAND

import 'livestream_session_livestream_id_response_data_livestream.dart';import 'livestream_session_livestream_id_response_data_paging.dart';import 'livestream_session_livestream_id_response_data_session.dart';final class LivestreamSessionLivestreamIdResponseData {const LivestreamSessionLivestreamIdResponseData({this.livestream, this.paging, this.session, });

factory LivestreamSessionLivestreamIdResponseData.fromJson(Map<String, dynamic> json) { return LivestreamSessionLivestreamIdResponseData(
  livestream: json['livestream'] != null ? LivestreamSessionLivestreamIdResponseDataLivestream.fromJson(json['livestream'] as Map<String, dynamic>) : null,
  paging: json['paging'] != null ? LivestreamSessionLivestreamIdResponseDataPaging.fromJson(json['paging'] as Map<String, dynamic>) : null,
  session: json['session'] != null ? LivestreamSessionLivestreamIdResponseDataSession.fromJson(json['session'] as Map<String, dynamic>) : null,
); }

final LivestreamSessionLivestreamIdResponseDataLivestream? livestream;

final LivestreamSessionLivestreamIdResponseDataPaging? paging;

final LivestreamSessionLivestreamIdResponseDataSession? session;

Map<String, dynamic> toJson() { return {
  if (livestream != null) 'livestream': livestream?.toJson(),
  if (paging != null) 'paging': paging?.toJson(),
  if (session != null) 'session': session?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
LivestreamSessionLivestreamIdResponseData copyWith({LivestreamSessionLivestreamIdResponseDataLivestream Function()? livestream, LivestreamSessionLivestreamIdResponseDataPaging Function()? paging, LivestreamSessionLivestreamIdResponseDataSession Function()? session, }) { return LivestreamSessionLivestreamIdResponseData(
  livestream: livestream != null ? livestream() : this.livestream,
  paging: paging != null ? paging() : this.paging,
  session: session != null ? session() : this.session,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LivestreamSessionLivestreamIdResponseData &&
          livestream == other.livestream &&
          paging == other.paging &&
          session == other.session; } 
@override int get hashCode { return Object.hash(livestream, paging, session); } 
@override String toString() { return 'LivestreamSessionLivestreamIdResponseData(livestream: $livestream, paging: $paging, session: $session)'; } 
 }
