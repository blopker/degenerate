// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_error_worker_invalid.dart';import 'workers_error_worker_name_invalid.dart';import 'workers_error_worker_name_preview_length_limit.dart';import 'workers_error_worker_name_subdomain_length_limit.dart';import 'workers_error_worker_observability_sampling_rate_invalid.dart';import 'workers_error_worker_tag_invalid.dart';import 'workers_error_worker_tag_length_limit.dart';sealed class CreateWorkerResponse400Errors {const CreateWorkerResponse400Errors();

/// Deserialize from JSON, dispatching on the `code` discriminator.
factory CreateWorkerResponse400Errors.fromJson(Map<String, dynamic> json) { return switch (json['code']) {
  'workers_ErrorWorkerNameInvalid' => CreateWorkerResponse400ErrorsWorkersErrorWorkerNameInvalid.fromJson(json),
  'workers_ErrorWorkerInvalid' => CreateWorkerResponse400ErrorsWorkersErrorWorkerInvalid.fromJson(json),
  'workers_ErrorWorkerTagLengthLimit' => CreateWorkerResponse400ErrorsWorkersErrorWorkerTagLengthLimit.fromJson(json),
  'workers_ErrorWorkerNameSubdomainLengthLimit' => CreateWorkerResponse400ErrorsWorkersErrorWorkerNameSubdomainLengthLimit.fromJson(json),
  'workers_ErrorWorkerTagInvalid' => CreateWorkerResponse400ErrorsWorkersErrorWorkerTagInvalid.fromJson(json),
  'workers_ErrorWorkerObservabilitySamplingRateInvalid' => CreateWorkerResponse400ErrorsWorkersErrorWorkerObservabilitySamplingRateInvalid.fromJson(json),
  'workers_ErrorWorkerNamePreviewLengthLimit' => CreateWorkerResponse400ErrorsWorkersErrorWorkerNamePreviewLengthLimit.fromJson(json),
  '10016' => CreateWorkerResponse400Errors10016.fromJson(json),
  '10021' => CreateWorkerResponse400Errors10021.fromJson(json),
  '100102' => CreateWorkerResponse400Errors100102.fromJson(json),
  '100132' => CreateWorkerResponse400Errors100132.fromJson(json),
  '100134' => CreateWorkerResponse400Errors100134.fromJson(json),
  '100308' => CreateWorkerResponse400Errors100308.fromJson(json),
  '100315' => CreateWorkerResponse400Errors100315.fromJson(json),
  _ => CreateWorkerResponse400Errors$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get code;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is CreateWorkerResponse400Errors$Unknown; } 
 }
@immutable final class CreateWorkerResponse400ErrorsWorkersErrorWorkerNameInvalid extends CreateWorkerResponse400Errors {const CreateWorkerResponse400ErrorsWorkersErrorWorkerNameInvalid(this.workersErrorWorkerNameInvalid);

factory CreateWorkerResponse400ErrorsWorkersErrorWorkerNameInvalid.fromJson(Map<String, dynamic> json) { return CreateWorkerResponse400ErrorsWorkersErrorWorkerNameInvalid(WorkersErrorWorkerNameInvalid.fromJson(json)); }

final WorkersErrorWorkerNameInvalid workersErrorWorkerNameInvalid;

@override String get code { return 'workers_ErrorWorkerNameInvalid'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerNameInvalid.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateWorkerResponse400ErrorsWorkersErrorWorkerNameInvalid && workersErrorWorkerNameInvalid == other.workersErrorWorkerNameInvalid; } 
@override int get hashCode { return workersErrorWorkerNameInvalid.hashCode; } 
@override String toString() { return 'CreateWorkerResponse400ErrorsWorkersErrorWorkerNameInvalid(workersErrorWorkerNameInvalid: $workersErrorWorkerNameInvalid)'; } 
 }
@immutable final class CreateWorkerResponse400ErrorsWorkersErrorWorkerInvalid extends CreateWorkerResponse400Errors {const CreateWorkerResponse400ErrorsWorkersErrorWorkerInvalid(this.workersErrorWorkerInvalid);

factory CreateWorkerResponse400ErrorsWorkersErrorWorkerInvalid.fromJson(Map<String, dynamic> json) { return CreateWorkerResponse400ErrorsWorkersErrorWorkerInvalid(WorkersErrorWorkerInvalid.fromJson(json)); }

final WorkersErrorWorkerInvalid workersErrorWorkerInvalid;

@override String get code { return 'workers_ErrorWorkerInvalid'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerInvalid.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateWorkerResponse400ErrorsWorkersErrorWorkerInvalid && workersErrorWorkerInvalid == other.workersErrorWorkerInvalid; } 
@override int get hashCode { return workersErrorWorkerInvalid.hashCode; } 
@override String toString() { return 'CreateWorkerResponse400ErrorsWorkersErrorWorkerInvalid(workersErrorWorkerInvalid: $workersErrorWorkerInvalid)'; } 
 }
@immutable final class CreateWorkerResponse400ErrorsWorkersErrorWorkerTagLengthLimit extends CreateWorkerResponse400Errors {const CreateWorkerResponse400ErrorsWorkersErrorWorkerTagLengthLimit(this.workersErrorWorkerTagLengthLimit);

factory CreateWorkerResponse400ErrorsWorkersErrorWorkerTagLengthLimit.fromJson(Map<String, dynamic> json) { return CreateWorkerResponse400ErrorsWorkersErrorWorkerTagLengthLimit(WorkersErrorWorkerTagLengthLimit.fromJson(json)); }

final WorkersErrorWorkerTagLengthLimit workersErrorWorkerTagLengthLimit;

@override String get code { return 'workers_ErrorWorkerTagLengthLimit'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerTagLengthLimit.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateWorkerResponse400ErrorsWorkersErrorWorkerTagLengthLimit && workersErrorWorkerTagLengthLimit == other.workersErrorWorkerTagLengthLimit; } 
@override int get hashCode { return workersErrorWorkerTagLengthLimit.hashCode; } 
@override String toString() { return 'CreateWorkerResponse400ErrorsWorkersErrorWorkerTagLengthLimit(workersErrorWorkerTagLengthLimit: $workersErrorWorkerTagLengthLimit)'; } 
 }
@immutable final class CreateWorkerResponse400ErrorsWorkersErrorWorkerNameSubdomainLengthLimit extends CreateWorkerResponse400Errors {const CreateWorkerResponse400ErrorsWorkersErrorWorkerNameSubdomainLengthLimit(this.workersErrorWorkerNameSubdomainLengthLimit);

factory CreateWorkerResponse400ErrorsWorkersErrorWorkerNameSubdomainLengthLimit.fromJson(Map<String, dynamic> json) { return CreateWorkerResponse400ErrorsWorkersErrorWorkerNameSubdomainLengthLimit(WorkersErrorWorkerNameSubdomainLengthLimit.fromJson(json)); }

final WorkersErrorWorkerNameSubdomainLengthLimit workersErrorWorkerNameSubdomainLengthLimit;

@override String get code { return 'workers_ErrorWorkerNameSubdomainLengthLimit'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerNameSubdomainLengthLimit.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateWorkerResponse400ErrorsWorkersErrorWorkerNameSubdomainLengthLimit && workersErrorWorkerNameSubdomainLengthLimit == other.workersErrorWorkerNameSubdomainLengthLimit; } 
@override int get hashCode { return workersErrorWorkerNameSubdomainLengthLimit.hashCode; } 
@override String toString() { return 'CreateWorkerResponse400ErrorsWorkersErrorWorkerNameSubdomainLengthLimit(workersErrorWorkerNameSubdomainLengthLimit: $workersErrorWorkerNameSubdomainLengthLimit)'; } 
 }
@immutable final class CreateWorkerResponse400ErrorsWorkersErrorWorkerTagInvalid extends CreateWorkerResponse400Errors {const CreateWorkerResponse400ErrorsWorkersErrorWorkerTagInvalid(this.workersErrorWorkerTagInvalid);

factory CreateWorkerResponse400ErrorsWorkersErrorWorkerTagInvalid.fromJson(Map<String, dynamic> json) { return CreateWorkerResponse400ErrorsWorkersErrorWorkerTagInvalid(WorkersErrorWorkerTagInvalid.fromJson(json)); }

final WorkersErrorWorkerTagInvalid workersErrorWorkerTagInvalid;

@override String get code { return 'workers_ErrorWorkerTagInvalid'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerTagInvalid.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateWorkerResponse400ErrorsWorkersErrorWorkerTagInvalid && workersErrorWorkerTagInvalid == other.workersErrorWorkerTagInvalid; } 
@override int get hashCode { return workersErrorWorkerTagInvalid.hashCode; } 
@override String toString() { return 'CreateWorkerResponse400ErrorsWorkersErrorWorkerTagInvalid(workersErrorWorkerTagInvalid: $workersErrorWorkerTagInvalid)'; } 
 }
@immutable final class CreateWorkerResponse400ErrorsWorkersErrorWorkerObservabilitySamplingRateInvalid extends CreateWorkerResponse400Errors {const CreateWorkerResponse400ErrorsWorkersErrorWorkerObservabilitySamplingRateInvalid(this.workersErrorWorkerObservabilitySamplingRateInvalid);

factory CreateWorkerResponse400ErrorsWorkersErrorWorkerObservabilitySamplingRateInvalid.fromJson(Map<String, dynamic> json) { return CreateWorkerResponse400ErrorsWorkersErrorWorkerObservabilitySamplingRateInvalid(WorkersErrorWorkerObservabilitySamplingRateInvalid.fromJson(json)); }

final WorkersErrorWorkerObservabilitySamplingRateInvalid workersErrorWorkerObservabilitySamplingRateInvalid;

@override String get code { return 'workers_ErrorWorkerObservabilitySamplingRateInvalid'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerObservabilitySamplingRateInvalid.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateWorkerResponse400ErrorsWorkersErrorWorkerObservabilitySamplingRateInvalid && workersErrorWorkerObservabilitySamplingRateInvalid == other.workersErrorWorkerObservabilitySamplingRateInvalid; } 
@override int get hashCode { return workersErrorWorkerObservabilitySamplingRateInvalid.hashCode; } 
@override String toString() { return 'CreateWorkerResponse400ErrorsWorkersErrorWorkerObservabilitySamplingRateInvalid(workersErrorWorkerObservabilitySamplingRateInvalid: $workersErrorWorkerObservabilitySamplingRateInvalid)'; } 
 }
@immutable final class CreateWorkerResponse400ErrorsWorkersErrorWorkerNamePreviewLengthLimit extends CreateWorkerResponse400Errors {const CreateWorkerResponse400ErrorsWorkersErrorWorkerNamePreviewLengthLimit(this.workersErrorWorkerNamePreviewLengthLimit);

factory CreateWorkerResponse400ErrorsWorkersErrorWorkerNamePreviewLengthLimit.fromJson(Map<String, dynamic> json) { return CreateWorkerResponse400ErrorsWorkersErrorWorkerNamePreviewLengthLimit(WorkersErrorWorkerNamePreviewLengthLimit.fromJson(json)); }

final WorkersErrorWorkerNamePreviewLengthLimit workersErrorWorkerNamePreviewLengthLimit;

@override String get code { return 'workers_ErrorWorkerNamePreviewLengthLimit'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerNamePreviewLengthLimit.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateWorkerResponse400ErrorsWorkersErrorWorkerNamePreviewLengthLimit && workersErrorWorkerNamePreviewLengthLimit == other.workersErrorWorkerNamePreviewLengthLimit; } 
@override int get hashCode { return workersErrorWorkerNamePreviewLengthLimit.hashCode; } 
@override String toString() { return 'CreateWorkerResponse400ErrorsWorkersErrorWorkerNamePreviewLengthLimit(workersErrorWorkerNamePreviewLengthLimit: $workersErrorWorkerNamePreviewLengthLimit)'; } 
 }
@immutable final class CreateWorkerResponse400Errors10016 extends CreateWorkerResponse400Errors {const CreateWorkerResponse400Errors10016(this.workersErrorWorkerNameInvalid);

factory CreateWorkerResponse400Errors10016.fromJson(Map<String, dynamic> json) { return CreateWorkerResponse400Errors10016(WorkersErrorWorkerNameInvalid.fromJson(json)); }

final WorkersErrorWorkerNameInvalid workersErrorWorkerNameInvalid;

@override String get code { return '10016'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerNameInvalid.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateWorkerResponse400Errors10016 && workersErrorWorkerNameInvalid == other.workersErrorWorkerNameInvalid; } 
@override int get hashCode { return workersErrorWorkerNameInvalid.hashCode; } 
@override String toString() { return 'CreateWorkerResponse400Errors10016(workersErrorWorkerNameInvalid: $workersErrorWorkerNameInvalid)'; } 
 }
@immutable final class CreateWorkerResponse400Errors10021 extends CreateWorkerResponse400Errors {const CreateWorkerResponse400Errors10021(this.workersErrorWorkerInvalid);

factory CreateWorkerResponse400Errors10021.fromJson(Map<String, dynamic> json) { return CreateWorkerResponse400Errors10021(WorkersErrorWorkerInvalid.fromJson(json)); }

final WorkersErrorWorkerInvalid workersErrorWorkerInvalid;

@override String get code { return '10021'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerInvalid.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateWorkerResponse400Errors10021 && workersErrorWorkerInvalid == other.workersErrorWorkerInvalid; } 
@override int get hashCode { return workersErrorWorkerInvalid.hashCode; } 
@override String toString() { return 'CreateWorkerResponse400Errors10021(workersErrorWorkerInvalid: $workersErrorWorkerInvalid)'; } 
 }
@immutable final class CreateWorkerResponse400Errors100102 extends CreateWorkerResponse400Errors {const CreateWorkerResponse400Errors100102(this.workersErrorWorkerTagLengthLimit);

factory CreateWorkerResponse400Errors100102.fromJson(Map<String, dynamic> json) { return CreateWorkerResponse400Errors100102(WorkersErrorWorkerTagLengthLimit.fromJson(json)); }

final WorkersErrorWorkerTagLengthLimit workersErrorWorkerTagLengthLimit;

@override String get code { return '100102'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerTagLengthLimit.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateWorkerResponse400Errors100102 && workersErrorWorkerTagLengthLimit == other.workersErrorWorkerTagLengthLimit; } 
@override int get hashCode { return workersErrorWorkerTagLengthLimit.hashCode; } 
@override String toString() { return 'CreateWorkerResponse400Errors100102(workersErrorWorkerTagLengthLimit: $workersErrorWorkerTagLengthLimit)'; } 
 }
@immutable final class CreateWorkerResponse400Errors100132 extends CreateWorkerResponse400Errors {const CreateWorkerResponse400Errors100132(this.workersErrorWorkerNameSubdomainLengthLimit);

factory CreateWorkerResponse400Errors100132.fromJson(Map<String, dynamic> json) { return CreateWorkerResponse400Errors100132(WorkersErrorWorkerNameSubdomainLengthLimit.fromJson(json)); }

final WorkersErrorWorkerNameSubdomainLengthLimit workersErrorWorkerNameSubdomainLengthLimit;

@override String get code { return '100132'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerNameSubdomainLengthLimit.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateWorkerResponse400Errors100132 && workersErrorWorkerNameSubdomainLengthLimit == other.workersErrorWorkerNameSubdomainLengthLimit; } 
@override int get hashCode { return workersErrorWorkerNameSubdomainLengthLimit.hashCode; } 
@override String toString() { return 'CreateWorkerResponse400Errors100132(workersErrorWorkerNameSubdomainLengthLimit: $workersErrorWorkerNameSubdomainLengthLimit)'; } 
 }
@immutable final class CreateWorkerResponse400Errors100134 extends CreateWorkerResponse400Errors {const CreateWorkerResponse400Errors100134(this.workersErrorWorkerTagInvalid);

factory CreateWorkerResponse400Errors100134.fromJson(Map<String, dynamic> json) { return CreateWorkerResponse400Errors100134(WorkersErrorWorkerTagInvalid.fromJson(json)); }

final WorkersErrorWorkerTagInvalid workersErrorWorkerTagInvalid;

@override String get code { return '100134'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerTagInvalid.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateWorkerResponse400Errors100134 && workersErrorWorkerTagInvalid == other.workersErrorWorkerTagInvalid; } 
@override int get hashCode { return workersErrorWorkerTagInvalid.hashCode; } 
@override String toString() { return 'CreateWorkerResponse400Errors100134(workersErrorWorkerTagInvalid: $workersErrorWorkerTagInvalid)'; } 
 }
@immutable final class CreateWorkerResponse400Errors100308 extends CreateWorkerResponse400Errors {const CreateWorkerResponse400Errors100308(this.workersErrorWorkerObservabilitySamplingRateInvalid);

factory CreateWorkerResponse400Errors100308.fromJson(Map<String, dynamic> json) { return CreateWorkerResponse400Errors100308(WorkersErrorWorkerObservabilitySamplingRateInvalid.fromJson(json)); }

final WorkersErrorWorkerObservabilitySamplingRateInvalid workersErrorWorkerObservabilitySamplingRateInvalid;

@override String get code { return '100308'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerObservabilitySamplingRateInvalid.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateWorkerResponse400Errors100308 && workersErrorWorkerObservabilitySamplingRateInvalid == other.workersErrorWorkerObservabilitySamplingRateInvalid; } 
@override int get hashCode { return workersErrorWorkerObservabilitySamplingRateInvalid.hashCode; } 
@override String toString() { return 'CreateWorkerResponse400Errors100308(workersErrorWorkerObservabilitySamplingRateInvalid: $workersErrorWorkerObservabilitySamplingRateInvalid)'; } 
 }
@immutable final class CreateWorkerResponse400Errors100315 extends CreateWorkerResponse400Errors {const CreateWorkerResponse400Errors100315(this.workersErrorWorkerNamePreviewLengthLimit);

factory CreateWorkerResponse400Errors100315.fromJson(Map<String, dynamic> json) { return CreateWorkerResponse400Errors100315(WorkersErrorWorkerNamePreviewLengthLimit.fromJson(json)); }

final WorkersErrorWorkerNamePreviewLengthLimit workersErrorWorkerNamePreviewLengthLimit;

@override String get code { return '100315'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerNamePreviewLengthLimit.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateWorkerResponse400Errors100315 && workersErrorWorkerNamePreviewLengthLimit == other.workersErrorWorkerNamePreviewLengthLimit; } 
@override int get hashCode { return workersErrorWorkerNamePreviewLengthLimit.hashCode; } 
@override String toString() { return 'CreateWorkerResponse400Errors100315(workersErrorWorkerNamePreviewLengthLimit: $workersErrorWorkerNamePreviewLengthLimit)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class CreateWorkerResponse400Errors$Unknown extends CreateWorkerResponse400Errors {const CreateWorkerResponse400Errors$Unknown(this.json);

final Map<String, dynamic> json;

@override String get code { return json['code'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateWorkerResponse400Errors$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'CreateWorkerResponse400Errors.unknown($json)'; } 
 }
