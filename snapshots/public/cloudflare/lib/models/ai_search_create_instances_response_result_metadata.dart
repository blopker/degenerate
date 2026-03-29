// GENERATED CODE - DO NOT MODIFY BY HAND

final class AiSearchCreateInstancesResponseResultMetadata {const AiSearchCreateInstancesResponseResultMetadata({this.createdFromAisearchWizard, this.workerDomain, });

factory AiSearchCreateInstancesResponseResultMetadata.fromJson(Map<String, dynamic> json) { return AiSearchCreateInstancesResponseResultMetadata(
  createdFromAisearchWizard: json['created_from_aisearch_wizard'] as bool?,
  workerDomain: json['worker_domain'] as String?,
); }

final bool? createdFromAisearchWizard;

final String? workerDomain;

Map<String, dynamic> toJson() { return {
  'created_from_aisearch_wizard': ?createdFromAisearchWizard,
  'worker_domain': ?workerDomain,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AiSearchCreateInstancesResponseResultMetadata copyWith({bool Function()? createdFromAisearchWizard, String Function()? workerDomain, }) { return AiSearchCreateInstancesResponseResultMetadata(
  createdFromAisearchWizard: createdFromAisearchWizard != null ? createdFromAisearchWizard() : this.createdFromAisearchWizard,
  workerDomain: workerDomain != null ? workerDomain() : this.workerDomain,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchCreateInstancesResponseResultMetadata &&
          createdFromAisearchWizard == other.createdFromAisearchWizard &&
          workerDomain == other.workerDomain; } 
@override int get hashCode { return Object.hash(createdFromAisearchWizard, workerDomain); } 
@override String toString() { return 'AiSearchCreateInstancesResponseResultMetadata(createdFromAisearchWizard: $createdFromAisearchWizard, workerDomain: $workerDomain)'; } 
 }
