/**
 * Author     : Kevin Antonioli (braveitnow@pm.me)
 * Description: class to populate field set names into the dropdown on an LWC config
 * Created    : 03.21.2023
 *
 * Revisions:
 * Date : Name : Notes
 */
global class FieldSetPicklist extends VisualEditor.DynamicPickList {
  global override VisualEditor.DataRow getDefaultValue() {
    return null;
  }
  global override VisualEditor.DynamicPickListRows getValues() {
    Set<String> fieldSets = new Set<String>();
    VisualEditor.DynamicPickListRows values = new VisualEditor.DynamicPickListRows();
    for (Schema.SObjectType objType : ApexUtils.globalDescribe.Values()) {
      String objApiName = objType.getDescribe().getName();
      Map<String, Schema.FieldSet> fieldSetMap = ApexUtils.globalDescribe.get(
          objApiName
        )
        .getDescribe()
        .FieldSets.getMap();
      for (String fieldSetName : fieldSetMap.keySet()) {
        if (!fieldSets.contains(fieldSetName)) {
          VisualEditor.DataRow value = new VisualEditor.DataRow(
            fieldSetName,
            fieldSetName
          );
          values.addRow(value);
        }
        fieldSets.add(fieldSetName);
      }
    }
    return values;
  }
}