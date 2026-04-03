// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Information about the current page.
@immutable final class OrgsListAttestationsBulkResponsePageInfo {const OrgsListAttestationsBulkResponsePageInfo({this.hasNext, this.hasPrevious, this.next, this.previous, });

factory OrgsListAttestationsBulkResponsePageInfo.fromJson(Map<String, dynamic> json) { return OrgsListAttestationsBulkResponsePageInfo(
  hasNext: json['has_next'] as bool?,
  hasPrevious: json['has_previous'] as bool?,
  next: json['next'] as String?,
  previous: json['previous'] as String?,
); }

/// Indicates whether there is a next page.
final bool? hasNext;

/// Indicates whether there is a previous page.
final bool? hasPrevious;

/// The cursor to the next page.
final String? next;

/// The cursor to the previous page.
final String? previous;

Map<String, dynamic> toJson() { return {
  'has_next': ?hasNext,
  'has_previous': ?hasPrevious,
  'next': ?next,
  'previous': ?previous,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'has_next', 'has_previous', 'next', 'previous'}.contains(key)); } 
OrgsListAttestationsBulkResponsePageInfo copyWith({bool Function()? hasNext, bool Function()? hasPrevious, String Function()? next, String Function()? previous, }) { return OrgsListAttestationsBulkResponsePageInfo(
  hasNext: hasNext != null ? hasNext() : this.hasNext,
  hasPrevious: hasPrevious != null ? hasPrevious() : this.hasPrevious,
  next: next != null ? next() : this.next,
  previous: previous != null ? previous() : this.previous,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OrgsListAttestationsBulkResponsePageInfo &&
          hasNext == other.hasNext &&
          hasPrevious == other.hasPrevious &&
          next == other.next &&
          previous == other.previous; } 
@override int get hashCode { return Object.hash(hasNext, hasPrevious, next, previous); } 
@override String toString() { return 'OrgsListAttestationsBulkResponsePageInfo(hasNext: $hasNext, hasPrevious: $hasPrevious, next: $next, previous: $previous)'; } 
 }
