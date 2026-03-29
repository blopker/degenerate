// GENERATED CODE - DO NOT MODIFY BY HAND

final class SearchIssuesAndPullRequestsSort {const SearchIssuesAndPullRequestsSort._(this.value);

factory SearchIssuesAndPullRequestsSort.fromJson(String json) { return switch (json) {
  'comments' => comments,
  'reactions' => reactions,
  'reactions-+1' => reactions1,
  'reactions--1' => reactions12,
  'reactions-smile' => reactionsSmile,
  'reactions-thinking_face' => reactionsThinkingFace,
  'reactions-heart' => reactionsHeart,
  'reactions-tada' => reactionsTada,
  'interactions' => interactions,
  'created' => created,
  'updated' => updated,
  _ => SearchIssuesAndPullRequestsSort._(json),
}; }

static const SearchIssuesAndPullRequestsSort comments = SearchIssuesAndPullRequestsSort._('comments');

static const SearchIssuesAndPullRequestsSort reactions = SearchIssuesAndPullRequestsSort._('reactions');

static const SearchIssuesAndPullRequestsSort reactions1 = SearchIssuesAndPullRequestsSort._('reactions-+1');

static const SearchIssuesAndPullRequestsSort reactions12 = SearchIssuesAndPullRequestsSort._('reactions--1');

static const SearchIssuesAndPullRequestsSort reactionsSmile = SearchIssuesAndPullRequestsSort._('reactions-smile');

static const SearchIssuesAndPullRequestsSort reactionsThinkingFace = SearchIssuesAndPullRequestsSort._('reactions-thinking_face');

static const SearchIssuesAndPullRequestsSort reactionsHeart = SearchIssuesAndPullRequestsSort._('reactions-heart');

static const SearchIssuesAndPullRequestsSort reactionsTada = SearchIssuesAndPullRequestsSort._('reactions-tada');

static const SearchIssuesAndPullRequestsSort interactions = SearchIssuesAndPullRequestsSort._('interactions');

static const SearchIssuesAndPullRequestsSort created = SearchIssuesAndPullRequestsSort._('created');

static const SearchIssuesAndPullRequestsSort updated = SearchIssuesAndPullRequestsSort._('updated');

static const List<SearchIssuesAndPullRequestsSort> values = [comments, reactions, reactions1, reactions12, reactionsSmile, reactionsThinkingFace, reactionsHeart, reactionsTada, interactions, created, updated];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SearchIssuesAndPullRequestsSort && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SearchIssuesAndPullRequestsSort($value)'; } 
 }
