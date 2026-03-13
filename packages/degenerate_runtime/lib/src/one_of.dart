/// Typed union containers for OpenAPI `oneOf` / `anyOf` schemas.
///
/// Instead of generating a sealed class per union, specs emit a typedef:
/// ```dart
/// typedef FilterValue = OneOf3<String, double, bool>;
/// ```
///
/// Construction: `OneOf3.from('hello')` or `OneOf3.parse(json, ...)`
/// Reading: `switch (v.value) { case String s: ... }`
library;

// ─── OneOf2 ──────────────────────────────────────────────────────

sealed class OneOf2<A, B> {
  const OneOf2();

  /// The wrapped value.
  Object? get value;

  /// Wraps a typed value, matching by runtime type.
  factory OneOf2.from(Object? value) {
    if (value is A) return OneOf2A(value);
    if (value is B) return OneOf2B(value);
    throw ArgumentError('Value $value is not $A or $B');
  }

  /// Deserializes from JSON using typed parsers.
  ///
  /// Tries runtime type matching first, then attempts each parser in order,
  /// catching errors to find the first successful match.
  static OneOf2<A, B> parse<A, B>(
    Object? json, {
    required A Function(Object?) fromA,
    required B Function(Object?) fromB,
  }) {
    if (json is A) return OneOf2A(json);
    if (json is B) return OneOf2B(json);
    try {
      return OneOf2A(fromA(json));
    } catch (_) {
      return OneOf2B(fromB(json));
    }
  }

  /// Serializes to JSON. Primitives pass through; objects use `toJson()`.
  Object? toJson() {
    final v = value;
    if (v == null || v is String || v is num || v is bool) return v;
    return (v as dynamic).toJson();
  }
}

final class OneOf2A<A, B> extends OneOf2<A, B> {
  const OneOf2A(this.value);
  @override
  final A value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is OneOf2A<A, B> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf2.a($value)';
}

final class OneOf2B<A, B> extends OneOf2<A, B> {
  const OneOf2B(this.value);
  @override
  final B value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is OneOf2B<A, B> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf2.b($value)';
}

// ─── OneOf3 ──────────────────────────────────────────────────────

sealed class OneOf3<A, B, C> {
  const OneOf3();
  Object? get value;

  factory OneOf3.from(Object? value) {
    if (value is A) return OneOf3A(value);
    if (value is B) return OneOf3B(value);
    if (value is C) return OneOf3C(value);
    throw ArgumentError('Value $value is not $A, $B, or $C');
  }

  static OneOf3<A, B, C> parse<A, B, C>(
    Object? json, {
    required A Function(Object?) fromA,
    required B Function(Object?) fromB,
    required C Function(Object?) fromC,
  }) {
    if (json is A) return OneOf3A(json);
    if (json is B) return OneOf3B(json);
    if (json is C) return OneOf3C(json);
    try {
      return OneOf3A(fromA(json));
    } catch (_) {}
    try {
      return OneOf3B(fromB(json));
    } catch (_) {
      return OneOf3C(fromC(json));
    }
  }

  Object? toJson() {
    final v = value;
    if (v == null || v is String || v is num || v is bool) return v;
    return (v as dynamic).toJson();
  }
}

final class OneOf3A<A, B, C> extends OneOf3<A, B, C> {
  const OneOf3A(this.value);
  @override
  final A value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf3A<A, B, C> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf3.a($value)';
}

final class OneOf3B<A, B, C> extends OneOf3<A, B, C> {
  const OneOf3B(this.value);
  @override
  final B value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf3B<A, B, C> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf3.b($value)';
}

final class OneOf3C<A, B, C> extends OneOf3<A, B, C> {
  const OneOf3C(this.value);
  @override
  final C value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf3C<A, B, C> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf3.c($value)';
}

// ─── OneOf4 ──────────────────────────────────────────────────────

sealed class OneOf4<A, B, C, D> {
  const OneOf4();
  Object? get value;

  factory OneOf4.from(Object? value) {
    if (value is A) return OneOf4A(value);
    if (value is B) return OneOf4B(value);
    if (value is C) return OneOf4C(value);
    if (value is D) return OneOf4D(value);
    throw ArgumentError('Value $value is not $A, $B, $C, or $D');
  }

  static OneOf4<A, B, C, D> parse<A, B, C, D>(
    Object? json, {
    required A Function(Object?) fromA,
    required B Function(Object?) fromB,
    required C Function(Object?) fromC,
    required D Function(Object?) fromD,
  }) {
    if (json is A) return OneOf4A(json);
    if (json is B) return OneOf4B(json);
    if (json is C) return OneOf4C(json);
    if (json is D) return OneOf4D(json);
    try {
      return OneOf4A(fromA(json));
    } catch (_) {}
    try {
      return OneOf4B(fromB(json));
    } catch (_) {}
    try {
      return OneOf4C(fromC(json));
    } catch (_) {
      return OneOf4D(fromD(json));
    }
  }

  Object? toJson() {
    final v = value;
    if (v == null || v is String || v is num || v is bool) return v;
    return (v as dynamic).toJson();
  }
}

final class OneOf4A<A, B, C, D> extends OneOf4<A, B, C, D> {
  const OneOf4A(this.value);
  @override
  final A value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf4A<A, B, C, D> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf4.a($value)';
}

final class OneOf4B<A, B, C, D> extends OneOf4<A, B, C, D> {
  const OneOf4B(this.value);
  @override
  final B value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf4B<A, B, C, D> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf4.b($value)';
}

final class OneOf4C<A, B, C, D> extends OneOf4<A, B, C, D> {
  const OneOf4C(this.value);
  @override
  final C value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf4C<A, B, C, D> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf4.c($value)';
}

final class OneOf4D<A, B, C, D> extends OneOf4<A, B, C, D> {
  const OneOf4D(this.value);
  @override
  final D value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf4D<A, B, C, D> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf4.d($value)';
}

// ─── OneOf5 through OneOf9 ───────────────────────────────────────
// These follow the exact same pattern. For brevity, we generate them
// programmatically below using the same structure.

sealed class OneOf5<A, B, C, D, E> {
  const OneOf5();
  Object? get value;

  factory OneOf5.from(Object? value) {
    if (value is A) return OneOf5A(value);
    if (value is B) return OneOf5B(value);
    if (value is C) return OneOf5C(value);
    if (value is D) return OneOf5D(value);
    if (value is E) return OneOf5E(value);
    throw ArgumentError('Value $value does not match any variant of OneOf5');
  }

  static OneOf5<A, B, C, D, E> parse<A, B, C, D, E>(
    Object? json, {
    required A Function(Object?) fromA,
    required B Function(Object?) fromB,
    required C Function(Object?) fromC,
    required D Function(Object?) fromD,
    required E Function(Object?) fromE,
  }) {
    if (json is A) return OneOf5A(json);
    if (json is B) return OneOf5B(json);
    if (json is C) return OneOf5C(json);
    if (json is D) return OneOf5D(json);
    if (json is E) return OneOf5E(json);
    try { return OneOf5A(fromA(json)); } catch (_) {}
    try { return OneOf5B(fromB(json)); } catch (_) {}
    try { return OneOf5C(fromC(json)); } catch (_) {}
    try { return OneOf5D(fromD(json)); } catch (_) {
      return OneOf5E(fromE(json));
    }
  }

  Object? toJson() {
    final v = value;
    if (v == null || v is String || v is num || v is bool) return v;
    return (v as dynamic).toJson();
  }
}

final class OneOf5A<A, B, C, D, E> extends OneOf5<A, B, C, D, E> {
  const OneOf5A(this.value);
  @override
  final A value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf5A<A, B, C, D, E> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf5.a($value)';
}

final class OneOf5B<A, B, C, D, E> extends OneOf5<A, B, C, D, E> {
  const OneOf5B(this.value);
  @override
  final B value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf5B<A, B, C, D, E> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf5.b($value)';
}

final class OneOf5C<A, B, C, D, E> extends OneOf5<A, B, C, D, E> {
  const OneOf5C(this.value);
  @override
  final C value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf5C<A, B, C, D, E> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf5.c($value)';
}

final class OneOf5D<A, B, C, D, E> extends OneOf5<A, B, C, D, E> {
  const OneOf5D(this.value);
  @override
  final D value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf5D<A, B, C, D, E> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf5.d($value)';
}

final class OneOf5E<A, B, C, D, E> extends OneOf5<A, B, C, D, E> {
  const OneOf5E(this.value);
  @override
  final E value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf5E<A, B, C, D, E> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf5.e($value)';
}

sealed class OneOf6<A, B, C, D, E, F> {
  const OneOf6();
  Object? get value;

  factory OneOf6.from(Object? value) {
    if (value is A) return OneOf6A(value);
    if (value is B) return OneOf6B(value);
    if (value is C) return OneOf6C(value);
    if (value is D) return OneOf6D(value);
    if (value is E) return OneOf6E(value);
    if (value is F) return OneOf6F(value);
    throw ArgumentError('Value $value does not match any variant of OneOf6');
  }

  static OneOf6<A, B, C, D, E, F> parse<A, B, C, D, E, F>(
    Object? json, {
    required A Function(Object?) fromA,
    required B Function(Object?) fromB,
    required C Function(Object?) fromC,
    required D Function(Object?) fromD,
    required E Function(Object?) fromE,
    required F Function(Object?) fromF,
  }) {
    if (json is A) return OneOf6A(json);
    if (json is B) return OneOf6B(json);
    if (json is C) return OneOf6C(json);
    if (json is D) return OneOf6D(json);
    if (json is E) return OneOf6E(json);
    if (json is F) return OneOf6F(json);
    try { return OneOf6A(fromA(json)); } catch (_) {}
    try { return OneOf6B(fromB(json)); } catch (_) {}
    try { return OneOf6C(fromC(json)); } catch (_) {}
    try { return OneOf6D(fromD(json)); } catch (_) {}
    try { return OneOf6E(fromE(json)); } catch (_) {
      return OneOf6F(fromF(json));
    }
  }

  Object? toJson() {
    final v = value;
    if (v == null || v is String || v is num || v is bool) return v;
    return (v as dynamic).toJson();
  }
}

final class OneOf6A<A, B, C, D, E, F> extends OneOf6<A, B, C, D, E, F> {
  const OneOf6A(this.value);
  @override
  final A value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf6A<A, B, C, D, E, F> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf6.a($value)';
}

final class OneOf6B<A, B, C, D, E, F> extends OneOf6<A, B, C, D, E, F> {
  const OneOf6B(this.value);
  @override
  final B value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf6B<A, B, C, D, E, F> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf6.b($value)';
}

final class OneOf6C<A, B, C, D, E, F> extends OneOf6<A, B, C, D, E, F> {
  const OneOf6C(this.value);
  @override
  final C value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf6C<A, B, C, D, E, F> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf6.c($value)';
}

final class OneOf6D<A, B, C, D, E, F> extends OneOf6<A, B, C, D, E, F> {
  const OneOf6D(this.value);
  @override
  final D value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf6D<A, B, C, D, E, F> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf6.d($value)';
}

final class OneOf6E<A, B, C, D, E, F> extends OneOf6<A, B, C, D, E, F> {
  const OneOf6E(this.value);
  @override
  final E value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf6E<A, B, C, D, E, F> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf6.e($value)';
}

final class OneOf6F<A, B, C, D, E, F> extends OneOf6<A, B, C, D, E, F> {
  const OneOf6F(this.value);
  @override
  final F value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf6F<A, B, C, D, E, F> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf6.f($value)';
}

sealed class OneOf7<A, B, C, D, E, F, G> {
  const OneOf7();
  Object? get value;

  factory OneOf7.from(Object? value) {
    if (value is A) return OneOf7A(value);
    if (value is B) return OneOf7B(value);
    if (value is C) return OneOf7C(value);
    if (value is D) return OneOf7D(value);
    if (value is E) return OneOf7E(value);
    if (value is F) return OneOf7F(value);
    if (value is G) return OneOf7G(value);
    throw ArgumentError('Value $value does not match any variant of OneOf7');
  }

  static OneOf7<A, B, C, D, E, F, G> parse<A, B, C, D, E, F, G>(
    Object? json, {
    required A Function(Object?) fromA,
    required B Function(Object?) fromB,
    required C Function(Object?) fromC,
    required D Function(Object?) fromD,
    required E Function(Object?) fromE,
    required F Function(Object?) fromF,
    required G Function(Object?) fromG,
  }) {
    if (json is A) return OneOf7A(json);
    if (json is B) return OneOf7B(json);
    if (json is C) return OneOf7C(json);
    if (json is D) return OneOf7D(json);
    if (json is E) return OneOf7E(json);
    if (json is F) return OneOf7F(json);
    if (json is G) return OneOf7G(json);
    try { return OneOf7A(fromA(json)); } catch (_) {}
    try { return OneOf7B(fromB(json)); } catch (_) {}
    try { return OneOf7C(fromC(json)); } catch (_) {}
    try { return OneOf7D(fromD(json)); } catch (_) {}
    try { return OneOf7E(fromE(json)); } catch (_) {}
    try { return OneOf7F(fromF(json)); } catch (_) {
      return OneOf7G(fromG(json));
    }
  }

  Object? toJson() {
    final v = value;
    if (v == null || v is String || v is num || v is bool) return v;
    return (v as dynamic).toJson();
  }
}

final class OneOf7A<A, B, C, D, E, F, G> extends OneOf7<A, B, C, D, E, F, G> {
  const OneOf7A(this.value);
  @override
  final A value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf7A<A, B, C, D, E, F, G> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf7.a($value)';
}

final class OneOf7B<A, B, C, D, E, F, G> extends OneOf7<A, B, C, D, E, F, G> {
  const OneOf7B(this.value);
  @override
  final B value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf7B<A, B, C, D, E, F, G> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf7.b($value)';
}

final class OneOf7C<A, B, C, D, E, F, G> extends OneOf7<A, B, C, D, E, F, G> {
  const OneOf7C(this.value);
  @override
  final C value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf7C<A, B, C, D, E, F, G> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf7.c($value)';
}

final class OneOf7D<A, B, C, D, E, F, G> extends OneOf7<A, B, C, D, E, F, G> {
  const OneOf7D(this.value);
  @override
  final D value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf7D<A, B, C, D, E, F, G> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf7.d($value)';
}

final class OneOf7E<A, B, C, D, E, F, G> extends OneOf7<A, B, C, D, E, F, G> {
  const OneOf7E(this.value);
  @override
  final E value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf7E<A, B, C, D, E, F, G> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf7.e($value)';
}

final class OneOf7F<A, B, C, D, E, F, G> extends OneOf7<A, B, C, D, E, F, G> {
  const OneOf7F(this.value);
  @override
  final F value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf7F<A, B, C, D, E, F, G> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf7.f($value)';
}

final class OneOf7G<A, B, C, D, E, F, G> extends OneOf7<A, B, C, D, E, F, G> {
  const OneOf7G(this.value);
  @override
  final G value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf7G<A, B, C, D, E, F, G> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf7.g($value)';
}

sealed class OneOf8<A, B, C, D, E, F, G, H> {
  const OneOf8();
  Object? get value;

  factory OneOf8.from(Object? value) {
    if (value is A) return OneOf8A(value);
    if (value is B) return OneOf8B(value);
    if (value is C) return OneOf8C(value);
    if (value is D) return OneOf8D(value);
    if (value is E) return OneOf8E(value);
    if (value is F) return OneOf8F(value);
    if (value is G) return OneOf8G(value);
    if (value is H) return OneOf8H(value);
    throw ArgumentError('Value $value does not match any variant of OneOf8');
  }

  static OneOf8<A, B, C, D, E, F, G, H> parse<A, B, C, D, E, F, G, H>(
    Object? json, {
    required A Function(Object?) fromA,
    required B Function(Object?) fromB,
    required C Function(Object?) fromC,
    required D Function(Object?) fromD,
    required E Function(Object?) fromE,
    required F Function(Object?) fromF,
    required G Function(Object?) fromG,
    required H Function(Object?) fromH,
  }) {
    if (json is A) return OneOf8A(json);
    if (json is B) return OneOf8B(json);
    if (json is C) return OneOf8C(json);
    if (json is D) return OneOf8D(json);
    if (json is E) return OneOf8E(json);
    if (json is F) return OneOf8F(json);
    if (json is G) return OneOf8G(json);
    if (json is H) return OneOf8H(json);
    try { return OneOf8A(fromA(json)); } catch (_) {}
    try { return OneOf8B(fromB(json)); } catch (_) {}
    try { return OneOf8C(fromC(json)); } catch (_) {}
    try { return OneOf8D(fromD(json)); } catch (_) {}
    try { return OneOf8E(fromE(json)); } catch (_) {}
    try { return OneOf8F(fromF(json)); } catch (_) {}
    try { return OneOf8G(fromG(json)); } catch (_) {
      return OneOf8H(fromH(json));
    }
  }

  Object? toJson() {
    final v = value;
    if (v == null || v is String || v is num || v is bool) return v;
    return (v as dynamic).toJson();
  }
}

final class OneOf8A<A, B, C, D, E, F, G, H>
    extends OneOf8<A, B, C, D, E, F, G, H> {
  const OneOf8A(this.value);
  @override
  final A value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf8A<A, B, C, D, E, F, G, H> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf8.a($value)';
}

final class OneOf8B<A, B, C, D, E, F, G, H>
    extends OneOf8<A, B, C, D, E, F, G, H> {
  const OneOf8B(this.value);
  @override
  final B value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf8B<A, B, C, D, E, F, G, H> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf8.b($value)';
}

final class OneOf8C<A, B, C, D, E, F, G, H>
    extends OneOf8<A, B, C, D, E, F, G, H> {
  const OneOf8C(this.value);
  @override
  final C value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf8C<A, B, C, D, E, F, G, H> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf8.c($value)';
}

final class OneOf8D<A, B, C, D, E, F, G, H>
    extends OneOf8<A, B, C, D, E, F, G, H> {
  const OneOf8D(this.value);
  @override
  final D value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf8D<A, B, C, D, E, F, G, H> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf8.d($value)';
}

final class OneOf8E<A, B, C, D, E, F, G, H>
    extends OneOf8<A, B, C, D, E, F, G, H> {
  const OneOf8E(this.value);
  @override
  final E value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf8E<A, B, C, D, E, F, G, H> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf8.e($value)';
}

final class OneOf8F<A, B, C, D, E, F, G, H>
    extends OneOf8<A, B, C, D, E, F, G, H> {
  const OneOf8F(this.value);
  @override
  final F value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf8F<A, B, C, D, E, F, G, H> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf8.f($value)';
}

final class OneOf8G<A, B, C, D, E, F, G, H>
    extends OneOf8<A, B, C, D, E, F, G, H> {
  const OneOf8G(this.value);
  @override
  final G value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf8G<A, B, C, D, E, F, G, H> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf8.g($value)';
}

final class OneOf8H<A, B, C, D, E, F, G, H>
    extends OneOf8<A, B, C, D, E, F, G, H> {
  const OneOf8H(this.value);
  @override
  final H value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf8H<A, B, C, D, E, F, G, H> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf8.h($value)';
}

sealed class OneOf9<A, B, C, D, E, F, G, H, I> {
  const OneOf9();
  Object? get value;

  factory OneOf9.from(Object? value) {
    if (value is A) return OneOf9A(value);
    if (value is B) return OneOf9B(value);
    if (value is C) return OneOf9C(value);
    if (value is D) return OneOf9D(value);
    if (value is E) return OneOf9E(value);
    if (value is F) return OneOf9F(value);
    if (value is G) return OneOf9G(value);
    if (value is H) return OneOf9H(value);
    if (value is I) return OneOf9I(value);
    throw ArgumentError('Value $value does not match any variant of OneOf9');
  }

  static OneOf9<A, B, C, D, E, F, G, H, I> parse<A, B, C, D, E, F, G, H, I>(
    Object? json, {
    required A Function(Object?) fromA,
    required B Function(Object?) fromB,
    required C Function(Object?) fromC,
    required D Function(Object?) fromD,
    required E Function(Object?) fromE,
    required F Function(Object?) fromF,
    required G Function(Object?) fromG,
    required H Function(Object?) fromH,
    required I Function(Object?) fromI,
  }) {
    if (json is A) return OneOf9A(json);
    if (json is B) return OneOf9B(json);
    if (json is C) return OneOf9C(json);
    if (json is D) return OneOf9D(json);
    if (json is E) return OneOf9E(json);
    if (json is F) return OneOf9F(json);
    if (json is G) return OneOf9G(json);
    if (json is H) return OneOf9H(json);
    if (json is I) return OneOf9I(json);
    try { return OneOf9A(fromA(json)); } catch (_) {}
    try { return OneOf9B(fromB(json)); } catch (_) {}
    try { return OneOf9C(fromC(json)); } catch (_) {}
    try { return OneOf9D(fromD(json)); } catch (_) {}
    try { return OneOf9E(fromE(json)); } catch (_) {}
    try { return OneOf9F(fromF(json)); } catch (_) {}
    try { return OneOf9G(fromG(json)); } catch (_) {}
    try { return OneOf9H(fromH(json)); } catch (_) {
      return OneOf9I(fromI(json));
    }
  }

  Object? toJson() {
    final v = value;
    if (v == null || v is String || v is num || v is bool) return v;
    return (v as dynamic).toJson();
  }
}

final class OneOf9A<A, B, C, D, E, F, G, H, I>
    extends OneOf9<A, B, C, D, E, F, G, H, I> {
  const OneOf9A(this.value);
  @override
  final A value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf9A<A, B, C, D, E, F, G, H, I> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf9.a($value)';
}

final class OneOf9B<A, B, C, D, E, F, G, H, I>
    extends OneOf9<A, B, C, D, E, F, G, H, I> {
  const OneOf9B(this.value);
  @override
  final B value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf9B<A, B, C, D, E, F, G, H, I> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf9.b($value)';
}

final class OneOf9C<A, B, C, D, E, F, G, H, I>
    extends OneOf9<A, B, C, D, E, F, G, H, I> {
  const OneOf9C(this.value);
  @override
  final C value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf9C<A, B, C, D, E, F, G, H, I> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf9.c($value)';
}

final class OneOf9D<A, B, C, D, E, F, G, H, I>
    extends OneOf9<A, B, C, D, E, F, G, H, I> {
  const OneOf9D(this.value);
  @override
  final D value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf9D<A, B, C, D, E, F, G, H, I> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf9.d($value)';
}

final class OneOf9E<A, B, C, D, E, F, G, H, I>
    extends OneOf9<A, B, C, D, E, F, G, H, I> {
  const OneOf9E(this.value);
  @override
  final E value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf9E<A, B, C, D, E, F, G, H, I> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf9.e($value)';
}

final class OneOf9F<A, B, C, D, E, F, G, H, I>
    extends OneOf9<A, B, C, D, E, F, G, H, I> {
  const OneOf9F(this.value);
  @override
  final F value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf9F<A, B, C, D, E, F, G, H, I> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf9.f($value)';
}

final class OneOf9G<A, B, C, D, E, F, G, H, I>
    extends OneOf9<A, B, C, D, E, F, G, H, I> {
  const OneOf9G(this.value);
  @override
  final G value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf9G<A, B, C, D, E, F, G, H, I> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf9.g($value)';
}

final class OneOf9H<A, B, C, D, E, F, G, H, I>
    extends OneOf9<A, B, C, D, E, F, G, H, I> {
  const OneOf9H(this.value);
  @override
  final H value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf9H<A, B, C, D, E, F, G, H, I> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf9.h($value)';
}

final class OneOf9I<A, B, C, D, E, F, G, H, I>
    extends OneOf9<A, B, C, D, E, F, G, H, I> {
  const OneOf9I(this.value);
  @override
  final I value;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf9I<A, B, C, D, E, F, G, H, I> && value == other.value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'OneOf9.i($value)';
}
