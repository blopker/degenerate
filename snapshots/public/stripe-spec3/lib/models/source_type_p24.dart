// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SourceTypeP24 {const SourceTypeP24({this.reference = const Omittable.absent()});

factory SourceTypeP24.fromJson(Map<String, dynamic> json) { return SourceTypeP24(
  reference: json.containsKey('reference') ? Omittable(json['reference'] as String?) : const Omittable.absent(),
); }

final Omittable<String?> reference;

Map<String, dynamic> toJson() { return {
  if (reference.isPresent) 'reference': reference.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'reference'}.contains(key)); } 
SourceTypeP24 copyWith({Omittable<String?>? reference}) { return SourceTypeP24(
  reference: reference ?? this.reference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SourceTypeP24 &&
          reference == other.reference; } 
@override int get hashCode { return reference.hashCode; } 
@override String toString() { return 'SourceTypeP24(reference: $reference)'; } 
 }
