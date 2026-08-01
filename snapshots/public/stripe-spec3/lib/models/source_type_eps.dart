// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SourceTypeEps {const SourceTypeEps({this.reference = const Omittable.absent(), this.statementDescriptor = const Omittable.absent(), });

factory SourceTypeEps.fromJson(Map<String, dynamic> json) { return SourceTypeEps(
  reference: json.containsKey('reference') ? Omittable(json['reference'] as String?) : const Omittable.absent(),
  statementDescriptor: json.containsKey('statement_descriptor') ? Omittable(json['statement_descriptor'] as String?) : const Omittable.absent(),
); }

final Omittable<String?> reference;

final Omittable<String?> statementDescriptor;

Map<String, dynamic> toJson() { return {
  if (reference.isPresent) 'reference': reference.value,
  if (statementDescriptor.isPresent) 'statement_descriptor': statementDescriptor.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'reference', 'statement_descriptor'}.contains(key)); } 
SourceTypeEps copyWith({Omittable<String?>? reference, Omittable<String?>? statementDescriptor, }) { return SourceTypeEps(
  reference: reference ?? this.reference,
  statementDescriptor: statementDescriptor ?? this.statementDescriptor,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SourceTypeEps &&
          reference == other.reference &&
          statementDescriptor == other.statementDescriptor; } 
@override int get hashCode { return Object.hash(reference, statementDescriptor); } 
@override String toString() { return 'SourceTypeEps(reference: $reference, statementDescriptor: $statementDescriptor)'; } 
 }
