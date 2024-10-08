import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';


class ApiHelper
{
  String api1 = 'https://newsapi.org/v2/everything?q=apple&from=2024-08-13&to=2024-08-13&sortBy=popularity&apiKey=6dbfb0e2d7ed468e8d6d494c669422a8';
  String api2 = 'https://newsapi.org/v2/everything?q=tesla&from=2024-07-14&sortBy=publishedAt&apiKey=6dbfb0e2d7ed468e8d6d494c669422a8';
  String api3 = 'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=6dbfb0e2d7ed468e8d6d494c669422a8';
  String api4 = 'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=6dbfb0e2d7ed468e8d6d494c669422a8';
  String api5 = 'https://newsapi.org/v2/everything?domains=wsj.com&apiKey=6dbfb0e2d7ed468e8d6d494c669422a8';

  Future <Map<String, dynamic>>api_helper1()
   async {
    Uri url = Uri.parse(api1);
    Response response =  await http.get(url);
    if(response.statusCode == 200)
      {
        // final json = ;
        return  jsonDecode(response.body )as Map<String, dynamic>;
        // return data;
      }
    else
      {
        return {};
      }
  }
  Future <Map<String, dynamic>>api_helper2()
  async {
    Uri url = Uri.parse(api2);
    Response response =  await http.get(url);
    if(response.statusCode == 200)
    {
      return  jsonDecode(response.body )as Map<String, dynamic>;
      // final json = response.body;
      // final data = jsonDecode(json);
      // return data;
    }
    else
    {
      return {};
    }
  }
  Future <Map<String, dynamic>>api_helper3()
  async {
    Uri url = Uri.parse(api3);
    Response response =  await http.get(url);
    if(response.statusCode == 200)
    {
      return  jsonDecode(response.body )as Map<String, dynamic>;
    }
    else
    {
      return {};
    }
  }
  Future <Map<String, dynamic>> api_helper4()
  async {
    Uri url = Uri.parse(api4);
    Response response =  await http.get(url);
    if(response.statusCode == 200)
    {
      return  jsonDecode(response.body )as Map<String, dynamic>;
    }
    else
    {
      return {};
    }
  }
  Future  <Map<String, dynamic>>api_helper5()
  async {
    Uri url = Uri.parse(api5);
    Response response =  await http.get(url);
    if(response.statusCode == 200)
    {
      return  jsonDecode(response.body )as Map<String, dynamic>;
    }
    else
    {
      return {};
    }
  }
}