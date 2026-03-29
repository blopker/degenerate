// GENERATED CODE - DO NOT MODIFY BY HAND

final class AiSearchInstanceSearchResponseResultChunksItem {const AiSearchInstanceSearchResponseResultChunksItem({required this.key, this.metadata, this.timestamp, });

factory AiSearchInstanceSearchResponseResultChunksItem.fromJson(Map<String, dynamic> json) { return AiSearchInstanceSearchResponseResultChunksItem(
  key: json['key'] as String,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  timestamp: json['timestamp'] != null ? (json['timestamp'] as num).toDouble() : null,
); }

final String key;

final Map<String,dynamic>? metadata;

final double? timestamp;

Map<String, dynamic> toJson() { return {
  'key': key,
  'metadata': ?metadata,
  'timestamp': ?timestamp,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('key') && json['key'] is String; } 
AiSearchInstanceSearchResponseResultChunksItem copyWith({String? key, Map<String, dynamic> Function()? metadata, double Function()? timestamp, }) { return AiSearchInstanceSearchResponseResultChunksItem(
  key: key ?? this.key,
  metadata: metadata != null ? metadata() : this.metadata,
  timestamp: timestamp != null ? timestamp() : this.timestamp,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchInstanceSearchResponseResultChunksItem &&
          key == other.key &&
          metadata == other.metadata &&
          timestamp == other.timestamp; } 
@override int get hashCode { return Object.hash(key, metadata, timestamp); } 
@override String toString() { return 'AiSearchInstanceSearchResponseResultChunksItem(key: $key, metadata: $metadata, timestamp: $timestamp)'; } 
 }
