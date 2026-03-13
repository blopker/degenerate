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
    test('falls back to try/catch when type matching fails', () {
      final v = OneOf2.parse<String, int>(
        '42',
        fromA: (v) => v as String,
        fromB: (v) => int.parse(v as String),
      );
      // '42' is a String, so type matching picks A
      expect(v, isA<OneOf2A<String, int>>());
      expect(v.value, '42');
    });

    test('type matching selects correct variant', () {
      final v = OneOf2.parse<String, int>(
        'hello',
        fromA: (v) => v as String,
        fromB: (v) => v as int,
      );
      expect(v, isA<OneOf2A<String, int>>());
      expect(v.value, 'hello');
    });

    test('parse with object-like types via try/catch', () {
      final catJson = {'type': 'cat', 'name': 'Whiskers'};
      final v = OneOf2.parse<Map<String, dynamic>, String>(
        catJson,
        fromA: (v) => v as Map<String, dynamic>,
        fromB: (v) => v as String,
      );
      expect(v, isA<OneOf2A<Map<String, dynamic>, String>>());
      expect(v.value, catJson);
    });

    test('OneOf5.parse selects correct variant by type', () {
      final v = OneOf5.parse<String, int, double, bool, List>(
        42,
        fromA: (v) => v.toString(),
        fromB: (v) => v as int,
        fromC: (v) => (v as num).toDouble(),
        fromD: (v) => v as bool,
        fromE: (v) => v as List,
      );
      expect(v, isA<OneOf5B<String, int, double, bool, List>>());
      expect(v.value, 42);
    });

    test('OneOf6.parse selects correct variant by type', () {
      final v = OneOf6.parse<String, int, double, bool, List, Map>(
        'hello',
        fromA: (v) => v as String,
        fromB: (v) => v as int,
        fromC: (v) => v as double,
        fromD: (v) => v as bool,
        fromE: (v) => v as List,
        fromF: (v) => v as Map,
      );
      expect(v, isA<OneOf6A<String, int, double, bool, List, Map>>());
      expect(v.value, 'hello');
    });

    test('OneOf7.parse selects correct variant by type', () {
      final v = OneOf7.parse<String, int, double, bool, List, Map, Set>(
        true,
        fromA: (v) => v as String,
        fromB: (v) => v as int,
        fromC: (v) => v as double,
        fromD: (v) => v as bool,
        fromE: (v) => v as List,
        fromF: (v) => v as Map,
        fromG: (v) => v as Set,
      );
      expect(v, isA<OneOf7D<String, int, double, bool, List, Map, Set>>());
      expect(v.value, true);
    });

    test('OneOf8.parse selects correct variant by type', () {
      final v = OneOf8.parse<String, int, double, bool, List, Map, Set, Uri>(
        [1, 2, 3],
        fromA: (v) => v as String,
        fromB: (v) => v as int,
        fromC: (v) => v as double,
        fromD: (v) => v as bool,
        fromE: (v) => v as List,
        fromF: (v) => v as Map,
        fromG: (v) => v as Set,
        fromH: (v) => v as Uri,
      );
      expect(v, isA<OneOf8E<String, int, double, bool, List, Map, Set, Uri>>());
      expect(v.value, [1, 2, 3]);
    });

    test('OneOf9.parse selects correct variant by type', () {
      final v =
          OneOf9.parse<String, int, double, bool, List, Map, Set, Uri, Symbol>(
        #test,
        fromA: (v) => v as String,
        fromB: (v) => v as int,
        fromC: (v) => v as double,
        fromD: (v) => v as bool,
        fromE: (v) => v as List,
        fromF: (v) => v as Map,
        fromG: (v) => v as Set,
        fromH: (v) => v as Uri,
        fromI: (v) => v as Symbol,
      );
      expect(v,
          isA<OneOf9I<String, int, double, bool, List, Map, Set, Uri, Symbol>>());
      expect(v.value, #test);
    });
  });
}
