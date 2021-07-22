import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:circular_country_flags/circular_country_flags.dart';

void main() {
  const MethodChannel channel = MethodChannel('circular_country_flags');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await CircularCountryFlags.platformVersion, '42');
  });
}
