// GENERATED CODE - DO NOT MODIFY BY HAND

import 'topic_search_result_item_related_topic_relation.dart';final class TopicSearchResultItemRelated {const TopicSearchResultItemRelated({this.topicRelation});

factory TopicSearchResultItemRelated.fromJson(Map<String, dynamic> json) { return TopicSearchResultItemRelated(
  topicRelation: json['topic_relation'] != null ? TopicSearchResultItemRelatedTopicRelation.fromJson(json['topic_relation'] as Map<String, dynamic>) : null,
); }

final TopicSearchResultItemRelatedTopicRelation? topicRelation;

Map<String, dynamic> toJson() { return {
  if (topicRelation != null) 'topic_relation': topicRelation?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'topic_relation'}.contains(key)); } 
TopicSearchResultItemRelated copyWith({TopicSearchResultItemRelatedTopicRelation Function()? topicRelation}) { return TopicSearchResultItemRelated(
  topicRelation: topicRelation != null ? topicRelation() : this.topicRelation,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TopicSearchResultItemRelated &&
          topicRelation == other.topicRelation; } 
@override int get hashCode { return topicRelation.hashCode; } 
@override String toString() { return 'TopicSearchResultItemRelated(topicRelation: $topicRelation)'; } 
 }
