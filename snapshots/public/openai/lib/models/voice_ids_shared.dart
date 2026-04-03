// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class VoiceIdsSharedVariant2 {const VoiceIdsSharedVariant2._(this.value);

factory VoiceIdsSharedVariant2.fromJson(String json) { return switch (json) {
  'alloy' => alloy,
  'ash' => ash,
  'ballad' => ballad,
  'coral' => coral,
  'echo' => echo,
  'sage' => sage,
  'shimmer' => shimmer,
  'verse' => verse,
  'marin' => marin,
  'cedar' => cedar,
  _ => VoiceIdsSharedVariant2._(json),
}; }

static const VoiceIdsSharedVariant2 alloy = VoiceIdsSharedVariant2._('alloy');

static const VoiceIdsSharedVariant2 ash = VoiceIdsSharedVariant2._('ash');

static const VoiceIdsSharedVariant2 ballad = VoiceIdsSharedVariant2._('ballad');

static const VoiceIdsSharedVariant2 coral = VoiceIdsSharedVariant2._('coral');

static const VoiceIdsSharedVariant2 echo = VoiceIdsSharedVariant2._('echo');

static const VoiceIdsSharedVariant2 sage = VoiceIdsSharedVariant2._('sage');

static const VoiceIdsSharedVariant2 shimmer = VoiceIdsSharedVariant2._('shimmer');

static const VoiceIdsSharedVariant2 verse = VoiceIdsSharedVariant2._('verse');

static const VoiceIdsSharedVariant2 marin = VoiceIdsSharedVariant2._('marin');

static const VoiceIdsSharedVariant2 cedar = VoiceIdsSharedVariant2._('cedar');

static const List<VoiceIdsSharedVariant2> values = [alloy, ash, ballad, coral, echo, sage, shimmer, verse, marin, cedar];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is VoiceIdsSharedVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'VoiceIdsSharedVariant2($value)'; } 
 }
typedef VoiceIdsShared = OneOf2<String,VoiceIdsSharedVariant2>;
