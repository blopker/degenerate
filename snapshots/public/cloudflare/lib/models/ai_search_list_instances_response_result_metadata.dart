// GENERATED CODE - DO NOT MODIFY BY HAND

final class AiSearchListInstancesResponseResultMetadata {const AiSearchListInstancesResponseResultMetadata({this.createdFromAisearchWizard, this.workerDomain, });

factory AiSearchListInstancesResponseResultMetadata.fromJson(Map<String, dynamic> json) { return AiSearchListInstancesResponseResultMetadata(
  createdFromAisearchWizard: json['created_from_aisearch_wizard'] as bool?,
  workerDomain: json['worker_domain'] as String?,
); }

final bool? createdFromAisearchWizard;

final String? workerDomain;

Map<String, dynamic> toJson() { return {
  'created_from_aisearch_wizard': ?createdFromAisearchWizard,
  'worker_domain': ?workerDomain,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'created_from_aisearch_wizard', 'worker_domain'}.contains(key)); } 
AiSearchListInstancesResponseResultMetadata copyWith({bool Function()? createdFromAisearchWizard, String Function()? workerDomain, }) { return AiSearchListInstancesResponseResultMetadata(
  createdFromAisearchWizard: createdFromAisearchWizard != null ? createdFromAisearchWizard() : this.createdFromAisearchWizard,
  workerDomain: workerDomain != null ? workerDomain() : this.workerDomain,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchListInstancesResponseResultMetadata &&
          createdFromAisearchWizard == other.createdFromAisearchWizard &&
          workerDomain == other.workerDomain; } 
@override int get hashCode { return Object.hash(createdFromAisearchWizard, workerDomain); } 
@override String toString() { return 'AiSearchListInstancesResponseResultMetadata(createdFromAisearchWizard: $createdFromAisearchWizard, workerDomain: $workerDomain)'; } 
 }
