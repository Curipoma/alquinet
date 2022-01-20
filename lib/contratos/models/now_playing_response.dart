// To parse this JSON data, do
//
//     final nowplayingResponse = nowplayingResponseFromMap(jsonString);

import 'dart:convert';

import 'movie.dart';

class NowplayingResponse {
    NowplayingResponse({
        required this.dates,
        required this.page,
        required this.results,
        required this.totalPages,
        required this.totalResults,
    });

    Dates dates;
    int page;
    List<Movie> results;
    int totalPages;
    int totalResults;

    factory NowplayingResponse.fromJson(String str) => NowplayingResponse.fromMap(json.decode(str));

    

    factory NowplayingResponse.fromMap(Map<String, dynamic> json) => NowplayingResponse(
        dates: Dates.fromMap(json["dates"]),
        page: json["page"],
        results: List<Movie>.from(json["results"].map((x) => Movie.fromMap(x))),
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
    );

  
}

class Dates {
    Dates({
       required this.maximum,
       required this.minimum,
    });

    DateTime maximum;
    DateTime minimum;

    factory Dates.fromJson(String str) => Dates.fromMap(json.decode(str));


    factory Dates.fromMap(Map<String, dynamic> json) => Dates(
        maximum: DateTime.parse(json["maximum"]),
        minimum: DateTime.parse(json["minimum"]),
    );

    
}

