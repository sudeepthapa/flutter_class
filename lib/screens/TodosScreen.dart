import 'package:flutter/material.dart';

class TodosScreen extends StatefulWidget {
  @override
  _TodosScreenState createState() => _TodosScreenState();
}

class _TodosScreenState extends State<TodosScreen> {
  // Generating global key to handle global states
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();

  // Defining text controllers
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  List<Map<String, dynamic>> todos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('My Todos'),
        actions: [
          IconButton(
            onPressed: handleAddClick,
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: ListView(
        children: todos.map((todo) => renderTodoItem(todo)).toList(),
      ),
    );
  }

  // Shows bottomsheet when + icon is pressed
  handleAddClick() {
    _scaffoldKey.currentState!.showBottomSheet(
      (context) => Container(
        color: Colors.lightBlue[50],
        height: 300,
        child: renderForm(),
      ),
    );
  }

  // Render form elements
  Widget renderForm() {
    return Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextFormField(
              controller: _titleController,
              validator: (text) {
                if (text == null || text.isEmpty) {
                  return 'Please insert something.';
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                  hintText: 'Note Title', border: OutlineInputBorder()),
            ),
            SizedBox(height: 8),
            TextFormField(
              controller: _descriptionController,
              maxLines: 3,
              decoration: InputDecoration(
                  hintText: 'Note Description', border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                child: Text('Submit'),
                onPressed: handleFormSubmit,
              ),
            )
          ]),
        ));
  }

  // Handles when form submit button is pressed
  handleFormSubmit() {
    // Check whether the form is valid
    if (_formKey.currentState!.validate()) {
      // Prepare todo data
      var todo = {
        'title': _titleController.text,
        'description': _descriptionController.text
      };

      // Add new todo to state and update the widget
      setState(() {
        todos = [todo, ...todos];
      });

      // Clear text fields
      _titleController.clear();
      _descriptionController.clear();

      // remove bottomsheet
      Navigator.pop(context);

      // Show snackbar message after adding note
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Note added successfully.')));
    }
  }

  // Prepare UI for individual todo item
  Widget renderTodoItem(todo) {
    return ListTile(
      title: Text(todo['title']),
      subtitle: Text(todo['description']),
      leading: Icon(Icons.today_outlined),
    );
  }
}
