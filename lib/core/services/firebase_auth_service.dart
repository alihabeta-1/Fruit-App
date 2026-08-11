import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruithub/core/errors/exeptions.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: email,
            password: password,
          );

      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw CustomException(
          message:
              'للأسف، كلمة المرور ضعيفة جدًا. يرجى اختيار كلمة مرور أقوى.',
        );
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(
          message:
              'للأسف، هذا البريد الإلكتروني مستخدم بالفعل من قبل حساب آخر.',
        );
      }
      throw CustomException(
        message:
            'للأسف، حدث خطأ غير متوقع أثناء إنشاء الحساب. يرجى المحاولة مرة أخرى.',
      );
    } catch (e) {
      throw CustomException(
        message:
            'للأسف، حدث خطأ غير متوقع أثناء إنشاء الحساب. يرجى المحاولة مرة أخرى.',
      );
    }
  }
}
