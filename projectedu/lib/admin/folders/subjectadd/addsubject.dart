import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projectedu/admin/folders/mainsection/choose.dart';

class AdminAddSubject extends StatefulWidget {
  const AdminAddSubject({super.key});
  @override
  State<AdminAddSubject> createState() => _AdminAddSubjectState();
}

class _AdminAddSubjectState extends State<AdminAddSubject> {
  final _subjectController = TextEditingController();

  final _chapterController = TextEditingController();

  final _sectionController = TextEditingController();

  final _contentController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  String? selectimage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (ctx) => const ChooseSection()));
            },
            child: const Icon(FontAwesomeIcons.arrowLeft)),
        title: const Text('Add Chapter'),
        backgroundColor: Colors.amber,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Form(
              key: _formKey,
              child: Column(children: [
                const SizedBox(height: 120),
                TextFormField(
                  controller: _subjectController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Subject'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Subject is empty';
                    } else {
                      return null;
                    }
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
                const SizedBox(height: 25),
                TextFormField(
                  controller: _chapterController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Chapter Name'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Chapter Name is empty';
                    } else {
                      return null;
                    }
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
                const SizedBox(height: 25),
                TextFormField(
                  controller: _contentController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Section Heading'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Section Heading is empty';
                    } else {
                      return null;
                    }
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
                const SizedBox(height: 25),
                TextFormField(
                  controller: _sectionController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Content'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Content is empty';
                    } else {
                      return null;
                    }
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
                const SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ChooseSection()));
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('successfully added'),
                          backgroundColor: Colors.green,
                        ),
                      );
                    }
                  },
                  child: const Text('Add'),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
