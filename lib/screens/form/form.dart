
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FormInput extends StatefulWidget {
  const FormInput({ Key? key }) : super(key: key);

  @override
  State<FormInput> createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {
  final GlobalKey<FormState> _formKey = GlobalKey ();

  final TextEditingController _titleController = TextEditingController();

  final TextEditingController _descriptionController = TextEditingController();

  final TextEditingController _dateController = TextEditingController();

  final TextEditingController _timeController = TextEditingController();


  @override
  void dispose() {
    // TODO: implement dispose
                              _titleController.clear();
                          _descriptionController.clear();
                          _dateController.clear();
                          _timeController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: const Text(
          "Create Form", 
        style: TextStyle(color: Colors.black87),
        ),
      ), 
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              ListTile(title: TextFormField(
                validator: (value) {
                      if(value!.isEmpty) {
                        return "Title cannot be left empty";
                      }
                      },
                controller: _titleController,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlue)),
                    hintText: "Please input a title",
                    focusColor: Theme.of(context).primaryColor,
                    labelText: "Title",
                    labelStyle: const TextStyle(color: Colors.lightBlueAccent),
                    floatingLabelBehavior: FloatingLabelBehavior.auto
                ),
              )),

              const SizedBox(height: 20.0,
              ),
             ListTile(title: TextFormField(
               controller: _descriptionController,
               validator: (value) =>
                      value!.isEmpty ? "Enter a valid description" : null,
                      
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlue)),
                    hintText: "Please input a description",
                    focusColor: Theme.of(context).primaryColor,
                    labelText: "Description",
                    labelStyle: const TextStyle(color: Colors.lightBlueAccent),
                    floatingLabelBehavior: FloatingLabelBehavior.auto
                ),
              )),
              const SizedBox(height: 20.0,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: ListTile(
                      title: TextFormField(
                        onTap: () {
                          showDatePicker(
                            context: context, 
                            initialDate: DateTime.now(), 
                            firstDate: DateTime.now(), 
                            lastDate: DateTime.now().add(const Duration(days: 365)),
                            ).then((value) {
                              setState(() {
                                _dateController.text = DateFormat.yMMMMd().format(value!);
                              });
                            });
                            
                            
                        },
                        controller: _dateController,
                         validator: (value) {
                      if(value!.isEmpty) {
                        return "Date cannot be left empty";
                      }
                         },

                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlue)),
                    hintText: "Please input a date",
                    focusColor: Theme.of(context).primaryColor,
                    labelText: "Date",
                    labelStyle: const TextStyle(color: Colors.lightBlueAccent),
                    floatingLabelBehavior: FloatingLabelBehavior.auto
                ),
              )),
              ),
              Expanded(
                child: ListTile(
                  title: TextFormField(
                    onTap: () {
                      showTimePicker(
                        context: context, 
                        initialTime: TimeOfDay.now()).
                        then((value) {
                          setState(() {
                            _timeController.text = value!.format(context);
                          });
                        });
                    },
                    validator: (value) {
                      if(value!.isEmpty) {
                        return "Time cannot be left empty";
                      }
                    },

                    controller: _timeController,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlue)),
                    hintText: "Please input time",
                    focusColor: Theme.of(context).primaryColor,
                    labelText: "Time",
                    labelStyle: const TextStyle(color: Colors.lightBlueAccent),
                    floatingLabelBehavior: FloatingLabelBehavior.auto
                ),
              )),),
                ],
                ),
                const SizedBox(height: 20.0,
              ),
                ListTile(
                  title: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.lightBlueAccent,
                      padding: const EdgeInsets.all(22)),
                    onPressed: (){
                      if(_formKey.currentState!.validate()){
                        String dateTime = 
                        '${_dateController.text} ${_timeController.text}';
                        print(_titleController.text);
                         print(_descriptionController.text);
                          print(dateTime);

                          _titleController.clear();
                          _descriptionController.clear();
                          _dateController.clear();
                          _timeController.clear();
                           
                      };
                    }, 
                    child: const Text("Save",
                    style: TextStyle(color: Colors.white, 
                    fontSize: 20, fontWeight: FontWeight.bold,)),)
                )
            ],
            
          ),
        ),
      ),
    );
  }
}