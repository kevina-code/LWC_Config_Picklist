/**
 * Author     : Kevin Antonioli (braveitnow@pm.me)
 * Description: class to populate object names into the dropdown on an LWC config
 * Created    : 03.21.2023
 *
 * Revisions:
 * Date : Name : Notes
 */
global class ObjPicklist extends VisualEditor.DynamicPickList {
  global override VisualEditor.DataRow getDefaultValue() {
    return null;
  }
  global override VisualEditor.DynamicPickListRows getValues() {
    VisualEditor.DynamicPickListRows myValues = new VisualEditor.DynamicPickListRows();
    for (Schema.SObjectType objType : ApexUtils.globalDescribe.Values()) {
      String objApiName = objType.getDescribe().getName();
      VisualEditor.DataRow value = new VisualEditor.DataRow(
        objApiName,
        objApiName
      );
      myValues.addRow(value);
    }
    return myValues;
  }
}