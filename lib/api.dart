import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:encrypt/encrypt.dart';

final encrypter = Encrypter(Fernet(Key.fromBase64('Redacted')));

class Main {
  final double temp;
  Main({
    this.temp,
  });
  factory Main.fromJson(Map<String, dynamic> json) {
    return Main(
      temp: double.parse(json['temp'].toString()),
    );
  }
}

class WeatherModel {
  final Main main;
  WeatherModel({
    this.main,
  });
  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      main: Main.fromJson(json['main']),
    );
  }
}

Future<WeatherModel> getWeather() async {
  final response = await http.get('Redacted');
  if (response.statusCode == 200) {
    dynamic result = json.decode(response.body);
    WeatherModel model = WeatherModel.fromJson(result);
    return model;
  } else
    throw Exception('Failed to load Weather Information');
}

Future<Day> fetchDay() async {
  final response1 = await http.get('Redacted');
  if (response1.statusCode == 200) {
    Day result = Day.fromJson(jsonDecode(response1.body));
    return result;
  } else
    throw Exception('Failed to load Day Order Information');
}

class Day {
  final int day1, day2, day3;
  final Map<String, dynamic> timetable, timetabletom;

  Day({this.day1, this.day2, this.day3, this.timetable, this.timetabletom});

  factory Day.fromJson(Map<String, dynamic> json) {
    return Day(
      day1: int.parse(
          (encrypter.decrypt(Encrypted.fromBase64(json["Redacted"])))),
      day3: int.parse(
          (encrypter.decrypt(Encrypted.fromBase64(json["Redacted"])))),
      day2: int.parse(
          (encrypter.decrypt(Encrypted.fromBase64(json["Redacted"])))),
      timetable: json['Redacted'][0],
      timetabletom: json['Redacted'][0],
    );
  }
}
