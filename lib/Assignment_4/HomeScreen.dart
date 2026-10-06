import 'package:flutter/material.dart';
import 'contact.dart';
import 'ContactCard.dart';
import 'ContactScreen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ContactModel> contacts = [];

  void _addContact(ContactModel newContact) {
    setState(() {
      contacts.add(newContact);
    });
  }

  void _deleteContact(int index) {
    setState(() {
      contacts.removeAt(index);
    });
  }

  void _deleteLastContact() {
    if (contacts.isNotEmpty) {
      setState(() {
        contacts.removeLast();
      });
    }
  }

  void _showAddContactSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: const Color(0xFF29384D),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) => Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: ContactScreen(onAddContact: _addContact),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset(
          'assets/images/Group 5.png',
          height: 32,
        ),
      ),
      body: contacts.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/list-purple-Xetxuqguwn.png',
                    width: 140,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'There is No Contacts Added Here',
                    style: TextStyle(
                      color: Color(0xFFFFF1D4),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.62,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  return ContactCard(
                    contact: contacts[index],
                    onDelete: () => _deleteContact(index),
                  );
                },
              ),
            ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (contacts.isNotEmpty) ...[
            FloatingActionButton(
              heroTag: 'delete_btn',
              backgroundColor: const Color(0xFFEE403D),
              onPressed: _deleteLastContact,
              child: const Icon(Icons.delete, color: Colors.white),
            ),
            const SizedBox(height: 12),
          ],
          if (contacts.length < 6)
            FloatingActionButton(
              heroTag: 'add_btn',
              backgroundColor: const Color(0xFFFFF1D4),
              onPressed: _showAddContactSheet,
              child: const Icon(Icons.add, color: Color(0xFF29384D)),
            ),
        ],
      ),
    );
  }
}