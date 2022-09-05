import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AddingTransactionScreen extends StatefulWidget {
  const AddingTransactionScreen({super.key});

  @override
  State<AddingTransactionScreen> createState() =>
      _AddingTransactionScreenState();
}

class _AddingTransactionScreenState extends State<AddingTransactionScreen> {
  TextEditingController amountController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController quickNoteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      const SizedBox(width: 10),
                      IconButton(
                          onPressed: () => Get.back(),
                          icon: const Icon(FontAwesomeIcons.arrowLeftLong)),
                      const SizedBox(width: 15),
                      const Text(
                        "Adding Transaction",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(thickness: 0.5),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        "Enter Spend Amount",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      Text(
                        "Enter the amount you have spent\nwithout using zero balance.",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                controller: amountController,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                cursorColor: Colors.blueGrey,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.indigoAccent,
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  contentPadding: const EdgeInsets.all(20),
                  label: const Text(
                    "Amount",
                    style: TextStyle(fontSize: 18, color: Colors.indigo),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.indigoAccent,
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: const [
                  Text(
                    "Enter Date",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                controller: dateController,
                cursorColor: Colors.blueGrey,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.indigoAccent,
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  contentPadding: const EdgeInsets.all(20),
                  label: const Text(
                    "Date",
                    style: TextStyle(fontSize: 18, color: Colors.indigo),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.indigoAccent,
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now());

                  if (pickedDate != null) {
                    String formattedDate =
                        DateFormat('dd/MM/yyyy').format(pickedDate);
                    setState(() {
                      dateController.text = formattedDate;
                    });
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        "Mode of Payment",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          width: 100,
                          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                          decoration: BoxDecoration(
                              color: Colors.indigo.shade50,
                              borderRadius: BorderRadius.circular(50)),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "UPI",
                              style:
                                  TextStyle(color: Colors.indigo, fontSize: 18),
                            ),
                          )),
                      Container(
                          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                          decoration: BoxDecoration(
                              color: Colors.indigo.shade50,
                              borderRadius: BorderRadius.circular(50)),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Card",
                              style:
                                  TextStyle(color: Colors.indigo, fontSize: 18),
                            ),
                          )),
                      Container(
                          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                          decoration: BoxDecoration(
                              color: Colors.indigo.shade50,
                              borderRadius: BorderRadius.circular(50)),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Cash",
                              style:
                                  TextStyle(color: Colors.indigo, fontSize: 18),
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: const [
                  Text(
                    "Quick Note",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                controller: quickNoteController,
                cursorColor: Colors.blueGrey,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.indigoAccent,
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  contentPadding: const EdgeInsets.all(20),
                  label: const Text(
                    "Quick Note",
                    style: TextStyle(fontSize: 18, color: Colors.indigo),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.indigoAccent,
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Container(
                width: MediaQuery.of(context).size.width - 40,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.indigo.shade900,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    "Save",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            )
          ],
        )));
  }
}
