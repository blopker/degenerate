// GENERATED CODE - DO NOT MODIFY BY HAND

final class GetIndicatorListResponsePropertiesIndicatorsItemsRelatedEvents {const GetIndicatorListResponsePropertiesIndicatorsItemsRelatedEvents({required this.datasetId, required this.eventId, });

factory GetIndicatorListResponsePropertiesIndicatorsItemsRelatedEvents.fromJson(Map<String, dynamic> json) { return GetIndicatorListResponsePropertiesIndicatorsItemsRelatedEvents(
  datasetId: json['datasetId'] as String,
  eventId: json['eventId'] as String,
); }

final String datasetId;

final String eventId;

Map<String, dynamic> toJson() { return {
  'datasetId': datasetId,
  'eventId': eventId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('datasetId') && json['datasetId'] is String &&
      json.containsKey('eventId') && json['eventId'] is String; } 
GetIndicatorListResponsePropertiesIndicatorsItemsRelatedEvents copyWith({String? datasetId, String? eventId, }) { return GetIndicatorListResponsePropertiesIndicatorsItemsRelatedEvents(
  datasetId: datasetId ?? this.datasetId,
  eventId: eventId ?? this.eventId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetIndicatorListResponsePropertiesIndicatorsItemsRelatedEvents &&
          datasetId == other.datasetId &&
          eventId == other.eventId; } 
@override int get hashCode { return Object.hash(datasetId, eventId); } 
@override String toString() { return 'GetIndicatorListResponsePropertiesIndicatorsItemsRelatedEvents(datasetId: $datasetId, eventId: $eventId)'; } 
 }
