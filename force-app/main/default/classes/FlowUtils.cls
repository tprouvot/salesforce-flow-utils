/**
 * @description Provides methods invocable from flows
 * @author      Thomas Prouvot
 */
public with sharing class FlowUtils {

	@InvocableMethod(label='Get recordId SObject Name' description='Returns the name of the SObject based on recordIds.' category='Flow Utils' iconName='slds:standard:entity')
	/**
	 * @description Returns the name of the SObject based on recordIds
	 * @param ids   List of ids
	 * @return      `List<String>`
	 */
	public static List<String> getSobjectNames(List<Id> ids) {
		List<String> objecttNames = new List<String>();

		//get sobject name based on record id
		for (Id myId : ids) {
			objecttNames.add(String.valueOf(myId.getSObjectType()));
		}
		return objecttNames;
	}
}