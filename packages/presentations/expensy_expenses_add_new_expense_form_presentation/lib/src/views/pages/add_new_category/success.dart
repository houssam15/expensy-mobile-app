import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";

class AddNewCategorySuccessPage extends StatelessWidget {
  const AddNewCategorySuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Icon(
                Icons.category,
                size: 50,
                color: Colors.blue,
              ),
              const SizedBox(height: 10),
              Text(
                "New Category",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 22,
                ),
              ),
              const SizedBox(height: 50),
              InputField(
                placeholder: 'Name',  // This will show as the label
                hint: 'Enter your full name',  // This shows inside the field
                onChanged: (value) {
                  print('Name: $value');
                },
              ),
              const SizedBox(height: 20),
              InputField(
                placeholder: 'Description',  // This will show as the label
                hint: 'Enter description',  // This shows inside the field
                onChanged: (value) {
                  print('Description: $value');
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    )
                  ),
                  child: Text(
                    "Add new category",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w900
                    ),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
