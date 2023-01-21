import 'package:application_1/cubit/add_screening/add_screening_cubit.dart';
import 'package:application_1/cubit/home/home_cubit.dart';
import 'package:application_1/model/screening/screening_model.dart';
import 'package:application_1/presentation/widgets/add_screening/add_screening_widget.dart';
import 'package:application_1/presentation/widgets/common/toast.dart';
import 'package:application_1/utils/responsive/responsiveness.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddScreeningContainer extends StatefulWidget {
  final ScreeningModel? screeningData;
  const AddScreeningContainer({
    Key? key,
    this.screeningData,
  }) : super(key: key);

  @override
  State<AddScreeningContainer> createState() => _AddScreeningContainerState();
}

class _AddScreeningContainerState extends State<AddScreeningContainer> {
  late TextEditingController aadharcardField;
  late TextEditingController mobileNoField;
  late TextEditingController respondent;
  late TextEditingController fatherField;
  late TextEditingController anganwadiCenterField;
  late TextEditingController villageField;
  late TextEditingController ashaWorkerField;
  late List<String> years = [];
  late List<String> gestAge = [];
  late List<String> education = [];
  late TextEditingController schoolNameField;

  ///--------------------- 2 -------------------///
  late TextEditingController weightField;
  late TextEditingController heightField;

  ///--------------------- 3 -------------------///
  late List<String> serviceDiscontinue = [];

  ///--------------------- 4 -------------------///
  late TextEditingController hbLevelField;

  ///--------------------- Advised -------------------///
  late TextEditingController addOtherAdviseField;

  @override
  void initState() {
    super.initState();
    BlocProvider.of<AddScreeningCubit>(context).getAllBlock();

    /// ------------------------ update --------------------- ///
    if (widget.screeningData != null) {
      BlocProvider.of<AddScreeningCubit>(context).setDataScreening(
        screeningData: widget.screeningData!,
      );
      respondent =
          TextEditingController(text: widget.screeningData!.respondentName);
      fatherField =
          TextEditingController(text: widget.screeningData!.supportPersonName);
      anganwadiCenterField =
          TextEditingController(text: widget.screeningData!.anganwadiCenter);
      villageField = TextEditingController(text: widget.screeningData!.village);
      ashaWorkerField =
          TextEditingController(text: widget.screeningData!.ashaName);
      schoolNameField =
          TextEditingController(text: widget.screeningData!.schoolName);
      weightField = TextEditingController(text: widget.screeningData!.weight);
      heightField = TextEditingController(text: widget.screeningData!.height);
      hbLevelField =
          TextEditingController(text: widget.screeningData!.statusQuestionOne);
      addOtherAdviseField =
          TextEditingController(text: widget.screeningData!.advicesDescription);
    } else {
      respondent = TextEditingController();
      fatherField = TextEditingController();
      anganwadiCenterField = TextEditingController();
      villageField = TextEditingController();
      ashaWorkerField = TextEditingController();
      schoolNameField = TextEditingController();

      ///--------------------- 2 -------------------///
      weightField = TextEditingController();
      heightField = TextEditingController();

      ///--------------------- 4 -------------------///
      hbLevelField = TextEditingController();
      addOtherAdviseField = TextEditingController();
    }

    /// ------------------------ update --------------------- ///

    aadharcardField = TextEditingController();
    mobileNoField = TextEditingController();

    for (int i = 1900; i > 1899 && i <= DateTime.now().year; i++) {
      years.add(
        i.toString(),
      );
    }
    gestAge.add('1st Trimester');
    gestAge.add('2nd Trimester');
    gestAge.add('3rd Trimester');
    gestAge.add('4th Trimester');
    education.add('Below 8th');
    education.add('8th to 12th');
    education.add('12th Above');

    ///--------------------- 3 -------------------///
    serviceDiscontinue.add('Side effects');
    serviceDiscontinue.add('Bad taste');
    serviceDiscontinue.add('Not provided by anybody');
    serviceDiscontinue.add('No time to Take');
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddScreeningCubit, AddScreeningState>(
      listenWhen: (previous, current) {
        return previous.saveData != current.saveData ||
            previous.firstError != current.firstError ||
            previous.secondError != current.secondError ||
            previous.updateData != current.updateData;
      },
      listener: (context, state) async {
        if (state.firstError || state.secondError) {
          showCustomToast(
            context,
            status: ToastStatus.error,
            message: 'Please fill all data',
          );
        }
        state.saveData.maybeWhen(
          orElse: () => Container(),
          inProgress: () => Container(),
          initial: () => Container(),
          failed: (error) => showCustomToast(
            context,
            status: ToastStatus.error,
            message: error,
          ),
          success: (success) => {
            showCustomToast(
              context,
              status: ToastStatus.success,
              message: success,
            ),
            Navigator.pop(context),
            BlocProvider.of<HomeCubit>(context).getAllScreening(),
          },
        );
        state.updateData.maybeWhen(
          orElse: () => Container(),
          inProgress: () => Container(),
          initial: () => Container(),
          failed: (error) => showCustomToast(
            context,
            status: ToastStatus.error,
            message: error,
          ),
          success: (success) => {
            showCustomToast(
              context,
              status: ToastStatus.success,
              message: success,
            ),
            Navigator.pop(context),
            BlocProvider.of<HomeCubit>(context).getAllScreening(),
          },
        );
      },
      builder: (context, state) {
        final addScreeningCubit = BlocProvider.of<AddScreeningCubit>(context);
        return Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF6345C3),
            leading: Icon(
              Icons.arrow_back_rounded,
              size: 25.s,
            ),
            title: Text(
              'Add Screening Report',
              style: TextStyle(
                fontSize: 16.s,
                fontWeight: FontWeight.w700,
                fontFamily: 'Lato-Bold',
              ),
            ),
          ),
          body: SafeArea(
            child: AddScreeningWidget(
              isLoading: (state.getBlock.maybeWhen(
                    orElse: () => false,
                    inProgress: () => true,
                    success: (_) => false,
                  ) ||
                  state.getCenter.maybeWhen(
                    orElse: () => false,
                    inProgress: () => true,
                    success: (_) => false,
                  ) ||
                  state.getAnm.maybeWhen(
                    orElse: () => false,
                    inProgress: () => true,
                    success: (_) => false,
                  ) ||
                  state.getAdvised.maybeWhen(
                    orElse: () => false,
                    inProgress: () => true,
                    success: (_) => false,
                  )),
              dateSelect: addScreeningCubit.dateSelect,
              aadharcardField: aadharcardField,
              aadharcardFieldChnage: addScreeningCubit.aadharcardOnchange,
              mobileNoField: mobileNoField,
              mobileNoFieldChnage: addScreeningCubit.mobileNoOnchange,
              respondentField: respondent,
              respondentFieldChnage: addScreeningCubit.respondentOnchange,
              fatherField: fatherField,
              fatherFieldChnage: addScreeningCubit.fatherOnchange,
              years: years,
              age: state.age,
              ageFieldChnage: addScreeningCubit.ageOnchange,
              cast: state.cast,
              castOnChange: addScreeningCubit.castOnchange,
              respondentType: state.respondentType,
              respondentTypeOnChange: addScreeningCubit.respondentTypeOnchange,
              gestAge: gestAge,
              gestAget: state.gestAge,
              gestAgeFieldChnage: addScreeningCubit.guestAgeOnchange,
              gestAgeShow: state.gestAgeShow,
              education: education,
              educationFieldChnage: addScreeningCubit.educationOnchange,
              selectedEducation: state.education,
              block: state.block,
              blockFieldChnage: addScreeningCubit.blockOnchange,
              selectedBlock: state.selectedBlock,
              center: state.center,
              centerFieldChnage: addScreeningCubit.centerOnchange,
              selectedCenter: state.selectedCenter,
              anganwadiCenterField: anganwadiCenterField,
              anganwadiCenterFieldChnage:
                  addScreeningCubit.anganwadiCenterOnchange,
              villageField: villageField,
              villageFieldChnage: addScreeningCubit.villageOnchange,
              schoolNameField: schoolNameField,
              schoolNameFieldChnage: addScreeningCubit.schoolNameFieldChnage,
              schoolData: state.schoolData,
              schoolOnchange: addScreeningCubit.schoolOnchange,
              currentSchool: state.currentSchool,
              currentSchoolFieldChnage:
                  addScreeningCubit.currentSchoolFieldChnage,
              ashaWorkerField: ashaWorkerField,
              ashaWorkerFieldChnage: addScreeningCubit.ashaWorkerOnchange,
              pageChnage: addScreeningCubit.pageChange,
              anm: state.employeeData,
              anmFieldChnage: addScreeningCubit.anmOnchange,
              selectedAnm: state.selectedAnm,
              pageNo: state.pageNo,
              weightField: weightField,
              weightFieldChnage: addScreeningCubit.weightOnchange,
              heightField: heightField,
              heightFieldChnage: addScreeningCubit.heightOnchange,
              bmi: state.bmi,
              ifa: state.ifa,
              ifaOnChange: addScreeningCubit.ifaOnchange,
              ancCheckup: state.ancCheckup,
              ancCheckupOnChange: addScreeningCubit.ancCheckupOnChange,
              serviceDiscontinue: serviceDiscontinue,
              selectedserviceDiscontinue: state.serviceDiscontinue,
              serviceDiscontinueFieldChnage:
                  addScreeningCubit.serviceDiscontinueOnchange,
              hbField: hbLevelField,
              hbFieldChnage: addScreeningCubit.hbOnchange,
              selectedRespondentType: state.selectedRespondantType,
              sickelCell: state.sickelCell,
              sickelCellOnChange: addScreeningCubit.sickelCellOnChange,
              malaria: state.malaria,
              malariaOnChange: addScreeningCubit.malariaOnChange,
              advisedData: state.advisedDescription,
              referHospitalOnchange: addScreeningCubit.referHospitalOnchange,
              selectedreferHospital: state.referHospital,
              addOtherAdviseField: addOtherAdviseField,
              addOtherAdviseOnchange: addScreeningCubit.addOtherAdviseOnchange,
              showSchoolDetails: state.schoolDetailsShow,
            ),
          ),
        );
      },
    );
  }
}
