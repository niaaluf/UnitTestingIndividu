import 'package:flutter_test/flutter_test.dart';
import 'package:final_project_2023/app/modules/home/controllers/home_controller.dart';

void main() {
  group('Home Controller Tests', () {
    late HomeController homeController;

    setUp(() {
      homeController = HomeController();
    });

    test('Increment Count', () {
      // Arrange
      expect(homeController.count.value, 0);

      // Act
      homeController.increment();

      // Assert
      expect(homeController.count.value, 1);
    });

    // Add more test cases as needed for other functionality in HomeController

    // Cleanup
    tearDown(() {
      // Any cleanup code goes here
    });
  });
}
