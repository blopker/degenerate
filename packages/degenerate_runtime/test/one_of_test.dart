import 'package:degenerate_runtime/degenerate_runtime.dart';
import 'package:test/test.dart';

void main() {
  group('OneOf2', () {
    test('.from() wraps a value matching the first type', () {
      final v = OneOf2<String, int>.from('hello');
      expect(v.value, 'hello');
      expect(v, isA<OneOf2A<String, int>>());
    });

    test('.from() wraps a value matching the second type', () {
      final v = OneOf2<String, int>.from(42);
      expect(v.value, 42);
      expect(v, isA<OneOf2B<String, int>>());
    });

    test('.from() throws on invalid type', () {
      expect(
        () => OneOf2<String, int>.from(3.14),
        throwsArgumentError,
      );
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
        String s => 'string: $s',
        int i => 'int: $i',
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

    test('toJson roundtrips', () {
      expect(OneOf3<String, double, bool>.from('hi').toJson(), 'hi');
      expect(OneOf3<String, double, bool>.from(3.14).toJson(), 3.14);
      expect(OneOf3<String, double, bool>.from(true).toJson(), true);
    });
  });

  group('OneOf.parse()', () {
    test('uses canParse to select variant', () {
      final v = OneOf2.parse<String, int>(
        '42',
        fromA: (v) => v as String,
        fromB: (v) => int.parse(v as String),
        canParseB: (v) => v is String && int.tryParse(v) != null,
      );
      // canParseB matches first, so it picks B
      expect(v, isA<OneOf2B<String, int>>());
      expect(v.value, 42);
    });

    test('falls back to type matching when no canParse', () {
      final v = OneOf2.parse<String, int>(
        'hello',
        fromA: (v) => v as String,
        fromB: (v) => v as int,
      );
      expect(v, isA<OneOf2A<String, int>>());
      expect(v.value, 'hello');
    });

    test('parse with object-like types', () {
      // Simulate object parsing with Maps
      final catJson = {'type': 'cat', 'name': 'Whiskers'};
      final v = OneOf2.parse<Map<String, dynamic>, String>(
        catJson,
        fromA: (v) => v as Map<String, dynamic>,
        fromB: (v) => v as String,
        canParseA: (v) => v is Map<String, dynamic>,
      );
      expect(v, isA<OneOf2A<Map<String, dynamic>, String>>());
      expect(v.value, catJson);
    });
  });
}
