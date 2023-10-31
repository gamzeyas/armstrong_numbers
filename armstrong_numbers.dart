import 'dart:math';

List<int> getDigits(int number) {
  List<int> digits = [];
  while (number > 0) {
    digits.add(number % 10);
    number ~/= 10;
  }
  return digits.reversed.toList();
}

bool isArmstrong(int number) {
  List<int> digits = getDigits(number);
  int power = digits.length;
  int sum = 0;

  for (int digit in digits) {
    sum += pow(digit, power).toInt();
  }

  return sum == number;
}

void testArmstrong(int number) {
  if (isArmstrong(number)) {
    print('$number bir Armstrong sayıdır.');
  } else {
    print('$number bir Armstrong sayı değildir.');
  }
}

void main() {
  int testNumber = 853; // Test için bir sayı
  testArmstrong(testNumber);
}
