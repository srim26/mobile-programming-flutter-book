import 'package:flutter_test/flutter_test.dart';
import 'package:student_life_assistant/main.dart';

void main() {
  testWidgets('dashboard menampilkan tiga fitur utama', (tester) async {
    await tester.pumpWidget(const StudentLifeAssistantApp());

    expect(find.text('Tugas'), findsOneWidget);
    expect(find.text('Jadwal'), findsOneWidget);
    expect(find.text('Profil'), findsOneWidget);
  });
}
