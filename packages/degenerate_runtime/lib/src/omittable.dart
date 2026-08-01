/// Presence wrapper distinguishing "absent" from "present" (including
/// an explicit present `null`).
///
/// JSON objects have three states for an optional nullable field: the key is
/// absent, the key is `null`, or the key has a value. A plain `T?` collapses
/// the first two. Generated models use `Omittable` for optional nullable
/// fields so all three states survive serialization — the JSON Merge Patch
/// (RFC 7396) "omit = don't touch, null = clear" distinction:
///
/// ```dart
/// UserPatch()                                  // {}            don't touch
/// UserPatch(name: Omittable(null))             // {"name":null} clear
/// UserPatch(name: Omittable('bo'))             // {"name":"bo"} update
/// ```
library;

import 'package:meta/meta.dart';

/// A value that may be absent, present-but-null, or present with a value.
///
/// Nullability lives in `T` itself: a field that allows explicit null is
/// `Omittable<String?>`, so `Omittable(null)` is "present null" while
/// `Omittable.absent()` is "no value at all".
@immutable
final class Omittable<T> {
  /// Wraps a present value (which may itself be null if `T` is nullable).
  ///
  /// The parameter is typed `T` (not `T?`) so `Omittable<String>(null)` is a
  /// compile-time error — present-null is only representable when `T` allows
  /// null.
  const Omittable(T this.value) : isPresent = true;

  /// The absent state: the field is left out entirely.
  const Omittable.absent() : value = null, isPresent = false;

  /// The wrapped value, or null when absent.
  ///
  /// For `Omittable<T?>` this cannot distinguish absent from present-null;
  /// check [isPresent] when that matters.
  final T? value;

  /// Whether a value is present (even if that value is null).
  final bool isPresent;

  /// Whether the field is left out entirely.
  bool get isAbsent => !isPresent;

  /// The wrapped value; throws [StateError] when absent.
  T get requireValue =>
      isPresent ? value as T : (throw StateError('Omittable value is absent'));

  /// The wrapped value when present, otherwise [fallback].
  T valueOr(T fallback) => isPresent ? value as T : fallback;

  /// Transforms a present value; absent stays absent.
  Omittable<R> map<R>(R Function(T value) f) =>
      isPresent ? Omittable(f(value as T)) : Omittable<R>.absent();

  @override
  bool operator ==(Object other) =>
      // Deliberately ignores the type argument: Omittable<String>('x') and
      // Omittable<String?>('x') must compare equal in BOTH directions —
      // `other is Omittable<T>` would make == asymmetric across the upcast.
      identical(this, other) ||
      other is Omittable &&
          isPresent == other.isPresent &&
          value == other.value;

  @override
  int get hashCode => Object.hash(isPresent, value);

  @override
  String toString() => isPresent ? 'Omittable($value)' : 'Omittable.absent()';
}
