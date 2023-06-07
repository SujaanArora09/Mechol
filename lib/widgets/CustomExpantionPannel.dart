import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'Flutter Tutorial';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Steps(),
      ),
    );
  }
}

class Step {
  Step(
      this.title,
      this.body,
      [this.isExpanded = false]
      );
  String title;
  String body;
  bool isExpanded;
}

bool Expanded = true;

List<Step> getSteps() {
  return [
    Step('Lorem ipsum dolor sit amet consectetur?', 'Lorem ipsum dolor sit amet consectetur. Id nec mollis ultricies elit feugiat. Tortor ac donec quis vel habitant. Massa risus enim ultricies ultricies congue tincidunt nunc. Turpis donec urna sed morbi magna commodo tortor euismod.'),
    Step('Lorem ipsum dolor sit amet consectetur?', 'Lorem ipsum dolor sit amet consectetur. Id nec mollis ultricies elit feugiat. Tortor ac donec quis vel habitant. Massa risus enim ultricies ultricies congue tincidunt nunc. Turpis donec urna sed morbi magna commodo tortor euismod.'),
    Step('Lorem ipsum dolor sit amet consectetur?', 'Lorem ipsum dolor sit amet consectetur. Id nec mollis ultricies elit feugiat. Tortor ac donec quis vel habitant. Massa risus enim ultricies ultricies congue tincidunt nunc. Turpis donec urna sed morbi magna commodo tortor euismod.'),
    Step('Lorem ipsum dolor sit amet consectetur?', 'Lorem ipsum dolor sit amet consectetur. Id nec mollis ultricies elit feugiat. Tortor ac donec quis vel habitant. Massa risus enim ultricies ultricies congue tincidunt nunc. Turpis donec urna sed morbi magna commodo tortor euismod.'),
    Step('Lorem ipsum dolor sit amet consectetur?', 'Lorem ipsum dolor sit amet consectetur. Id nec mollis ultricies elit feugiat. Tortor ac donec quis vel habitant. Massa risus enim ultricies ultricies congue tincidunt nunc. Turpis donec urna sed morbi magna commodo tortor euismod.'),
  ];
}

class Steps extends StatefulWidget {
  const Steps({Key? key}) : super(key: key);
  @override
  State<Steps> createState() => _StepsState();
}

class _StepsState extends State<Steps> {
  final List<Step> _steps = getSteps();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _renderSteps(),
      ),
    );
  }
  Widget _renderSteps() {
    return ExpansionPanelList(
      elevation: 0,
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _steps[index].isExpanded = !isExpanded;
        });
      },
      children: _steps.map<ExpansionPanel>((Step step) {
        return ExpansionPanel(
          hasIcon: false,
          canTapOnHeader: true,
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              trailing: const Icon(Icons.add_circle_outline_rounded,color: Color(0xff1e91b6),),
              title: Text(step.title,
                  style: const TextStyle(
                color: Color(0xff0f1728),
                fontSize: 16,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
              ),),
            );
          },
          body: ListTile(

            title: Text(step.body,
            style:  const TextStyle(
              color: Color(0xff667084),
              fontSize: 16,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w500,
            ),),
          ),
          isExpanded: step.isExpanded,
        );
      }).toList(),
    );
  }
}