import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('Hello world'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialogue(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context)=>AlertDialog(
        title: const Text("Are you sure?"),
        content: const Text("Sit adipisicing sint consequat duis nostrud aute pariatur occaecat eiusmod excepteur officia non. Reprehenderit sint consequat amet ea sit occaecat in magna deserunt cillum culpa aliquip. Laboris pariatur reprehenderit consequat fugiat officia enim proident non irure sunt qui excepteur mollit. Veniam irure culpa eu eu ipsum tempor sunt adipisicing. Sint qui nostrud aliqua et aliquip aliqua do consequat. Laborum sit Lorem ullamco nulla voluptate id amet fugiat tempor qui laboris culpa incididunt reprehenderit."),
        actions: [
          TextButton(onPressed: ()=>context.pop(), child: const Text('Cancel')),
          FilledButton(onPressed: ()=>context.pop(), child: const Text('Accept')),
        ],
      ));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars Dialogues'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(
                    context: context,
                    children: [
                      const Text('Laborum labore velit duis magna dolor consectetur enim non nulla in labore aliqua tempor officia.')
                    ]);
                }, child: const Text('Used Licenses')),
            FilledButton.tonal(
                onPressed: () {
                  openDialogue(context);
                }, child: const Text('Show screen Dialogue')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
