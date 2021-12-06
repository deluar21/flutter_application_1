
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyCheckBox(),
  ));
}

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({Key? key}) : super(key: key);

  @override
  _MyCheckBoxState createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool value = false;
  final Notification = [
    CheckboxSettings(title: 'Checkbox 1'),
    CheckboxSettings(title: 'Checkbox 2'),
    CheckboxSettings(title: 'Checkbox 3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBox'),
        backgroundColor: Colors.amberAccent,
      ),
      body: ListView(
        children: [
          ...Notification.map(buildSingleCheckbox).toList(),
        ],
      ),
    );
  }

  Widget buildSingleCheckbox(CheckboxSettings CheckboxSettings) =>
      buildCheckbox(
          checkboxsettings: CheckboxSettings,
          voidCallback: () {
            setState(() {
              final newValue = !CheckboxSettings.value;
              CheckboxSettings.value = newValue;
            });
          });
  Widget buildCheckbox({
    required CheckboxSettings checkboxsettings,
    required VoidCallbackvoidcallback,
  }) =>
     ListTile(
      onTap: voidCallback,
      leading: Checkbox(
        value: CheckboxSettings. value,
        onChanged: (value) => voidCallback(),
      ),
      title: Text(
        checkboxsettings.title,
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
