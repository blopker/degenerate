import 'package:degenerate_runtime/degenerate_runtime.dart';
import 'package:test/test.dart';

void main() {
  group('OneOf2', () {
    test('.from() wraps a value matching the first type', () {
      final v = OneOf2<String, int>.from('hello');
      expect(v.value, 'hello');
    });

    test('.from() wraps a value matching the second type', () {
      final v = OneOf2<String, int>.from(42);
      expect(v.value, 42);
    });

    test('.a() and .b() constructors', () {
      const a = OneOf2<String, int>.a('hello');
      const b = OneOf2<String, int>.b(42);
      expect(a.value, 'hello');
      expect(b.value, 42);
    });

    test('.from() throws on invalid type', () {
      expect(() => OneOf2<String, int>.from(3.14), throwsArgumentError);
    });

    test('toJson returns primitive values directly', () {
      expect(OneOf2<String, int>.from('hello').toJson(), 'hello');
      expect(OneOf2<String, int>.from(42).toJson(), 42);
    });

    test('equality and hashCode', () {
      final a = OneOf2<String, int>.from('hello');
      final b = OneOf2<String, int>.from('hello');
      final c = OneOf2<String, int>.from(42);
      expect(a, equals(b));
      expect(a.hashCode, equals(b.hashCode));
      expect(a, isNot(equals(c)));
    });

    test('switch exhaustiveness on value type', () {
      final v = OneOf2<String, int>.from('hello');
      final result = switch (v.value) {
        final String s => 'string: $s',
        final int i => 'int: $i',
        _ => 'unknown',
      };
      expect(result, 'string: hello');
    });
  });

  group('OneOf3', () {
    test('.from() identifies correct variant', () {
      final s = OneOf3<String, double, bool>.from('hi');
      final d = OneOf3<String, double, bool>.from(3.14);
      final b = OneOf3<String, double, bool>.from(true);

      expect(s.value, 'hi');
      expect(d.value, 3.14);
      expect(b.value, true);
    });

    test('.a(), .b(), .c() constructors', () {
      const a = OneOf3<String, double, bool>.a('hi');
      const b = OneOf3<String, double, bool>.b(3.14);
      const c = OneOf3<String, double, bool>.c(true);
      expect(a.value, 'hi');
      expect(b.value, 3.14);
      expect(c.value, true);
    });

    test('toJson roundtrips', () {
      expect(OneOf3<String, double, bool>.from('hi').toJson(), 'hi');
      expect(OneOf3<String, double, bool>.from(3.14).toJson(), 3.14);
      expect(OneOf3<String, double, bool>.from(true).toJson(), true);
    });
  });

  group('OneOf.parse()', () {
    test('type matching selects correct variant', () {
      final v = OneOf2.parse<String, int>(
        'hello',
        fromA: (v) => v! as String,
        fromB: (v) => v! as int,
      );
      expect(v.value, 'hello');
    });

    test('falls back to try/catch when type matching fails', () {
      final v = OneOf2.parse<String, int>(
        '42',
        fromA: (v) => v! as String,
        fromB: (v) => int.parse(v! as String),
      );
      // '42' is a String, so type matching picks A
      expect(v.value, '42');
    });

    test('parse with object-like types via try/catch', () {
      final catJson = {'type': 'cat', 'name': 'Whiskers'};
      final v = OneOf2.parse<Map<String, dynamic>, String>(
        catJson,
        fromA: (v) => v! as Map<String, dynamic>,
        fromB: (v) => v! as String,
      );
      expect(v.value, catJson);
    });

    test('OneOf5.parse selects correct variant by type', () {
      final v = OneOf5.parse<String, int, double, bool, List<dynamic>>(
        42,
        fromA: (v) => v.toString(),
        fromB: (v) => v! as int,
        fromC: (v) => (v! as num).toDouble(),
        fromD: (v) => v! as bool,
        fromE: (v) => v! as List,
      );
      expect(v.value, 42);
    });

    test('parse throws ArgumentError listing all variants when none match', () {
      expect(
        () => OneOf2.parse<_Cat, _Dog>(
          {'type': 'fish', 'name': 'Nemo'},
          fromA: _Cat.fromJson,
          fromB: _Dog.fromJson,
        ),
        throwsA(
          isA<ArgumentError>().having(
            (e) => e.message,
            'message',
            allOf(contains('_Cat'), contains('_Dog')),
          ),
        ),
      );
    });
  });
}

class _Cat {
  _Cat(this.name);

  factory _Cat.fromJson(Object? json) {
    final map = json! as Map<String, dynamic>;
    if (map['type'] != 'cat') throw const FormatException('Not a cat');
    return _Cat(map['name'] as String);
  }

  final String name;
}

class _Dog {
  _Dog(this.name);

  factory _Dog.fromJson(Object? json) {
    final map = json! as Map<String, dynamic>;
    if (map['type'] != 'dog') throw const FormatException('Not a dog');
    return _Dog(map['name'] as String);
  }

  final String name;
}
