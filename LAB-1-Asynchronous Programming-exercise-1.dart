//exercise 1

import 'dart:async';
import 'dart:math';

Future<String> fetchQuote() async {
  await Future.delayed(Duration(seconds: 2));

  List<String> quotes = [
    "The only way to do great work is to love what you do. - Steve Jobs",
    "Life is what happens when you're busy making other plans. - John Lennon",
    "In the end, it's not the years in your life that count. It's the life in your years. - Abraham Lincoln"
  ];

  Random random = Random();
  int index = random.nextInt(quotes.length);
  return quotes[index];
}

void main() async {
  String quote = await fetchQuote();

  print("Random Quote: $quote");
}

