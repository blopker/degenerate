// GENERATED CODE - DO NOT MODIFY BY HAND

final class ActionsCreateWorkflowDispatchRequest {const ActionsCreateWorkflowDispatchRequest({required this.ref, this.inputs, this.returnRunDetails, });

factory ActionsCreateWorkflowDispatchRequest.fromJson(Map<String, dynamic> json) { return ActionsCreateWorkflowDispatchRequest(
  ref: json['ref'] as String,
  inputs: (json['inputs'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  returnRunDetails: json['return_run_details'] as bool?,
); }

/// The git reference for the workflow. The reference can be a branch or tag name.
final String ref;

/// Input keys and values configured in the workflow file. The maximum number of properties is 25. Any default properties configured in the workflow file will be used when `inputs` are omitted.
final Map<String,dynamic>? inputs;

/// Whether the response should include the workflow run ID and URLs.
final bool? returnRunDetails;

Map<String, dynamic> toJson() { return {
  'ref': ref,
  'inputs': ?inputs,
  'return_run_details': ?returnRunDetails,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('ref') && json['ref'] is String; } 
ActionsCreateWorkflowDispatchRequest copyWith({String? ref, Map<String, dynamic> Function()? inputs, bool Function()? returnRunDetails, }) { return ActionsCreateWorkflowDispatchRequest(
  ref: ref ?? this.ref,
  inputs: inputs != null ? inputs() : this.inputs,
  returnRunDetails: returnRunDetails != null ? returnRunDetails() : this.returnRunDetails,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsCreateWorkflowDispatchRequest &&
          ref == other.ref &&
          inputs == other.inputs &&
          returnRunDetails == other.returnRunDetails; } 
@override int get hashCode { return Object.hash(ref, inputs, returnRunDetails); } 
@override String toString() { return 'ActionsCreateWorkflowDispatchRequest(ref: $ref, inputs: $inputs, returnRunDetails: $returnRunDetails)'; } 
 }
