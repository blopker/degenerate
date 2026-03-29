// GENERATED CODE - DO NOT MODIFY BY HAND

/// Details about the Client Device Metadata to associate with the payment evaluation.
final class PostRadarPaymentEvaluationsRequestClientDeviceMetadataDetails {const PostRadarPaymentEvaluationsRequestClientDeviceMetadataDetails({required this.radarSession});

factory PostRadarPaymentEvaluationsRequestClientDeviceMetadataDetails.fromJson(Map<String, dynamic> json) { return PostRadarPaymentEvaluationsRequestClientDeviceMetadataDetails(
  radarSession: json['radar_session'] as String,
); }

final String radarSession;

Map<String, dynamic> toJson() { return {
  'radar_session': radarSession,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('radar_session') && json['radar_session'] is String; } 
PostRadarPaymentEvaluationsRequestClientDeviceMetadataDetails copyWith({String? radarSession}) { return PostRadarPaymentEvaluationsRequestClientDeviceMetadataDetails(
  radarSession: radarSession ?? this.radarSession,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostRadarPaymentEvaluationsRequestClientDeviceMetadataDetails &&
          radarSession == other.radarSession; } 
@override int get hashCode { return radarSession.hashCode; } 
@override String toString() { return 'PostRadarPaymentEvaluationsRequestClientDeviceMetadataDetails(radarSession: $radarSession)'; } 
 }
