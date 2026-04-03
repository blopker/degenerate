// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mcn_catalog_sync_destination_type.dart';@immutable final class McnCatalogSyncsPrebuiltPolicy {const McnCatalogSyncsPrebuiltPolicy({required this.applicableDestinations, required this.policyDescription, required this.policyName, required this.policyString, });

factory McnCatalogSyncsPrebuiltPolicy.fromJson(Map<String, dynamic> json) { return McnCatalogSyncsPrebuiltPolicy(
  applicableDestinations: (json['applicable_destinations'] as List<dynamic>).map((e) => McnCatalogSyncDestinationType.fromJson(e as String)).toList(),
  policyDescription: json['policy_description'] as String,
  policyName: json['policy_name'] as String,
  policyString: json['policy_string'] as String,
); }

final List<McnCatalogSyncDestinationType> applicableDestinations;

final String policyDescription;

final String policyName;

final String policyString;

Map<String, dynamic> toJson() { return {
  'applicable_destinations': applicableDestinations.map((e) => e.toJson()).toList(),
  'policy_description': policyDescription,
  'policy_name': policyName,
  'policy_string': policyString,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('applicable_destinations') &&
      json.containsKey('policy_description') && json['policy_description'] is String &&
      json.containsKey('policy_name') && json['policy_name'] is String &&
      json.containsKey('policy_string') && json['policy_string'] is String; } 
McnCatalogSyncsPrebuiltPolicy copyWith({List<McnCatalogSyncDestinationType>? applicableDestinations, String? policyDescription, String? policyName, String? policyString, }) { return McnCatalogSyncsPrebuiltPolicy(
  applicableDestinations: applicableDestinations ?? this.applicableDestinations,
  policyDescription: policyDescription ?? this.policyDescription,
  policyName: policyName ?? this.policyName,
  policyString: policyString ?? this.policyString,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnCatalogSyncsPrebuiltPolicy &&
          listEquals(applicableDestinations, other.applicableDestinations) &&
          policyDescription == other.policyDescription &&
          policyName == other.policyName &&
          policyString == other.policyString; } 
@override int get hashCode { return Object.hash(Object.hashAll(applicableDestinations), policyDescription, policyName, policyString); } 
@override String toString() { return 'McnCatalogSyncsPrebuiltPolicy(applicableDestinations: $applicableDestinations, policyDescription: $policyDescription, policyName: $policyName, policyString: $policyString)'; } 
 }
