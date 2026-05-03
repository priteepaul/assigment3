import 'package:flutter/material.dart';

class ConverterPage extends StatefulWidget {
  const ConverterPage({super.key});

  @override
  State<ConverterPage> createState() {
    return _ConverterPageState();
  }
}

class _ConverterPageState extends State<ConverterPage> {
  TextEditingController controller = TextEditingController();
  double result = 0;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Converter Page"),
        backgroundColor: Colors.pink.shade300,
      ),
      body: Center(
        child: SizedBox(
          height: 400,
          width: 300,
          child: Card(
            color: Colors.pink.shade300,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Form(
                    key: _formKey,
                    child: TextFormField(
                      controller: controller,
                      keyboardType: TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                      validator: (value) {
                        if (controller.text.isEmpty) {
                          return "Field cannot be empty!!";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Amount",
                        hintText: "Enter Amount",
                        prefixIcon: Icon(Icons.monetization_on),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (_formKey.currentState!.validate()) {
                          result = double.parse(controller.text) * 122.95;
                        }
                      });
                    },
                    child: Text("Convert"),
                  ),
                  SizedBox(height: 10),
                  Text("BDT: $result"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
