import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ApiHelper
{
  String api1 = 'https://newsapi.org/v2/everything?q=apple&from=2024-08-13&to=2024-08-13&sortBy=popularity&apiKey=733a889b0b894265b337b8ca84b2e8e6';
  String api2 = 'https://newsapi.org/v2/everything?q=tesla&from=2024-07-14&sortBy=publishedAt&apiKey=733a889b0b894265b337b8ca84b2e8e6';
  String api3 = 'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=733a889b0b894265b337b8ca84b2e8e6';
  String api4 = 'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=733a889b0b894265b337b8ca84b2e8e6';
  String api5 = 'https://newsapi.org/v2/everything?domains=wsj.com&apiKey=733a889b0b894265b337b8ca84b2e8e6';

  Future api_helper1()
   async {
    Uri url = Uri.parse(api1);
    Response response =  await http.get(url);
    if(response.statusCode == 200)
      {
        final json = response.body;
        final data = jsonDecode(json);
        return data;
      }
    else
      {
        return {};
      }
  }
  Future api_helper2()
  async {
    Uri url = Uri.parse(api2);
    Response response =  await http.get(url);
    if(response.statusCode == 200)
    {
      final json = response.body;
      final data = jsonDecode(json);
      return data;
    }
    else
    {
      return {};
    }
  }
  Future api_helper3()
  async {
    Uri url = Uri.parse(api3);
    Response response =  await http.get(url);
    if(response.statusCode == 200)
    {
      final json = response.body;
      final data = jsonDecode(json);
      return data;
    }
    else
    {
      return {};
    }
  }
  Future api_helper4()
  async {
    Uri url = Uri.parse(api4);
    Response response =  await http.get(url);
    if(response.statusCode == 200)
    {
      final json = response.body;
      final data = jsonDecode(json);
      return data;
    }
    else
    {
      return {};
    }
  }
  Future api_helper5()
  async {
    Uri url = Uri.parse(api5);
    Response response =  await http.get(url);
    if(response.statusCode == 200)
    {
      final json = response.body;
      final data = jsonDecode(json);
      return data;
    }
    else
    {
      return {};
    }
  }
}