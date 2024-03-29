import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:match_word/setting/Setting.dart';
class SinglePlayerSetting extends StatefulWidget{
  SinglePlayerSetting({Key? key}) : super(key: key);

  @override
  _SinglePlayerSetting createState() => _SinglePlayerSetting();
}
class DataColumCardEasy {
  static List<InputColumnEasy> count = [
    InputColumnEasy(column_card: 4)
  ];
}

class DataCountCardEasy {
  static List<InputCardEasy> countCard = [
    InputCardEasy(count_card: 12)
  ];
}
class DataColumCardMedium {
  static List<InputColumnMedium> count = [
    InputColumnMedium(column_card: 4)
  ];
}

class DataCountCardMedium {
  static List<InputCardMedium> countCard = [
    InputCardMedium(count_card: 16)
  ];
}
class DataColumCardHard {
  static List<InputColumnHard> count = [
    InputColumnHard(column_card: 4)
  ];
}

class DataCountCardHard {
  static List<InputCardHard> countCard = [
    InputCardHard(count_card: 20)
  ];
}

class _SinglePlayerSetting extends State<SinglePlayerSetting> {
  TextEditingController _columnControllerEasy = TextEditingController();
  TextEditingController _countControllerEasy = TextEditingController();
  TextEditingController _columnControllerMedium = TextEditingController();
  TextEditingController _countControllerMedium = TextEditingController();
  TextEditingController _columnControllerHard = TextEditingController();
  TextEditingController _countControllerHard = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Setting",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Setting"),
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bluegradient.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Easy Mode Setting", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: TextField(
                                controller: _columnControllerEasy,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  labelText: 'Enter Column card',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: TextField(
                                controller: _countControllerEasy,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  labelText: 'Enter Count card',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text("Medium Mode Setting", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: TextField(
                                controller: _columnControllerMedium,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  labelText: 'Enter Column card',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: TextField(
                                controller: _countControllerMedium,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  labelText: 'Enter Count card',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text("Hard Mode Setting", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: TextField(
                                controller: _columnControllerHard,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  labelText: 'Enter Column card',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: TextField(
                                controller: _countControllerHard,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  labelText: 'Enter Count card',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          String columnTextEasy = _columnControllerEasy.text.isNotEmpty ? _columnControllerEasy.text : "4";
                          String countTextEasy = _countControllerEasy.text.isNotEmpty ? _countControllerEasy.text : "12";
                          InputColumnEasy inputDataEasy = InputColumnEasy(column_card: int.parse(columnTextEasy));
                          DataColumCardEasy.count = [inputDataEasy];
                          InputCardEasy inputDataCardEasy = InputCardEasy(count_card: int.parse(countTextEasy));
                          DataCountCardEasy.countCard = [inputDataCardEasy];
                          String columnTextMedium = _columnControllerMedium.text.isNotEmpty ? _columnControllerMedium.text : "4";
                          String countTextMedium = _countControllerMedium.text.isNotEmpty ? _countControllerMedium.text : "16";
                          InputColumnMedium inputDataMedium = InputColumnMedium(column_card: int.parse(columnTextMedium));
                          DataColumCardMedium.count = [inputDataMedium];
                          InputCardMedium inputDataCardMedium = InputCardMedium(count_card: int.parse(countTextMedium));
                          DataCountCardMedium.countCard = [inputDataCardMedium];
                          String columnTextHard = _columnControllerHard.text.isNotEmpty ? _columnControllerHard.text : "4";
                          String countTextHard = _countControllerHard.text.isNotEmpty ? _countControllerHard.text : "20";
                          InputColumnHard inputDataHard = InputColumnHard(column_card: int.parse(columnTextHard));
                          DataColumCardHard.count = [inputDataHard];
                          InputCardHard inputDataCardHard = InputCardHard(count_card: int.parse(countTextHard));
                          DataCountCardHard.countCard = [inputDataCardHard];
                        },
                        child: Text('Save'),
                      ),
                      SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: () {
                          InputColumnEasy defaultInputDataEasy = InputColumnEasy(column_card: 4);
                          DataColumCardEasy.count = [defaultInputDataEasy];
                          _columnControllerEasy.clear();
                          InputCardEasy defaultInputDataCardEasy = InputCardEasy(count_card: 12);
                          DataCountCardEasy.countCard = [defaultInputDataCardEasy];
                          _countControllerEasy.clear();
                          InputColumnMedium defaultInputDataMedium = InputColumnMedium(column_card: 4);
                          DataColumCardMedium.count = [defaultInputDataMedium];
                          _columnControllerMedium.clear();
                          InputCardMedium defaultInputDataCardMedium = InputCardMedium(count_card: 16);
                          DataCountCardMedium.countCard = [defaultInputDataCardMedium];
                          _countControllerMedium.clear();
                          InputColumnHard defaultInputDataHard = InputColumnHard(column_card: 4);
                          DataColumCardHard.count = [defaultInputDataHard];
                          _columnControllerHard.clear();
                          InputCardHard defaultInputDataCardHard = InputCardHard(count_card: 20);
                          DataCountCardHard.countCard = [defaultInputDataCardHard];
                          _countControllerHard.clear();
                        },
                        child: Text('Reset'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}