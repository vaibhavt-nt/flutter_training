import 'package:flutter/material.dart';
import 'hive_functions.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
// Local Variable Where we save
// the hive data of current context
  List myHiveData = [];

// TextFields' controllers for adding or updating data
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

// To Update the data from Hive in local variable
  getHiveData() {
    myHiveData = HiveFunctions.getAllUsers();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    // Update the initial data
    // when page is loading
    getHiveData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("CRUD Operations"),
          actions: [
            // To refreah the Data stored in Hive
            IconButton(
                onPressed: () {
                  getHiveData();
                },
                icon: const Icon(Icons.refresh))
          ],
        ),
        // To add or create the data in Hive
        floatingActionButton: FloatingActionButton.extended(
            label: const Text("Add Data"),
            icon: const Icon(Icons.add),
            onPressed: () {
              showForm(null);
            }),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: myHiveData.isEmpty // To show when no data is stored
              ? const Center(
              child: Text(
                "No Data is Stored",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ))
          // To show when data is stored
              : Column(
              children: List.generate(myHiveData.length, (index) {
                final userData = myHiveData[index];
                return Card(
                  child: ListTile(
                    title: //Show Name of user stored in data base
                    Text("Name : ${userData["name"]}"),
                    subtitle: //Show Email of user stored in data base
                    Text("Email : ${userData["email"]}"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // To edit the data stored
                        IconButton(
                            onPressed: () {
                              showForm(userData["key"]);
                            },
                            icon: const Icon(Icons.edit)),
                        // To delete the data stored
                        IconButton(
                            onPressed: () {
                              HiveFunctions.deleteUser(userData["key"]);
                              // To refreah the Data stored in Hive after deletion
                              getHiveData();
                            },
                            icon: const Icon(Icons.delete)),
                      ],
                    ),
                  ),
                );
              }).toList()),
        ));
  }

// dialog box to create or update the data in hive
  void showForm(int? itemKey) async {
    // itemKey == null -> create new item
    // itemKey != null -> update an existing item

    if (itemKey != null) {
      // To find the existing item in our local database
      final existingItem =
      myHiveData.firstWhere((element) => element['key'] == itemKey);
      _nameController.text = existingItem['name'];
      _emailController.text = existingItem['email'];
    }

    showModalBottomSheet(
        context: context,
        elevation: 5,
        isScrollControlled: true,
        builder: (_) => Container(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
              top: 15,
              left: 15,
              right: 15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Text(
                    itemKey == null ? 'Create New' : 'Update',
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.w600),
                  )),
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(hintText: 'Name'),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: _emailController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(hintText: 'Email'),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () async {
                  // Save new item
                  if (itemKey == null) {
                    HiveFunctions.createUser({
                      "email": _emailController.text,
                      "name": _nameController.text
                    });
                  }

                  // update an existing item
                  if (itemKey != null) {
                    HiveFunctions.updateUser(itemKey, {
                      "email": _emailController.text,
                      "name": _nameController.text
                    });
                  }

                  // Clear the text fields
                  _nameController.text = '';
                  _emailController.text = '';

                  Navigator.of(context).pop(); // Close the bottom sheet
                  // To refresh the Data stored in Hive after updation
                  getHiveData();
                },
                child: Text(itemKey == null ? 'Create New' : 'Update'),
              ),
              const SizedBox(
                height: 15,
              )
            ],
          ),
        ));
  }
}
