// GENERATED CODE - DO NOT MODIFY BY HAND

final class TopicSearchResultItemRelatedTopicRelation {const TopicSearchResultItemRelatedTopicRelation({this.id, this.name, this.topicId, this.relationType, });

factory TopicSearchResultItemRelatedTopicRelation.fromJson(Map<String, dynamic> json) { return TopicSearchResultItemRelatedTopicRelation(
  id: json['id'] != null ? (json['id'] as num).toInt() : null,
  name: json['name'] as String?,
  topicId: json['topic_id'] != null ? (json['topic_id'] as num).toInt() : null,
  relationType: json['relation_type'] as String?,
); }

final int? id;

final String? name;

final int? topicId;

final String? relationType;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'name': ?name,
  'topic_id': ?topicId,
  'relation_type': ?relationType,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'name', 'topic_id', 'relation_type'}.contains(key)); } 
TopicSearchResultItemRelatedTopicRelation copyWith({int Function()? id, String Function()? name, int Function()? topicId, String Function()? relationType, }) { return TopicSearchResultItemRelatedTopicRelation(
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
  topicId: topicId != null ? topicId() : this.topicId,
  relationType: relationType != null ? relationType() : this.relationType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TopicSearchResultItemRelatedTopicRelation &&
          id == other.id &&
          name == other.name &&
          topicId == other.topicId &&
          relationType == other.relationType; } 
@override int get hashCode { return Object.hash(id, name, topicId, relationType); } 
@override String toString() { return 'TopicSearchResultItemRelatedTopicRelation(id: $id, name: $name, topicId: $topicId, relationType: $relationType)'; } 
 }
