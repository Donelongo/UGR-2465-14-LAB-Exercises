//Exercise 4

import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> fetchWeatherData(String apiKey, String city) async {

  String apiUrl = 'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric';


  var response = await http.get(Uri.parse(apiUrl));


  if (response.statusCode == 200) {

    return json.decode(response.body);
  } else {

    throw Exception('Failed to fetch weather data: ${response.statusCode}');
  }
}

void main() async {

  String apiKey = 'YOUR_API_KEY';


  String city = 'London';

  try {

    print('Fetching weather data for $city...');
    Map<String, dynamic> weatherData = await fetchWeatherData(apiKey, city);


    double temperature = weatherData['main']['temp'];
    String weatherDescription = weatherData['weather'][0]['description'];


    print('Current temperature in $city: $temperature°C');
    print('Weather conditions: $weatherDescription');
  } catch (e) {
    print('Error fetching weather data: $e');
  }
}

