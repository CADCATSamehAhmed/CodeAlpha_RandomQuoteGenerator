import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:random_quote_generator/features/quotes_home/data/models/quote_model.dart';

class Api{
  Future<List<QuoteModel>> getRandomQuotes() async{
    try{
      final response = await http.get(Uri.parse('https://zenquotes.io/api/quotes'));
      final decodedData = json.decode(response.body) as List;
      return decodedData.map((quote) => QuoteModel.fromJson(quote)).toList();
    }catch(e){
      rethrow;
    }
  }
  Future<QuoteModel> getTodayQuote() async{
    try{
      final response = await http.get(Uri.parse('https://zenquotes.io/api/today'));
      final decodedData = json.decode(response.body) as List;
      return decodedData.map((quote) => QuoteModel.fromJson(quote)).toList().first;
    }catch(e){
      rethrow;
    }
  }
}