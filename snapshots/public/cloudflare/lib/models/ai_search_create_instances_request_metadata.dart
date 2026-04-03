// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AiSearchCreateInstancesRequestMetadata {const AiSearchCreateInstancesRequestMetadata({this.createdFromAisearchWizard, this.workerDomain, });

factory AiSearchCreateInstancesRequestMetadata.fromJson(Map<String, dynamic> json) { return AiSearchCreateInstancesRequestMetadata(
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
AiSearchCreateInstancesRequestMetadata copyWith({bool Function()? createdFromAisearchWizard, String Function()? workerDomain, }) { return AiSearchCreateInstancesRequestMetadata(
  createdFromAisearchWizard: createdFromAisearchWizard != null ? createdFromAisearchWizard() : this.createdFromAisearchWizard,
  workerDomain: workerDomain != null ? workerDomain() : this.workerDomain,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchCreateInstancesRequestMetadata &&
          createdFromAisearchWizard == other.createdFromAisearchWizard &&
          workerDomain == other.workerDomain; } 
@override int get hashCode { return Object.hash(createdFromAisearchWizard, workerDomain); } 
@override String toString() { return 'AiSearchCreateInstancesRequestMetadata(createdFromAisearchWizard: $createdFromAisearchWizard, workerDomain: $workerDomain)'; } 
 }
