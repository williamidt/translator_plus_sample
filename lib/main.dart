import 'package:translator_plus/translator_plus.dart';

void main() async {
  final translator = GoogleTranslator();
  final input = "Здравствуйте. Ты в порядке?";

  // Using the Future API
  translator
      .translate(input, to: 'en')
      .then((result) => print("Source: $input\nTranslated: $result"));

 /// problema corrigido
  print("traduziu para hebraico?");

  // Passing the translation to a variable
  var translation =
  await translator.translate("I would buy a car, if I had money.", from: 'en', to: 'iw');

  // You can also call the extension method directly on the input
  print('Translated: ${await input.translate(to: 'en')}');

  /// testing one word
  translator.translateAndPrint("house", from: 'auto', to: 'pt');


  // You can also replace the default base URL for countries where the default one doesn't work
  translator.baseUrl = "translate.google.com.hk";
  translator.translateAndPrint("This means 'testing' in chinese", to: 'zh-cn');
  //prints 这意味着用中文'测试'


  print("translation: $translation");
  // prints translation: Vorrei comprare una macchina, se avessi i soldi.
}