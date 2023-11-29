import 'package:dart_generic_data_mapper/dart_generic_data_mapper.dart';
import 'package:test/test.dart';

void main() {
  test('DataMapper correctly transforms data from one type to another', () {
    var stringToIntMapper = DataMapper<String, int>((str) => int.parse(str));
    expect(stringToIntMapper.map('123'), equals(123));
    expect(stringToIntMapper.map('123'), isA<int>());

    var intToStringMapper = DataMapper<int, String>((i) => 'Number $i');
    expect(intToStringMapper.map(456), equals('Number 456'));
    expect(intToStringMapper.map(456), isA<String>());
  });

  test('DataMapper handles invalid transformations', () {
    var stringToIntMapper = DataMapper<String, int>((str) {
      try {
        return int.parse(str);
      } catch (_) {
        return 0; // Default value for invalid input
      }
    });
    expect(stringToIntMapper.map('abc'), equals(0)); // 'abc' is not a valid int
  });
}
