import 'package:degenerate/src/emitter/emit_utils.dart'
    show enumValueName, toSnakeCase;
import 'package:degenerate/src/naming.dart';
import 'package:test/test.dart';

void main() {
  group('toSnakeCase', () {
    test('converts PascalCase to snake_case', () {
      expect(toSnakeCase('PetStore'), 'pet_store');
    });

    test('avoids generating _test suffix', () {
      // Schema names ending in "Test" should not produce files
      // that dart test picks up as test files.
      expect(toSnakeCase('ObservatoryPageTest'), isNot(endsWith('_test')));
      expect(toSnakeCase('DexTargetedTest'), isNot(endsWith('_test')));
      expect(toSnakeCase('MyTest'), isNot(endsWith('_test')));
    });

    test('does not mangle names without test suffix', () {
      expect(toSnakeCase('TestResult'), 'test_result');
      expect(toSnakeCase('LatestVersion'), 'latest_version');
    });
  });

  group('toPascalCase', () {
    test('converts snake_case', () {
      expect(toPascalCase('pet_store'), 'PetStore');
    });

    test('strips path prefixes and version segments', () {
      expect(toPascalCase('PetStore_api_v2_Pet'), 'Pet');
    });

    test('handles leading/trailing underscores', () {
      expect(toPascalCase('__my__weird__name__'), 'MyWeirdName');
    });

    test('handles acronyms', () {
      expect(toPascalCase('HTTPSConnection'), 'HttpsConnection');
    });

    test('handles single word', () {
      expect(toPascalCase('pet'), 'Pet');
    });

    test('handles already PascalCase', () {
      expect(toPascalCase('PetStore'), 'PetStore');
    });

    test('returns empty string for empty input', () {
      expect(toPascalCase(''), '');
    });

    test('handles all underscores', () {
      expect(toPascalCase('___'), '___');
    });

    test('handles hyphenated names', () {
      expect(toPascalCase('pet-store'), 'PetStore');
    });

    test('handles mixed separators', () {
      expect(toPascalCase('pet_store-name.space'), 'PetStoreNameSpace');
    });
  });

  group('toCamelCase', () {
    test('converts snake_case', () {
      expect(toCamelCase('pet_store'), 'petStore');
    });

    test('handles leading/trailing underscores', () {
      expect(toCamelCase('__my__weird__name__'), 'myWeirdName');
    });

    test('handles acronyms', () {
      expect(toCamelCase('HTTPSConnection'), 'httpsConnection');
    });

    test('handles single word', () {
      expect(toCamelCase('Pet'), 'pet');
    });

    test('handles already camelCase', () {
      expect(toCamelCase('petStore'), 'petStore');
    });

    test('returns empty string for empty input', () {
      expect(toCamelCase(''), '');
    });

    test('handles all underscores', () {
      expect(toCamelCase('___'), '___');
    });

    test('handles PascalCase input', () {
      expect(toCamelCase('PetStore'), 'petStore');
    });
  });

  group('sanitizeDartName', () {
    test('prefixes reserved words with \$', () {
      expect(sanitizeDartName('class'), r'$class');
      expect(sanitizeDartName('return'), r'$return');
      expect(sanitizeDartName('var'), r'$var');
      expect(sanitizeDartName('final'), r'$final');
      expect(sanitizeDartName('void'), r'$void');
    });

    test('prefixes names starting with digits', () {
      expect(sanitizeDartName('123abc'), r'$123abc');
      expect(sanitizeDartName('0value'), r'$0value');
    });

    test('returns \$empty for empty string', () {
      expect(sanitizeDartName(''), r'$empty');
    });

    test('removes invalid characters', () {
      expect(sanitizeDartName('hello-world'), 'helloworld');
      expect(sanitizeDartName('hello world'), 'helloworld');
    });

    test('preserves valid identifiers', () {
      expect(sanitizeDartName('petName'), 'petName');
      expect(sanitizeDartName('_private'), '_private');
    });

    test('transliterates accented Latin characters to ASCII', () {
      expect(sanitizeDartName('café'), 'cafe');
      expect(sanitizeDartName('naïve'), 'naive');
      expect(sanitizeDartName('über'), 'uber');
      expect(sanitizeDartName('résumé'), 'resume');
    });

    test('handles all invalid characters', () {
      expect(sanitizeDartName('!!!'), r'$empty');
    });

    test('preserves dollar signs', () {
      expect(sanitizeDartName(r'$value'), r'$value');
    });

    test('handles built-in identifiers', () {
      expect(sanitizeDartName('abstract'), r'$abstract');
      expect(sanitizeDartName('dynamic'), r'$dynamic');
      expect(sanitizeDartName('async'), r'$async');
    });
  });

  group('deduplicateName', () {
    test('returns name if not in existing set', () {
      expect(deduplicateName('Pet', {'Dog', 'Cat'}), 'Pet');
    });

    test('appends 2 for first collision', () {
      expect(deduplicateName('Pet', {'Pet', 'Dog'}), 'Pet2');
    });

    test('increments suffix for multiple collisions', () {
      expect(deduplicateName('Pet', {'Pet', 'Pet2', 'Pet3'}), 'Pet4');
    });

    test('handles empty existing set', () {
      expect(deduplicateName('Pet', {}), 'Pet');
    });

    test('handles names that already have numeric suffixes', () {
      expect(deduplicateName('Pet2', {'Pet2'}), 'Pet22');
    });
  });

  group('operationMethodName', () {
    test('converts operationId to camelCase', () {
      expect(operationMethodName('listPets'), 'listPets');
    });

    test('strips path template parameters', () {
      expect(operationMethodName('get_/pets/{petId}'), 'getPets');
    });

    test('handles snake_case operationId', () {
      expect(operationMethodName('get_pets'), 'getPets');
    });

    test('handles empty string', () {
      expect(operationMethodName(''), '');
    });

    test('handles path-style operationId', () {
      expect(operationMethodName('get_/users/{userId}/posts'), 'getUsersPosts');
    });

    test('deduplicates consecutive repeated segments', () {
      expect(
        operationMethodName('totem_spaces_mobile_api_mobile_api_get_recommended_spaces'),
        'totemSpacesMobileApiGetRecommendedSpaces',
      );
    });

    test('deduplicates single repeated segment', () {
      expect(operationMethodName('api_api_get'), 'apiGet');
    });

    test('deduplicates multi-word repeated segments', () {
      expect(operationMethodName('foo_bar_foo_bar_baz'), 'fooBarBaz');
    });
  });

  group('enumValueName', () {
    test('converts simple values to camelCase', () {
      expect(enumValueName('available'), 'available');
      expect(enumValueName('in_progress'), 'inProgress');
    });

    test('escapes Dart reserved words with \$ prefix', () {
      expect(enumValueName('class'), r'$class');
      expect(enumValueName('return'), r'$return');
      expect(enumValueName('on'), r'$on');
    });

    test('escapes enum-internal reserved names with \$ prefix', () {
      expect(enumValueName('value'), r'$value');
      expect(enumValueName('values'), r'$values');
      expect(enumValueName('override'), r'$override');
      expect(enumValueName('hashCode'), r'$hashCode');
      expect(enumValueName('toString'), r'$toString');
      expect(enumValueName('identical'), r'$identical');
      expect(enumValueName('json'), r'$json');
    });

    test('escapes dart:core type names with \$ prefix', () {
      // camelCase enum values match lowercase core types
      expect(enumValueName('bool'), r'$bool');
      expect(enumValueName('int'), r'$int');
      expect(enumValueName('double'), r'$double');
      expect(enumValueName('num'), r'$num');
      // 'string' doesn't shadow 'String' (case-sensitive)
      expect(enumValueName('string'), 'string');
    });

    test('handles values starting with digits', () {
      expect(enumValueName('1xx'), r'$1xx');
      expect(enumValueName('+1'), 'plus1');
    });

    test('handles leading +/- before letters without corrupting casing', () {
      // +NaN should produce lowerCamelCase, not 'NaN' (uppercase)
      expect(enumValueName('+NaN'), 'naN');
      expect(enumValueName('-NaN'), 'naN');
      // +digit still works via _splitWords
      expect(enumValueName('+1'), 'plus1');
      expect(enumValueName('-1'), 'minus1');
    });

    test('preserves interior hyphens as word separators', () {
      expect(enumValueName('google-apps'), 'googleApps');
      expect(enumValueName('in-progress'), 'inProgress');
    });

    test('handles values with brackets and special chars', () {
      // [DONE] should become lowerCamelCase 'done', not PascalCase 'Done'
      expect(enumValueName('[DONE]'), 'done');
      expect(enumValueName('(active)'), 'active');
    });
  });

  group('sanitizeFieldName', () {
    test('escapes dart:core type names with \$ prefix', () {
      expect(sanitizeFieldName('double'), r'$double');
      expect(sanitizeFieldName('bool'), r'$bool');
      expect(sanitizeFieldName('String'), r'$String');
    });

    test('passes through normal names', () {
      expect(sanitizeFieldName('myField'), 'myField');
      expect(sanitizeFieldName('data'), 'data');
    });

    test('escapes Dart reserved words', () {
      expect(sanitizeFieldName('class'), r'$class');
    });

    test('escapes Object member names that conflict with generated methods', () {
      expect(sanitizeFieldName('toString'), r'$toString');
      expect(sanitizeFieldName('hashCode'), r'$hashCode');
      expect(sanitizeFieldName('runtimeType'), r'$runtimeType');
      expect(sanitizeFieldName('noSuchMethod'), r'$noSuchMethod');
    });
  });

  group('dartReservedWords', () {
    test('contains common reserved words', () {
      expect(dartReservedWords.contains('class'), isTrue);
      expect(dartReservedWords.contains('return'), isTrue);
      expect(dartReservedWords.contains('if'), isTrue);
      expect(dartReservedWords.contains('else'), isTrue);
      expect(dartReservedWords.contains('while'), isTrue);
      expect(dartReservedWords.contains('for'), isTrue);
    });

    test('contains built-in identifiers', () {
      expect(dartReservedWords.contains('abstract'), isTrue);
      expect(dartReservedWords.contains('dynamic'), isTrue);
      expect(dartReservedWords.contains('factory'), isTrue);
    });

    test('contains context keywords', () {
      expect(dartReservedWords.contains('async'), isTrue);
      expect(dartReservedWords.contains('await'), isTrue);
      expect(dartReservedWords.contains('yield'), isTrue);
    });

    test('does not contain non-reserved words', () {
      expect(dartReservedWords.contains('pet'), isFalse);
      expect(dartReservedWords.contains('String'), isFalse);
    });
  });
}
