part of 'UserRepositoryImports.dart';

class UserHttpMethods {
  final BuildContext context;

  UserHttpMethods(this.context);

  FirebaseMessaging messaging = FirebaseMessaging.instance;

  Future<HomeModel> getHome() async {
    return await GenericHttp<HomeModel>(context).callApi(
      name: ApiNames.clientHomePage,
      returnType: ReturnType.model,
      methodType: MethodType.get,
      returnDataFun: (data) => data["data"],
      toJsonFunc: (json) => HomeModel.fromJson(json),
    );
  }

  Future<List<DoctorModel>> getDoctorsBySpecId(int id) async {
    return await GenericHttp<DoctorModel>(context).callApi(
      name: ApiNames.doctorsBySpecializationId,
      returnType: ReturnType.list,
      json: {"specialization_id": id},
      methodType: MethodType.post,
      showLoader: false,
      returnDataFun: (data) => data["data"],
      toJsonFunc: (json) => DoctorModel.fromJson(json),
    ) as List<DoctorModel>;
  }

  Future<List<DoctorModel>> getFavorites() async {
    return await GenericHttp<DoctorModel>(context).callApi(
      name: ApiNames.authUserFav,
      returnType: ReturnType.list,
      methodType: MethodType.get,
      showLoader: false,
      returnDataFun: (data) => data["data"],
      toJsonFunc: (json) => DoctorModel.fromJson(json),
    ) as List<DoctorModel>;
  }

  Future<DoctorDetailsModel> getDoctorDetails(int id) async {
    return await GenericHttp<DoctorDetailsModel>(context).callApi(
      name: ApiNames.doctorDetailsById,
      json: {"doctor_id": id},
      returnType: ReturnType.model,
      showLoader: false,
      methodType: MethodType.post,
      returnDataFun: (data) => data["data"],
      toJsonFunc: (json) => DoctorDetailsModel.fromJson(json),
    );
  }

  Future<List<ChatModel>> getAllChats() async {
    return await GenericHttp<ChatModel>(context).callApi(
      name: ApiNames.getMyMessages,
      returnType: ReturnType.list,
      methodType: MethodType.get,
      showLoader: false,
      returnDataFun: (data) => data["data"],
      toJsonFunc: (json) => ChatModel.fromJson(json),
    ) as List<ChatModel>;
  }

  Future<bool> updateProfile(UpdateProfileModel model) async {
    dynamic data = await GenericHttp<dynamic>(context).callApi(
      name: ApiNames.updateProfile,
      json: model.toJson(),
      returnType: ReturnType.type,
      showLoader: false,
      methodType: MethodType.post,
    );
    if (data != null) {
      UserModel? user = context.read<UserCubit>().state.model;
      user = UserModel.fromJson(data["data"]["user"]);
      Storage.saveUserData(user);
      user.token = GlobalState.instance.get("token");
      context.read<UserCubit>().onUpdateUserData(user);
      CustomToast.showSimpleToast(msg: data["message"]);
      return true;
    } else {
      return false;
    }
  }

  Future<bool> addRemoveFav(int id) async {
    dynamic data = await GenericHttp<dynamic>(context).callApi(
      name: ApiNames.toggleFavUser,
      json: {"to_id": id},
      returnType: ReturnType.type,
      showLoader: false,
      methodType: MethodType.post,
    );
    if (data != null) {
      CustomToast.showSimpleToast(msg: data["message"]);
      return true;
    } else {
      return false;
    }
  }

  Future<List<PetModel>> getPets() async {
    return await GenericHttp<PetModel>(context).callApi(
      name: ApiNames.authClientPets,
      returnType: ReturnType.list,
      methodType: MethodType.get,
      showLoader: false,
      returnDataFun: (data) => data["data"],
      toJsonFunc: (json) => PetModel.fromJson(json),
    ) as List<PetModel>;
  }

  Future<bool> deletePet(int id) async {
    dynamic data = await GenericHttp<dynamic>(context).callApi(
      name: ApiNames.deletePet,
      json: {"pet_id": id},
      returnType: ReturnType.type,
      methodType: MethodType.post,
    );
    if (data != null) {
      CustomToast.showSimpleToast(msg: data["message"]);
      return true;
    } else {
      return false;
    }
  }

  Future<List<BlogModel>> getBlogs() async {
    return await GenericHttp<BlogModel>(context).callApi(
      name: ApiNames.allBlogs,
      returnType: ReturnType.list,
      methodType: MethodType.get,
      returnDataFun: (data) => data["data"],
      toJsonFunc: (json) => BlogModel.fromJson(json),
    ) as List<BlogModel>;
  }

  Future<List<CommentModel>> getBlogComments(int id) async {
    return await GenericHttp<CommentModel>(context).callApi(
      name: ApiNames.blogComments,
      json: {"blog_id": id},
      returnType: ReturnType.list,
      methodType: MethodType.post,
      showLoader: false,
      returnDataFun: (data) => data["data"],
      toJsonFunc: (json) => CommentModel.fromJson(json),
    ) as List<CommentModel>;
  }

  Future<bool> addBlogComment(int id, String comment) async {
    dynamic data = await GenericHttp<dynamic>(context).callApi(
      name: ApiNames.makeComment,
      json: {
        "blog_id": id,
        "comment": comment,
      },
      returnType: ReturnType.type,
      methodType: MethodType.post,
    );
    return data != null;
  }

  Future<List<DropDownModel>> getCategories() async {
    return await GenericHttp<DropDownModel>(context).callApi(
      name: ApiNames.categories,
      returnType: ReturnType.list,
      methodType: MethodType.get,
      showLoader: false,
      returnDataFun: (data) => data["data"],
      toJsonFunc: (json) => DropDownModel.fromJson(json),
    ) as List<DropDownModel>;
  }

  Future<bool> addBlog(AddBlogModel model) async {
    dynamic data = await GenericHttp<dynamic>(context).callApi(
      name: ApiNames.createBlog,
      json: model.toJson(),
      returnType: ReturnType.type,
      methodType: MethodType.post,
    );
    return data != null;
  }

  Future<bool> likeOrUnlike(int blogId) async {
    dynamic data = await GenericHttp<dynamic>(context).callApi(
      name: ApiNames.toggleLike,
      json: {"blog_id": blogId},
      returnType: ReturnType.type,
      methodType: MethodType.post,
      showLoader: false,
    );
    return data != null;
  }

  Future<bool> addPet(AddPetModel model) async {
    dynamic data = await GenericHttp<dynamic>(context).callApi(
      name: ApiNames.addPet,
      json: model.toJson(),
      returnType: ReturnType.type,
      methodType: MethodType.post,
    );
    return data != null;
  }

  Future<List<ReservationModel>> getReservations(String status) async {
    return await GenericHttp<ReservationModel>(context).callApi(
      name: ApiNames.reservationByStatus,
      returnType: ReturnType.list,
      json: {"status": status},
      methodType: MethodType.post,
      showLoader: false,
      returnDataFun: (data) => data["data"],
      toJsonFunc: (json) => ReservationModel.fromJson(json),
    ) as List<ReservationModel>;
  }

  Future<bool> addReservation(AddReservationModel model) async {
    dynamic data = await GenericHttp<dynamic>(context).callApi(
      name: ApiNames.makeReservation,
      json: model.toJson(),
      returnType: ReturnType.type,
      methodType: MethodType.post,
    );
    return data != null;
  }

  Future<bool> reviewSession(RateSessionModel model) async {
    dynamic data = await GenericHttp<dynamic>(context).callApi(
      name: ApiNames.rateSession,
      json: model.toJson(),
      returnType: ReturnType.type,
      methodType: MethodType.post,
    );
    return data != null;
  }

  Future<List<AvailableDayModel>> getAvailableDays(int doctorId) async {
    return await GenericHttp<AvailableDayModel>(context).callApi(
      name: ApiNames.doctorAvailableWorkDayTime,
      returnType: ReturnType.list,
      json: {"doctor_id": doctorId},
      methodType: MethodType.post,
      showLoader: false,
      returnDataFun: (data) => data["data"],
      toJsonFunc: (json) => AvailableDayModel.fromJson(json),
    ) as List<AvailableDayModel>;
  }

  Future<bool> changeSessionTime({
    required int resId,
    required int doctorId,
    required timeId,
  }) async {
    dynamic data = await GenericHttp<dynamic>(context).callApi(
      name: ApiNames.changeReservationTime,
      json: {
        "reservation_id": resId,
        "doctor_id": doctorId,
        "doctor_day_time_id": timeId,
      },
      returnType: ReturnType.type,
      methodType: MethodType.post,
    );
    return data != null;
  }
}
