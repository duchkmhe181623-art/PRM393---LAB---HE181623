import 'package:flutter/material.dart';

class InputControlsDemo extends StatefulWidget {
  const InputControlsDemo({super.key});

  @override
  State<InputControlsDemo> createState() => _InputControlsDemoState();
}

class _InputControlsDemoState extends State<InputControlsDemo> {

  // ---------------------------
  // STATE VARIABLES
  // ---------------------------
  double _rating = 50;
  bool _isActive = false;
  String? _selectedGenre;
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exercise 2 – Input Controls"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSliderSection(),
            const SizedBox(height: 20),
            _buildSwitchSection(),
            const SizedBox(height: 20),
            _buildRadioSection(),
            const SizedBox(height: 20),
            _buildDatePickerButton(),
          ],
        ),
      ),
    );
  }

  // ---------------------------
  // SLIDER SECTION
  // ---------------------------
  Widget _buildSliderSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Rating (Slider)",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Slider(
          value: _rating,
          min: 0,
          max: 100,
          onChanged: (value) {
            setState(() {
              _rating = value;
            });
          },
        ),
        Text("Current value: ${_rating.toInt()}"),
      ],
    );
  }

  // ---------------------------
  // SWITCH SECTION
  // ---------------------------
  Widget _buildSwitchSection() {
    return SwitchListTile(
      title: const Text("Active (Switch)"),
      subtitle: const Text("Is movie active?"),
      value: _isActive,
      onChanged: (value) {
        setState(() {
          _isActive = value;
        });
      },
    );
  }

  // ---------------------------
  // RADIO SECTION
  // ---------------------------
  Widget _buildRadioSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Genre (RadioListTile)",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        RadioListTile<String>(
          title: const Text("Action"),
          value: "Action",
          groupValue: _selectedGenre,
          onChanged: (value) {
            setState(() {
              _selectedGenre = value;
            });
          },
        ),
        RadioListTile<String>(
          title: const Text("Comedy"),
          value: "Comedy",
          groupValue: _selectedGenre,
          onChanged: (value) {
            setState(() {
              _selectedGenre = value;
            });
          },
        ),
        Text("Selected genre: ${_selectedGenre ?? "None"}"),
      ],
    );
  }

  // ---------------------------
  // DATE PICKER SECTION
  // ---------------------------
  Widget _buildDatePickerButton() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ElevatedButton(
          onPressed: _openDatePicker,
          child: const Text("Open Date Picker"),
        ),
        const SizedBox(height: 8),
        Text(
          _selectedDate == null
              ? "No date selected"
              : "Selected date: ${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}",
        ),
      ],
    );
  }

  // ---------------------------
  // DATE PICKER LOGIC (tách riêng)
  // ---------------------------
  Future<void> _openDatePicker() async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );

    if (pickedDate != null) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }
}