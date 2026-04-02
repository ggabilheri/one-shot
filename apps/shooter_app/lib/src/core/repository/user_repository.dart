import 'package:oneshot_client/oneshot_client.dart';
import 'package:oneshot_flutter/main.dart';

abstract class IUserRepository {
  Future<UserProfile> getOrCreateProfile();
  Future<UserProfile> updateProfile(UserProfile profile);
}

class UserRepository implements IUserRepository {
  @override
  Future<UserProfile> getOrCreateProfile() async {
    try {
      return await client.profile.getOrCreateMyProfile();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<UserProfile> updateProfile(UserProfile profile) async {
    try {
      return await client.profile.updateMyProfile(profile);
    } catch (e) {
      rethrow;
    }
  }
}
