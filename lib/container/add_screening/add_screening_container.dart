import 'package:application_1/cubit/add_screening/add_screening_cubit.dart';
import 'package:application_1/presentation/widgets/add_screening/add_screening_widget.dart';
import 'package:application_1/utils/responsive/responsiveness.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddScreeningContainer extends StatefulWidget {
  const AddScreeningContainer({Key? key}) : super(key: key);

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

  ///--------------------- 2 -------------------///
  late TextEditingController weightField;
  late TextEditingController heightField;

  @override
  void initState() {
    super.initState();
    BlocProvider.of<AddScreeningCubit>(context).getAllBlock();
    aadharcardField = TextEditingController();
    mobileNoField = TextEditingController();
    respondent = TextEditingController();
    fatherField = TextEditingController();
    anganwadiCenterField = TextEditingController();
    villageField = TextEditingController();
    ashaWorkerField = TextEditingController();
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

    ///--------------------- 2 -------------------///
    weightField = TextEditingController();
    heightField = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddScreeningCubit, AddScreeningState>(
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
            ),
          ),
        );
      },
    );
  }
}
