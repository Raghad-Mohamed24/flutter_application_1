import 'package:flutter/material.dart';
import 'contact.dart';
import 'Button.dart';

class ContactScreen extends StatefulWidget {
  final Function(ContactModel) onAddContact;

  const ContactScreen({super.key, required this.onAddContact});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();

  void _submitData() {
    if (_formKey.currentState!.validate()) {
      final newContact = ContactModel(
        name: _nameController.text,
        email: _emailController.text,
        phone: _phoneController.text,
      );
      widget.onAddContact(newContact);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFFFF1D4), width: 1.5),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'assets/images/image-not-preview-SKnaSYA7Kx.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _nameController.text.isEmpty ? 'User Name' : _nameController.text,
                        style: const TextStyle(
                          color: Color(0xFFFFF1D4),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Divider(color: Color(0xFFFFF1D4), thickness: 1),
                      Text(
                        _emailController.text.isEmpty ? 'example@email.com' : _emailController.text,
                        style: const TextStyle(color: Color(0xFFE2F4F6), fontSize: 12),
                      ),
                      const Divider(color: Color(0xFFFFF1D4), thickness: 1),
                      Text(
                        _phoneController.text.isEmpty ? '+200000000000' : _phoneController.text,
                        style: const TextStyle(color: Color(0xFFE2F4F6), fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            CustomTextField(
              controller: _nameController,
              hintText: 'Enter User Name',
              onChanged: (val) => setState(() {}),
              validator: (val) => val == null || val.isEmpty ? 'Required' : null,
            ),
            const SizedBox(height: 12),
            CustomTextField(
              controller: _emailController,
              hintText: 'Enter User Email',
              onChanged: (val) => setState(() {}),
              validator: (val) => val == null || val.isEmpty ? 'Required' : null,
            ),
            const SizedBox(height: 12),
            CustomTextField(
              controller: _phoneController,
              hintText: 'Enter User Phone',
              onChanged: (val) => setState(() {}),
              validator: (val) => val == null || val.isEmpty ? 'Required' : null,
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFF1D4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: _submitData,
                child: const Text(
                  'Enter user',
                  style: TextStyle(
                    color: Color(0xFF29384D),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}