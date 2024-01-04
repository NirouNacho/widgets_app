import 'package:flutter/material.dart';

class UiControlsScreen extends StatefulWidget {
  static const name = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  State<UiControlsScreen> createState() => _UiControlsScreenState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsScreenState extends State<UiControlsScreen> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Coontrols'),
      ),
      body: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          SwitchListTile(
              title: const Text('Developer Mode'),
              subtitle: const Text('Aditional controls'),
              value: isDeveloper,
              onChanged: (value) => setState(() {
                    isDeveloper = !isDeveloper;
                  })),
          ExpansionTile(
            title: const Text('Transport vehicule'),
            subtitle: Text('$selectedTransportation'),
            children: [
              RadioListTile(
                  title: const Text('By car'),
                  value: Transportation.car,
                  groupValue: selectedTransportation,
                  onChanged: (value) => setState(() {
                        selectedTransportation = Transportation.car;
                      })),
              RadioListTile(
                  title: const Text('By plane'),
                  value: Transportation.plane,
                  groupValue: selectedTransportation,
                  onChanged: (value) => setState(() {
                        selectedTransportation = Transportation.plane;
                      })),
              RadioListTile(
                  title: const Text('By boat'),
                  value: Transportation.boat,
                  groupValue: selectedTransportation,
                  onChanged: (value) => setState(() {
                        selectedTransportation = Transportation.boat;
                      })),
              RadioListTile(
                  title: const Text('By submarine'),
                  value: Transportation.submarine,
                  groupValue: selectedTransportation,
                  onChanged: (value) => setState(() {
                        selectedTransportation = Transportation.submarine;
                      })),
            ],
          ),
          CheckboxListTile(
              title: const Text('Include Breakfast'),
              value: wantsBreakfast,
              onChanged: (value) => setState(() {
                    wantsBreakfast = !wantsBreakfast;
                  })),
          CheckboxListTile(
              title: const Text('Include Lunch'),
              value: wantsLunch,
              onChanged: (value) => setState(() {
                    wantsLunch = !wantsLunch;
                  })),
          CheckboxListTile(
              title: const Text('Include Dinner'),
              value: wantsDinner,
              onChanged: (value) => setState(() {
                    wantsDinner = !wantsDinner;
                  })),
        ],
      ),
    );
  }
}
