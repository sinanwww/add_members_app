import 'package:add_members_app/model/member_model.dart';

class MemberViewModel {
  final List<MemberModel> _memberList = [];

  List<MemberModel> get memberList => List.unmodifiable(_memberList);
  addMember(MemberModel memberModel) {
    _memberList.add(memberModel);
  }
}
