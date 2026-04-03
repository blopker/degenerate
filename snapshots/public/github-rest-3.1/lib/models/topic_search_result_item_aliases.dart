// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'topic_search_result_item_aliases_topic_relation.dart';@immutable final class TopicSearchResultItemAliases {const TopicSearchResultItemAliases({this.topicRelation});

factory TopicSearchResultItemAliases.fromJson(Map<String, dynamic> json) { return TopicSearchResultItemAliases(
  topicRelation: json['topic_relation'] != null ? TopicSearchResultItemAliasesTopicRelation.fromJson(json['topic_relation'] as Map<String, dynamic>) : null,
); }

final TopicSearchResultItemAliasesTopicRelation? topicRelation;

Map<String, dynamic> toJson() { return {
  if (topicRelation != null) 'topic_relation': topicRelation?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'topic_relation'}.contains(key)); } 
TopicSearchResultItemAliases copyWith({TopicSearchResultItemAliasesTopicRelation Function()? topicRelation}) { return TopicSearchResultItemAliases(
  topicRelation: topicRelation != null ? topicRelation() : this.topicRelation,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TopicSearchResultItemAliases &&
          topicRelation == other.topicRelation; } 
@override int get hashCode { return topicRelation.hashCode; } 
@override String toString() { return 'TopicSearchResultItemAliases(topicRelation: $topicRelation)'; } 
 }
