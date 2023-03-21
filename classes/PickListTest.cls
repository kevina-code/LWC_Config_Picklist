/**
 * Author     : Kevin Antonioli (braveitnow@pm.me)
 * Description: provides code coverage for the following classes: ObjPicklist, FieldSetPicklist
 * Created    : 03.21.2023
 *
 * Revisions:
 * Date : Name : Notes
 */
@isTest
private class PickListTest {
  @isTest
  static void test_standard() {
    ObjPicklist arlObjPickList = new ObjPicklist();
    arlObjPickList.getDefaultValue();
    arlObjPickList.getValues();

    Assert.isNotNull(arlObjPickList.getValues());

    FieldSetPicklist arlFieldSetPicklist = new FieldSetPicklist();
    arlFieldSetPicklist.getDefaultValue();
    arlFieldSetPicklist.getValues();
  }
}