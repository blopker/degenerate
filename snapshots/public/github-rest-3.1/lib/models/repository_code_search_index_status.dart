// GENERATED CODE - DO NOT MODIFY BY HAND

/// The status of the code search index for this repository
final class RepositoryCodeSearchIndexStatus {const RepositoryCodeSearchIndexStatus({this.lexicalSearchOk, this.lexicalCommitSha, });

factory RepositoryCodeSearchIndexStatus.fromJson(Map<String, dynamic> json) { return RepositoryCodeSearchIndexStatus(
  lexicalSearchOk: json['lexical_search_ok'] as bool?,
  lexicalCommitSha: json['lexical_commit_sha'] as String?,
); }

final bool? lexicalSearchOk;

final String? lexicalCommitSha;

Map<String, dynamic> toJson() { return {
  'lexical_search_ok': ?lexicalSearchOk,
  'lexical_commit_sha': ?lexicalCommitSha,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
RepositoryCodeSearchIndexStatus copyWith({bool Function()? lexicalSearchOk, String Function()? lexicalCommitSha, }) { return RepositoryCodeSearchIndexStatus(
  lexicalSearchOk: lexicalSearchOk != null ? lexicalSearchOk() : this.lexicalSearchOk,
  lexicalCommitSha: lexicalCommitSha != null ? lexicalCommitSha() : this.lexicalCommitSha,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryCodeSearchIndexStatus &&
          lexicalSearchOk == other.lexicalSearchOk &&
          lexicalCommitSha == other.lexicalCommitSha; } 
@override int get hashCode { return Object.hash(lexicalSearchOk, lexicalCommitSha); } 
@override String toString() { return 'RepositoryCodeSearchIndexStatus(lexicalSearchOk: $lexicalSearchOk, lexicalCommitSha: $lexicalCommitSha)'; } 
 }
