Stream<int> countdownStream(int start) async* {
  if (start > 0) {
    for (int i = 0; i < start; i++) {
      yield start - i;
      await Future.delayed(Duration(seconds: 1));
    }
  } else {
    print('Invalid Time Input');
  }
}

Future<String> checkNavigationSystem() async {
  await Future.delayed(Duration(seconds: 2));
  return 'วิถีกระสุนล็อกเป้าสำเร็จ (พิกัดอัลฟ่า)';
}

void main(List<String> args) async {
  try {
    print('=== เริ่มต้นระบบป้องกันภัยทางอากาศ ===');
    String NavSys = await checkNavigationSystem();
    print(NavSys);
    print('--- เริ่มการนับถอยหลังยิง ---');
    await for (int i in countdownStream(3)) {
      print(i);
    }
    print('🚀 ขีปนาวุธถูกปล่อยเรียบร้อย! Target Destroyed!');
  } catch (e) {
    print('WTF HAVE U DONE ITZ $e');
  } finally {
    print('=== ปิดระบบป้องกันภัยทางอากาศ ===');
  }
}
