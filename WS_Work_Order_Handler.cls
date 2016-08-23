/*--------------------------------------------------------------------------------------------------------------------------
Author: Hari Krishna
Company: Schneider-Electric
Description: WS_Work_Order Uses WS_Work_Order_Handler for connector 
Test Class: WS_Work_Order_Handler_Test
History
27-07-2016 Hari Krishna  Created
--------------------------------------------------------------------------------------------------------------------------*/

public Class WS_Work_Order_Handler{

public final static String WORKORDER_QUERY ='select ID,Name,SVMXC__Company__c,SVMXC__Contact__c,CustomerRequestedDate__c,Shipped_Serial_Number__c,CustomerRequestedTime__c,BusinessUnit__c,Service_Business_Unit__c,WOPriority__c,SVMXC__Scheduled_Date_Time__c,WorkOrderGroup__c,WorkOrderGroup__r.BackOfficeReference__c,WorkOrderName__c,Comments_to_Planner__c,CountryOfBackOffice__c,BackOfficeSystem__c,SVMXC__Order_Status__c,SubStatus__c,Work_Order_Category__c,SVMXC__Order_Type__c,WorkOrderSubType__c,IsBillable__c,SVMXC__Billing_Type__c,SVMXC__Group_Member__c,OwnerID,Parent_Work_Order__c,Parent_Work_Order__r.BackOfficeReference__c,Parent_Work_Order__r.TECH_WOBackOfficeRecordID__c,SoldToAccount__c,SVMXC__Component__c,SVMXC__Product__c,Project__c,SVMXC__Service_Contract__c,ServiceLine__c,SVMXC__Closed_On__c,BackOfficeReference__c,SVMXC__Company__r.SEAccountID__c,SVMXC__Company__r.Name,SVMXC__Company__r.AccountLocalName__c,SVMXC__Company__r.Street__c,SVMXC__Company__r.StreetLocalLang__c,SVMXC__Company__r.AdditionalAddress__c,SVMXC__Company__r.LocalAdditionalAddress__c,SVMXC__Company__r.ZipCode__c,SVMXC__Company__r.City__c,SVMXC__Company__r.LocalCity__c,SVMXC__Company__r.Country__r.CountryCode__c,SVMXC__Company__r.StateProvince__r.Name,SVMXC__Company__r.StateProvince__r.StateProvinceCode__c,SVMXC__Company__r.RecordType.Name,SVMXC__Contact__r.SEContactID__c,SVMXC__Contact__r.FirstName,SVMXC__Contact__r.LocalFirstName__c,SVMXC__Contact__r.MidInit__c,SVMXC__Contact__r.LocalMidInit__c,SVMXC__Contact__r.LastName,SVMXC__Contact__r.LocalLastName__c,SVMXC__Contact__r.Email,SVMXC__Contact__r.MobilePhone,SVMXC__Contact__r.WorkPhone__c,SVMXC__SLA_Terms__c,SVMXC__SLA_Terms__r.Name,SVMXC__Group_Member__r.SVMXC__Role__c,SVMXC__Group_Member__r.SVMXC__Salesforce_User__r.FirstName,SVMXC__Preferred_Technician__c,SVMXC__Group_Member__r.SVMXC__Salesforce_User__r.LastName,SVMXC__Group_Member__r.SVMXC__Salesforce_User__r.Email,SVMXC__Group_Member__r.SESAID__c,SVMXC__Group_Member__r.ThirdPartyContact__r.FirstName,SVMXC__Group_Member__r.ThirdPartyContact__r.LastName,SVMXC__Group_Member__r.ThirdPartyContact__r.Email,SVMXC__Group_Member__r.Business_Unit__c,SVMXC__Group_Member__r.Level__c,SVMXC__Component__r.GoldenAssetId__c,SVMXC__Component__r.Name,SVMXC__Component__r.SVMXC__Company__r.SEAccountID__c,SVMXC__Component__r.SVMXC__Serial_Lot_Number__c,SVMXC__Component__r.SchneiderCommercialReference__c,SVMXC__Component__r.SVMXC__Company__r.Country__r.CountryCode__c,SVMXC__Component__r.SVMXC__Company__r.Name,SVMXC__Component__r.SVMXC__Company__r.AccountLocalName__c,SVMXC__Component__r.SVMXC__Company__r.Street__c,SVMXC__Component__r.SVMXC__Company__r.StreetLocalLang__c,SVMXC__Component__r.SVMXC__Company__r.AdditionalAddress__c,SVMXC__Component__r.SVMXC__Company__r.LocalAdditionalAddress__c,SVMXC__Component__r.SVMXC__Company__r.ZipCode__c,SVMXC__Component__r.SVMXC__Company__r.City__c,SVMXC__Component__r.SVMXC__Company__r.LocalCity__c,SVMXC__Component__r.SVMXC__Company__r.RecordType.Name,SVMXC__Component__r.SVMXC__Company__r.StateProvince__r.StateProvinceCode__c,SVMXC__Service_Contract__r.BackOfficeReference__c,ServiceLine__r.BackOfficeReference__c,Sales_Order_Number__c,salesOrderLineNumber__c,Customer_Reference_Number__c,PONumber__c,SVMXC__Primary_Territory__r.Name,CustomerReferenceNumber__c,SVMXC__Case__c,SVMXC__Case__r.CaseNumber,SVMXC__Component__r.RecordType.Name,EstimatedExpenseCost__c,Estimated_Labor_Cost__c,EstimatedMaterialCost__c,QuotationNumber__c,CurrencyIsoCode,SVMXC__Problem_Description__c,SVMXC__Primary_Territory__r.Plant__r.Name,TECH_WOBackOfficeRecordID__c,TECH_FOLastUpdate_Timestamp__c,LastModifiedDate,PlannedServiceDuration__c,Trigger_Billing__c,SplitfromBackOfficeReference__c  from SVMXC__Service_Order__c';

public final static String PARTSORDER_QUERY = 'select id,Name,SVMXC__Order_Status__c,Service_level__c,SVMXC__Shipping_Receiving_Notes__c,Freight_terms__c,Parts_SLA_terms__c,On_site_SLA_terms__c,SVMXC__Contact__c,SVMXC__Contact__r.SEContactID__c,SVMXC__Contact__r.FirstName,SVMXC__Contact__r.LocalFirstName__c,SVMXC__Contact__r.MidInit__c,SVMXC__Contact__r.LocalMidInit__c,SVMXC__Contact__r.LastName,SVMXC__Contact__r.LocalLastName__c,SVMXC__Contact__r.Email,SVMXC__Contact__r.MobilePhone,SVMXC__Contact__r.WorkPhone__c,Ship_to__r.SEAccountID__c,Ship_to__r.Name,Ship_to__r.AccountLocalName__c,Ship_to__r.Street__c,Ship_to__r.StreetLocalLang__c,Ship_to__r.AdditionalAddress__c,Ship_to__r.LocalAdditionalAddress__c,Ship_to__r.ZipCode__c,Ship_to__r.City__c,Ship_to__r.LocalCity__c,Ship_to__r.Country__r.CountryCode__c,Ship_to__r.StateProvince__c,Ship_to__c,Attention_To__r.FederationIdentifier,Attention_To__r.Email,Ship_to__r.RecordType.Name,Ship_to__r.StateProvince__r.StateProvinceCode__c,RecordType.Name,To_Name__c,SVMXC__Destination_Street__c,SVMXC__Destination_Zip__c,SVMXC__Destination_City__c,To_Country__r.CountryCode__c,To_State__r.StateProvinceCode__c,Shipment_mode__c,Parts_Order_RMA__c,Parts_Order_RMA__r.name,SVMXC__Company__c,SVMXC__Company__r.SEAccountID__c,SVMXC__Company__r.Name,SVMXC__Company__r.AccountLocalName__c,SVMXC__Company__r.Street__c,SVMXC__Company__r.StreetLocalLang__c,SVMXC__Company__r.AdditionalAddress__c,SVMXC__Company__r.LocalAdditionalAddress__c,SVMXC__Company__r.ZipCode__c,SVMXC__Company__r.City__c,SVMXC__Company__r.LocalCity__c,SVMXC__Company__r.Country__r.CountryCode__c,SVMXC__Company__r.StateProvince__c,SVMXC__Company__r.RecordType.Name,SVMXC__Company__r.StateProvince__r.StateProvinceCode__c,From_Name__c,SVMXC__Source_Street__c,SVMXC__Source_Zip__c,SVMXC__Source_City__c,From_Country__c,From_State__c from SVMXC__RMA_Shipment_Order__c ';

public final static String PARTSORDERLINE_QUERY = 'select id,Name,SVMXC__RMA_Shipment_Order__c,SVMXC__Line_Type__c,Plant_Name__r.name,SVMXC__Expected_Quantity2__c,UnitofMeasure__c,RequestedDate__c,RecordType.Name,Calculated_plant__r.name,Spare_part_category__c,SVMXC__Expected_Ship_Date__c,Lead_Date__c,Free_text_reference__c,Generic_reference__c,Shipment_mode__c,SVMXC__Product__c,SKU__c,BOMaterialReference__c,createdby.FederationIdentifier,createdby.FirstName,createdby.LastName,Available_stock__c,Received_Qty__c,Received_Date__c,Return_Reason__c,SVMXC__Serial_Number__r.SVMXC__Serial_Lot_Number__c,CurrencyIsoCode,SVMXC__Line_Price2__c, ShippingStatus__c,Vendor__c from SVMXC__RMA_Shipment_Line__c';

public final static String INSTALLEDPRODUCT_QUERY=' select id, name ,GoldenAssetId__c,SVMXC__Company__c,SVMXC__Company__r.SEAccountID__c,CustomerSerialNumber__c, SchneiderCommercialReference__c,SVMXC__Serial_Lot_Number__c,SVMXC__Product__c,SVMXC__Company__r.Country__r.CountryCode__c from SVMXC__Installed_Product__c ';

public final static String CONTACT_QUERY ='Select id,SEContactID__c,FirstName,LocalFirstName__c,MidInit__c,LocalMidInit__c,LastName,LocalLastName__c,Email,MobilePhone,WorkPhone__c,AccountId from Contact ';

/*--------------------------------------------------------------------------------------------------------------------------
Author: Hari Krishna
Company: Schneider-Electric
Description: getWorkOrderObjects will returns work orders
Inputs:  Set of work order Ids
Returns: List work orders ie(SVMXC__Service_Order__c)
History
27-07-2016 Hari Krishna Created
--------------------------------------------------------------------------------------------------------------------------*/
    public Static List<SVMXC__Service_Order__c> getWorkOrderObjects(Set<Id> woids){
        
        List<SVMXC__Service_Order__c>  wos = new List<SVMXC__Service_Order__c>();
        if(woids != null && woids.size()>0)
        {
            String query = WORKORDER_QUERY;
            wos = DataBase.query(WORKORDER_QUERY+' where id in : woids');
        }
        return wos;
    }
/*--------------------------------------------------------------------------------------------------------------------------
Author: Hari Krishna
Company: Schneider-Electric
Description: populateWorkOrderFields will Map work order to work orders unit (WS_Work_Order.WorkOrder)
Inputs:  work order object 
Returns: work orders unit (WS_Work_Order.WorkOrder)
History
27-07-2016 Hari Krishna Created
--------------------------------------------------------------------------------------------------------------------------*/    
    public Static  WS_Work_Order.WorkOrder  populateWorkOrderFields(SVMXC__Service_Order__c wo){
        WS_Work_Order.WorkOrder woresult = new WS_Work_Order.WorkOrder();
        woresult.workOrderbFOID = wo.id;
        woresult.workOrderNumber = wo.Name;        
        WS_Work_Order.Account ipAtAcc = new WS_Work_Order.Account();
        ipAtAcc.name  = wo.SVMXC__Company__r.Name;
        ipAtAcc.bFOID = wo.SVMXC__Company__c;
        ipAtAcc.GoldenID = wo.SVMXC__Company__r.SEAccountID__c;
        ipAtAcc.NameLocal = wo.SVMXC__Company__r.AccountLocalName__c;
        ipAtAcc.Street = wo.SVMXC__Company__r.Street__c;
        ipAtAcc.StreetLocal =  wo.SVMXC__Company__r.StreetLocalLang__c;
        ipAtAcc.AddAddressInfo = wo.SVMXC__Company__r.AdditionalAddress__c;
        ipAtAcc.AddAddressInfoLocal =  wo.SVMXC__Company__r.LocalAdditionalAddress__c;
        ipAtAcc.ZipCode =  wo.SVMXC__Company__r.ZipCode__c;
        ipAtAcc.City =  wo.SVMXC__Company__r.City__c;
        ipAtAcc.LocalCity = wo.SVMXC__Company__r.LocalCity__c;
        ipAtAcc.CountryCode = wo.SVMXC__Company__r.Country__r.CountryCode__c;
        ipAtAcc.StateProvinceCode = wo.SVMXC__Company__r.StateProvince__r.StateProvinceCode__c;         
        ipAtAcc.recordTypeName = wo.SVMXC__Company__r.RecordType.Name;        
        WS_Work_Order.Contact contact  = new WS_Work_Order.Contact();
        contact.GoldenID = wo.SVMXC__Contact__r.SEContactID__c;
        contact.firstName = wo.SVMXC__Contact__r.FirstName;
        contact.localFirstName = wo.SVMXC__Contact__r.LocalFirstName__c;
        contact.middleInitial = wo.SVMXC__Contact__r.MidInit__c;
        contact.localMiddleInitial = wo.SVMXC__Contact__r.LocalMidInit__c;
        contact.lastName = wo.SVMXC__Contact__r.LastName;
        contact.localLastName = wo.SVMXC__Contact__r.LocalLastName__c;
        contact.emailAddress = wo.SVMXC__Contact__r.Email;
        contact.mobilePhone = wo.SVMXC__Contact__r.MobilePhone;
        contact.workPhone = wo.SVMXC__Contact__r.WorkPhone__c;        
        woresult.installedAtAccount = ipAtAcc;
        woresult.contact = contact;
        woresult.customerRequestedDate = wo.CustomerRequestedDate__c;
        woresult.customerRequestedTime = wo.CustomerRequestedTime__c;  
        woresult.estimatedExpenseCost = wo.EstimatedExpenseCost__c; 
        woresult.estimatedLaborCost = wo.Estimated_Labor_Cost__c;
        woresult.estimatedMaterialCost = wo.EstimatedMaterialCost__c; 
        woresult.quotationNumber = wo.QuotationNumber__c; 
        woresult.WOcurrencyIsCode = wo.CurrencyIsoCode;  
        //woresult.serviceBusinessUnit = wo.BusinessUnit__c;
        woresult.serviceBusinessUnit = wo.Service_Business_Unit__c; // Yassine.B 13/03/2015 - fix with right BU field
        woresult.priority = wo.WOPriority__c;
        if(wo.SVMXC__Scheduled_Date_Time__c != null)
        woresult.scheduledDateTime = String.valueOf(wo.SVMXC__Scheduled_Date_Time__c);        
        woresult.workOrderGroupbFOID = wo.WorkOrderGroup__c;            
        woresult.workOrderName = wo.WorkOrderName__c;
        woresult.workOrderReason = wo.SVMXC__Problem_Description__c;
        woresult.commentToPlanner = wo.Comments_to_Planner__c;
        woresult.countryOfBackOffice = wo.CountryOfBackOffice__c;
        woresult.backOfficeSystem = wo.BackOfficeSystem__c;
        woresult.workOrderStatus = wo.SVMXC__Order_Status__c;
        woresult.workOrderSubStatus = wo.SubStatus__c;
        woresult.workOrderCategory = wo.Work_Order_Category__c;
        woresult.workOrderType = wo.SVMXC__Order_Type__c;
        woresult.workOrderSubType = wo.WorkOrderSubType__c;         
        woresult.isBillable = wo.IsBillable__c ;
        woresult.billingType = wo.SVMXC__Billing_Type__c;
        woresult.slaTermsName = wo.SVMXC__SLA_Terms__r.Name;
        
        WS_Work_Order.Technician primaryFSR =new  WS_Work_Order.Technician();
        System.debug('\n Log : WOWS tech aaa '+wo.SVMXC__Group_Member__c);
        if(wo.SVMXC__Group_Member__r.SVMXC__Role__c == 'Schneider Employee')
        {
            primaryFSR.SESAID = wo.SVMXC__Group_Member__r.SESAID__c;
            primaryFSR.FirstName = wo.SVMXC__Group_Member__r.SVMXC__Salesforce_User__r.FirstName;
            primaryFSR.LastName = wo.SVMXC__Group_Member__r.SVMXC__Salesforce_User__r.LastName;
            primaryFSR.Email = wo.SVMXC__Group_Member__r.SVMXC__Salesforce_User__r.Email;
            primaryFSR.RoleName = wo.SVMXC__Group_Member__r.SVMXC__Role__c;
            primaryFSR.BusinessUnit = wo.SVMXC__Group_Member__r.Business_Unit__c;
            primaryFSR.level = wo.SVMXC__Group_Member__r.Level__c; // May 2015 Release 
        }
        else{
            primaryFSR.FirstName = wo.SVMXC__Group_Member__r.ThirdPartyContact__r.FirstName;
            primaryFSR.LastName = wo.SVMXC__Group_Member__r.ThirdPartyContact__r.LastName;
            primaryFSR.Email = wo.SVMXC__Group_Member__r.ThirdPartyContact__r.Email;
            primaryFSR.RoleName = wo.SVMXC__Group_Member__r.SVMXC__Role__c;
            primaryFSR.BusinessUnit = wo.SVMXC__Group_Member__r.Business_Unit__c;
            primaryFSR.level = wo.SVMXC__Group_Member__r.Level__c; // May 2015 Release 
        }
        woresult.primaryFSR = primaryFSR;
        
        WS_Work_Order.InstalledProduct mip = new WS_Work_Order.InstalledProduct();
        mip.GoldenID =  wo.SVMXC__Component__r.GoldenAssetId__c;
        mip.Name = wo.SVMXC__Component__r.Name;
        mip.InstalledAtGoldenID = wo.SVMXC__Component__r.SVMXC__Company__r.SEAccountID__c;
        mip.SerialNumber = wo.SVMXC__Component__r.SVMXC__Serial_Lot_Number__c;
        mip.SECommercialRef = wo.SVMXC__Component__r.SchneiderCommercialReference__c;
        mip.installedAtCountryCode = wo.SVMXC__Component__r.SVMXC__Company__r.Country__r.CountryCode__c;
        mip.installedAtName = wo.SVMXC__Component__r.SVMXC__Company__r.Name;
        mip.installedAtNameLocal = wo.SVMXC__Component__r.SVMXC__Company__r.AccountLocalName__c;
        mip.installedAtStreet = wo.SVMXC__Component__r.SVMXC__Company__r.Street__c;
        mip.installedAtStreetLocal = wo.SVMXC__Component__r.SVMXC__Company__r.StreetLocalLang__c;
        mip.installedAtAddAddressInfo = wo.SVMXC__Component__r.SVMXC__Company__r.AdditionalAddress__c;
        mip.installedAtAddAddressInfoLocal = wo.SVMXC__Component__r.SVMXC__Company__r.LocalAdditionalAddress__c;
        mip.installedAtZipCode = wo.SVMXC__Component__r.SVMXC__Company__r.ZipCode__c;
        mip.installedAtCity = wo.SVMXC__Component__r.SVMXC__Company__r.City__c;
        mip.installedAtLocalCity = wo.SVMXC__Component__r.SVMXC__Company__r.LocalCity__c;
        mip.installedAtCountryCode = wo.SVMXC__Component__r.SVMXC__Company__r.Country__r.CountryCode__c;
        mip.installedAtStateProvinceCode = wo.SVMXC__Component__r.SVMXC__Company__r.StateProvince__r.StateProvinceCode__c;
        mip.installedAtRecordTypeName  = wo.SVMXC__Component__r.SVMXC__Company__r.RecordType.Name; 
        woresult.mainInstalledProduct =mip;
        woresult.parentWObFOID = wo.Parent_Work_Order__c;
        woresult.projectNumber = String.valueOf(wo.Project__c);
        //woresult.serviceContractBOReference =  wo.SVMXC__Service_Contract__r.BackOfficeReference__c;
        woresult.serviceContractBOReference =  wo.ServiceLine__r.BackOfficeReference__c;
        //woresult.serviceLineBOReference = wo.ServiceLine__r.BackOfficeReference__c;
        woresult.serviceLineBOReference = wo.SVMXC__Service_Contract__r.BackOfficeReference__c;
        
        woresult.salesOrderNumber = wo.Sales_Order_Number__c;
        woresult.salesOrderLineNumber = wo.salesOrderLineNumber__c;
        
        woresult.PONumber = wo.PONumber__c;
        //woresult.PONumber = wo.Customer_Reference_Number__c;
        woresult.serviceCenterTerritoryName = wo.SVMXC__Primary_Territory__r.Name;
        //woresult.customerReferenceNumber =wo.CustomerReferenceNumber__c;
        woresult.customerReferenceNumber =wo.Customer_Reference_Number__c;
        //woresult.ownerSESAID
        
        woresult.soldToAccountbFOID = wo.SoldToAccount__c;
        //woresult.mainInstalledProduct = String.valueOf(wo.SVMXC__Component__c);
        woresult.productbFOID = String.valueOf(wo.SVMXC__Product__c);
        // QC 11658
        //woresult.parentWOBackOfficeReference = wo.Parent_Work_Order__r.BackOfficeReference__c;
        woresult.parentWOBackOfficeReference = wo.Parent_Work_Order__r.TECH_WOBackOfficeRecordID__c;
        woresult.caseNumber = wo.SVMXC__Case__r.CaseNumber;        
        woresult.WOBackOfficeReference = wo.BackOfficeReference__c;
        woresult.plantName = wo.SVMXC__Primary_Territory__r.Plant__r.Name; //Yassine.B 18/03/2015
        woresult.TECH_WOBackOfficeRecordID = wo.TECH_WOBackOfficeRecordID__c;        
        woresult.WOGBackOfficeReference =  wo.WorkOrderGroup__r.BackOfficeReference__c;        
        if(wo.LastModifiedDate != null)
            woresult.TECH_FOLastUpdateTimestamp = (wo.LastModifiedDate).formatGMT('yyyy-MM-dd HH:mm:ss') ;
        
        //woresult.TECH_FOLastUpdateTimestamp = (wo.TECH_FOLastUpdate_Timestamp__c).formatGMT('yyyy-MM-dd HH:mm:ss');
        //woresult.closedOn =  wo.SVMXC__Closed_On__c;
        if(wo.SVMXC__Closed_On__c != null)
            woresult.closedOn =  (wo.SVMXC__Closed_On__c).formatGMT('yyyy-MM-dd HH:mm:ss');
        
        woresult.plannedDuration =  wo.PlannedServiceDuration__c;
        woresult.triggerBilling =wo.Trigger_Billing__c; // BR-8046
        woresult.SplitfromBackOfficeRef = wo.SplitfromBackOfficeReference__c;//BR-9850
        return woresult;       
        
    }
    
    /*--------------------------------------------------------------------------------------------------------------------------
    Author: Hari Krishna
    Company: Schneider-Electric
    Description: preparePartsOrder prepare partsorder and partsorder line unit 
    Inputs:  work order object 
    Returns: work orders unit (WS_Work_Order.PartsOrders)
    History
    27-07-2016 Hari Krishna Created
    --------------------------------------------------------------------------------------------------------------------------*/
    public static WS_Work_Order.PartsOrders preparePartsOrder(SVMXC__Service_Order__c wo){
        
        WS_Work_Order.PartsOrders posResults = new WS_Work_Order.PartsOrders();
        
        List<WS_Work_Order.PartsOrder> PartsOrderUnitList = new List<WS_Work_Order.PartsOrder>();
        Map<id,SVMXC__RMA_Shipment_Order__c> porderMap = new Map<id, SVMXC__RMA_Shipment_Order__c>();
        List<SVMXC__RMA_Shipment_Line__c> partsOrderLineList = new List<SVMXC__RMA_Shipment_Line__c>();
        Map<id,List<SVMXC__RMA_Shipment_Line__c>> porderLineMap = new Map<id,List<SVMXC__RMA_Shipment_Line__c>>();
        Schema.DescribeSObjectResult dSobjres = Schema.SObjectType.SVMXC__RMA_Shipment_Order__c; 
        Map<String,Schema.RecordTypeInfo> PartOrderRecordTypeInfo = dSobjres.getRecordTypeInfosByName(); 
        Id partsorderrtId ;
        String LineType ='';
        if(wo.SVMXC__Order_Status__c =='Unscheduled' || wo.SVMXC__Order_Status__c =='Scheduled' || wo.SVMXC__Order_Status__c =='Customer Confirmed' || wo.SVMXC__Order_Status__c =='Acknowledge FSE' ||  wo.SVMXC__Order_Status__c =='WIP' )
        {       
            partsorderrtId = PartOrderRecordTypeInfo.get('Shipment').getRecordTypeId();
            LineType = 'Shipment';
        }
        else if(wo.SVMXC__Order_Status__c =='Service Complete'){
            partsorderrtId = PartOrderRecordTypeInfo.get('RMA').getRecordTypeId();
            LineType = 'RMA';
        }
        
        // Yassine B 19/05/2015 BR-7677 : Added more fields in QUERY
        List<SVMXC__RMA_Shipment_Order__c> partsOrderList = new List<SVMXC__RMA_Shipment_Order__c>();
        
        
        partsOrderList = DataBase.query(PARTSORDER_QUERY+' where SVMXC__Service_Order__c = \''+ wo.id+'\' AND SVMXC__Order_Status__c= \'Open\' and RecordTypeId =:partsorderrtId');
        System.debug('\n WWS Log: '+partsOrderList.size());
        
        if(partsOrderList != null && partsOrderList.size()>0){
            porderMap.putAll(partsOrderList);
            
            String polwhereClause  = ' where SVMXC__RMA_Shipment_Order__c in ( '+SOQLListFormat(porderMap.keyset()) +') AND SVMXC__Line_Type__c =: LineType AND (ShippingStatus__c = \'Not Started\' OR ShippingStatus__c = null) ';
            partsOrderLineList = DataBase.query(PARTSORDERLINE_QUERY+polwhereClause);
            
            //partsOrderLineList = DataBase.query(PARTSORDERLINE_QUERY+' where SVMXC__RMA_Shipment_Order__c in : porderMap.keyset() AND SVMXC__Line_Type__c =: LineType AND (ShippingStatus__c = \'Not Started\' OR ShippingStatus__c = null)');  
            
            System.debug('\n WWS Log: '+partsOrderLineList.size());
            for(SVMXC__RMA_Shipment_Line__c line: partsOrderLineList){
                if(porderLineMap.containskey(line.SVMXC__RMA_Shipment_Order__c)){
                    
                    porderLineMap.get(line.SVMXC__RMA_Shipment_Order__c).add(line);
                }
                else{
                    porderLineMap.put(line.SVMXC__RMA_Shipment_Order__c, new List<SVMXC__RMA_Shipment_Line__c>{line});
                }
            }
            
        }
        for(SVMXC__RMA_Shipment_Order__c porder: partsOrderList){
            WS_Work_Order.PartsOrder pou = new WS_Work_Order.PartsOrder();
            
            pou.partOrderbFOID = porder.id;
            pou.partOrderType = porder.RecordType.Name;
            pou.partOrderbFONumber = porder.name;
            pou.partOrderStatus = porder.SVMXC__Order_Status__c;
            pou.serviceLevel =  porder.Service_level__c;
            pou.shippingReceivingNotes = porder.SVMXC__Shipping_Receiving_Notes__c;
            pou.freightTerms = porder.Freight_terms__c;             
            pou.partsSLATerms = porder.Parts_SLA_terms__c;
            pou.onsiteSLATerms =  porder.On_site_SLA_terms__c;
            pou.attentionToSESAID = porder.Attention_To__r.FederationIdentifier;
            pou.attentionToEmail = porder.Attention_To__r.Email;
            pou.partOrderRMAbFOID = porder.Parts_Order_RMA__c;
            pou.partOrderRMAbFONumber = porder.Parts_Order_RMA__r.name;
            pou.shipmentMode = porder.Shipment_mode__c;//BR-10062
            WS_Work_Order.Contact c = new WS_Work_Order.Contact();
            c.GoldenID = porder.SVMXC__Contact__r.SEContactID__c;
            c.firstName = porder.SVMXC__Contact__r.FirstName;
            c.localFirstName = porder.SVMXC__Contact__r.LocalFirstName__c;
            c.middleInitial = porder.SVMXC__Contact__r.MidInit__c;
            c.localMiddleInitial = porder.SVMXC__Contact__r.LocalMidInit__c;
            c.lastName = porder.SVMXC__Contact__r.LastName;
            c.localLastName = porder.SVMXC__Contact__r.LocalLastName__c;
            c.emailAddress = porder.SVMXC__Contact__r.Email;
            c.mobilePhone = porder.SVMXC__Contact__r.MobilePhone;
            c.workPhone = porder.SVMXC__Contact__r.WorkPhone__c;
            pou.contact = c;
            WS_Work_Order.Account a = new WS_Work_Order.Account();   
            // Yassine B 19/05/2015 BR-7677   -- START
            
            if(porder.Ship_to__c != null && LineType == 'Shipment'){ 
                a.GoldenID = porder.Ship_to__r.SEAccountID__c;
                a.AddAddressInfo = porder.Ship_to__r.AccountLocalName__c;
                a.NameLocal = porder.Ship_to__r.AccountLocalName__c;
                a.Street = porder.Ship_to__r.Street__c;
                a.StreetLocal = porder.Ship_to__r.StreetLocalLang__c;
                a.AddAddressInfo = porder.Ship_to__r.AdditionalAddress__c;
                a.AddAddressInfoLocal = porder.Ship_to__r.LocalAdditionalAddress__c;
                a.ZipCode = porder.Ship_to__r.ZipCode__c;
                a.City = porder.Ship_to__r.City__c;
                a.LocalCity = porder.Ship_to__r.LocalCity__c;
                a.CountryCode = porder.Ship_to__r.Country__r.CountryCode__c;
                a.StateProvinceCode = porder.Ship_to__r.StateProvince__r.StateProvinceCode__c;
                a.recordTypeName = porder.Ship_to__r.RecordType.Name;
                a.bFOID = porder.Ship_to__c;
                a.Name = porder.Ship_to__r.Name;
            }else {
                if(LineType == 'Shipment'){
                    a.name=porder.To_Name__c;
                    a.Street=porder.SVMXC__Destination_Street__c;
                    a.ZipCode=porder.SVMXC__Destination_Zip__c;
                    //a.City=porder.SVMXC__Destination_Zip__c;
                    a.City=porder.SVMXC__Destination_City__c;
                    a.CountryCode=porder.To_Country__r.CountryCode__c;
                    a.StateProvinceCode=porder.To_State__r.StateProvinceCode__c;
                }
            }
            if(porder.SVMXC__Company__c != null && LineType == 'RMA'){
                a.GoldenID = porder.SVMXC__Company__r.SEAccountID__c;
                a.AddAddressInfo = porder.SVMXC__Company__r.AccountLocalName__c;
                a.NameLocal = porder.SVMXC__Company__r.AccountLocalName__c;
                a.Street = porder.SVMXC__Company__r.Street__c;
                a.StreetLocal = porder.SVMXC__Company__r.StreetLocalLang__c;
                a.AddAddressInfo = porder.SVMXC__Company__r.AdditionalAddress__c;
                a.AddAddressInfoLocal = porder.SVMXC__Company__r.LocalAdditionalAddress__c;
                a.ZipCode = porder.SVMXC__Company__r.ZipCode__c;
                a.City = porder.SVMXC__Company__r.City__c;
                a.LocalCity = porder.SVMXC__Company__r.LocalCity__c;
                a.CountryCode = porder.SVMXC__Company__r.Country__r.CountryCode__c;
                a.StateProvinceCode = porder.SVMXC__Company__r.StateProvince__r.StateProvinceCode__c;
                a.recordTypeName = porder.SVMXC__Company__r.RecordType.Name;
                a.bFOID = porder.SVMXC__Company__c;
                a.Name = porder.SVMXC__Company__r.Name;
            }
            else{
                if(LineType == 'RMA'){
                    a.name=porder.From_Name__c;
                    a.Street=porder.SVMXC__Source_Street__c;
                    a.ZipCode=porder.SVMXC__Source_Zip__c;
                    //a.City=porder.SVMXC__Destination_Zip__c;
                    a.City=porder.SVMXC__Source_City__c;
                    a.CountryCode=porder.From_Country__r.CountryCode__c;
                    a.StateProvinceCode=porder.From_State__r.StateProvinceCode__c;
                }
            }
            // Yassine B 19/05/2015 BR-7677   -- END
            pou.shipToAccount = a;
            pou.PartsOrderLines = new List<WS_Work_Order.PartsOrderLines>();
            if(porderLineMap.containskey(porder.id))
            {
                List<WS_Work_Order.PartsOrderLines> pols = new List<WS_Work_Order.PartsOrderLines>();
                for(SVMXC__RMA_Shipment_Line__c pol: porderLineMap.get(porder.id)){
                    
                    WS_Work_Order.PartsOrderLines polu = new WS_Work_Order.PartsOrderLines();                       
                    polu.partOrderLinebFOID = pol.id;
                    polu.partOrderLinebFONumber = pol.Name;
                    polu.partOrderLineType = pol.RecordType.Name;
                    polu.partOrderLineInternalType = pol.SVMXC__Line_Type__c;
                    polu.sparePartbFOID = pol.SVMXC__Product__c;
                    polu.FOSKUReference = pol.SKU__c;
                    polu.plantName = pol.Plant_Name__r.name;
                    polu.expectedQuantity = Integer.valueOf(pol.SVMXC__Expected_Quantity2__c);
                    polu.unitOfMeasure = pol.UnitofMeasure__c;
                    polu.requestedDate = String.valueOf(pol.RequestedDate__c);
                    polu.calculatedPlant = pol.Calculated_plant__r.name;
                    polu.stockQuantity = Integer.valueOf(pol.Available_stock__c);
                    
                    polu.sparePartCategory = String.valueOf(pol.Spare_part_category__c);
                    polu.expectedShipDate = String.valueOf(pol.SVMXC__Expected_Ship_Date__c);
                    polu.LeadDate = pol.Lead_Date__c;//BR-10076,BR-9601
                    polu.receivedQuantity = pol.Received_Qty__c;
                    polu.receivedDate = pol.Received_Date__c;
                    polu.returnReason = pol.Return_Reason__c;
                    polu.installedProductSerialNumber = pol.SVMXC__Serial_Number__r.SVMXC__Serial_Lot_Number__c;
                    
                    polu.BOMaterialReference = pol.BOMaterialReference__c;
                    
                    polu.freeTextReference = pol.Free_text_reference__c;
                    polu.genericReference = pol.Generic_reference__c;
                    polu.createdBySESAID = pol.createdby.FederationIdentifier;
                    polu.createdByFirstName = pol.createdby.FirstName;
                    polu.createdByLastName = pol.createdby.LastName;
                    polu.shipmentMode = porder.Shipment_mode__c;
                    polu.partOrderLineType = pol.RecordType.Name;
                    polu.currencyIsoCode = pol.CurrencyIsoCode;
                    polu.linePrice = pol.SVMXC__Line_Price2__c;
                    pols.add(polu);
                    
                }
                pou.PartsOrderLines = pols;
            }
            
            PartsOrderUnitList.add(pou);
            
            
            
        }
        posResults.PartsOrders = PartsOrderUnitList;
        return posResults;
        
    }
    /*--------------------------------------------------------------------------------------------------------------------------
    Author: Hari Krishna
    Company: Schneider-Electric
    Description: prepare WS_Work_Order.WorkOrderResult 
    Inputs:  
    Returns: WorkDetails Result unit 
    History
    27-07-2016 Hari Krishna Created
    --------------------------------------------------------------------------------------------------------------------------*/
    public static WS_Work_Order.WorkOrderResult getWorkOrderResult(
        Boolean success,
        String  type,
        String  errorMessage,
        ID      workOrderbFOID,
        String  workOrderNumber,
        String  workOrderBOReference,
        String  TECH_WOBackOfficeRecordID,
        ID      workOrderGroupbFOID,
        String  workOrderGoupBOReference,
        String  countryOfBackOffice,
        String  backOfficeSystem,
        WS_Work_Order.WorkDetailsResult   WorkDetailsResult 
    ){ 
        WS_Work_Order.WorkOrderResult wour = new WS_Work_Order.WorkOrderResult();
        wour.success = success;
        wour.type = type;  
        wour.errorMessage = errorMessage;
        wour.workOrderbFOID = workOrderbFOID;
        wour.workOrderNumber = workOrderNumber;
        wour.workOrderBOReference  = workOrderBOReference;
        wour.TECH_WOBackOfficeRecordID = TECH_WOBackOfficeRecordID;
        wour.workOrderGroupbFOID = workOrderGroupbFOID;
        wour.workOrderGoupBOReference = workOrderGoupBOReference;
        wour.backOfficeSystem = backOfficeSystem;
        wour.WorkDetailsResult = WorkDetailsResult;
        
        return wour;
    
    }
    
    public static  Map<String,String> getContactFieldMap(WS_Work_Order.Contact con){
        Map<String,String> confm = new Map<String,String>();
        if(con != null)
        {                   
            if(con.GoldenID != null && con.GoldenID!='')
                confm.put('GID',con.GoldenID);
            if(con.firstName != null && con.firstName!='')
                confm.put('FN',con.firstName);
            if(con.localFirstName != null && con.localFirstName!='')
                confm.put('LFN',con.localFirstName);
            if(con.middleInitial != null && con.middleInitial!='')
                 confm.put('MI',con.middleInitial);
            if(con.localMiddleInitial != null && con.localMiddleInitial!='')
                 confm.put('LMI',con.localMiddleInitial);
            if(con.lastName != null && con.lastName!='')
                confm.put('LN',con.lastName);
            if(con.localLastName != null && con.localLastName!='')
                confm.put('LLN',con.localLastName);
            if(con.emailAddress != null && con.emailAddress!='')
                confm.put('EA',con.emailAddress);
            if(con.mobilePhone != null && con.mobilePhone!='')
               confm.put('MP',con.mobilePhone);
            if(con.workPhone != null && con.workPhone!='')
                confm.put('WP',con.workPhone);              
        }
        return confm;
        
    }
    
    public static Id getMatchedContact(WS_Work_Order.Contact ucon , List<Sobject> conList,Id AccountId){
        
        ID ContactId ;
        WS_Work_Order.Contact c = ucon;
        
        if(c.GoldenID != null && c.GoldenID !='')
        {
            for(Sobject con: conList){
                
                if(con.get('SEContactID__c') != null && con.get('SEContactID__c') !='' && con.get('SEContactID__c') == c.GoldenID && AccountId != null &&  con.get('AccountId') == AccountId ){
                    ContactId = con.id;    
                    break ; 
                }
                else if(con.get('SEContactID__c') != null && con.get('SEContactID__c') !='' && con.get('SEContactID__c') == c.GoldenID && AccountId == null )
                {
                    ContactId = con.id;    
                    break ; 
                }
            }
            
        }
        if(c.emailAddress != null && c.emailAddress !='' && ContactId == null)
        {
            for(Sobject con: conList){
                
                if(con.get('Email') != null && con.get('Email') !='' && con.get('Email') == c.emailAddress && AccountId != null &&  con.get('AccountId') == AccountId ){
                    ContactId = con.id;    
                    break ; 
                }
                else if(con.get('Email') != null && con.get('Email') !='' && con.get('Email') == c.emailAddress && AccountId == null )
                {
                    ContactId = con.id;    
                    break ; 
                }
            }
            
        }
        if(c.mobilePhone != null && c.mobilePhone !='' && ContactId == null)
        {
            for(Sobject con: conList){
                
                if(con.get('MobilePhone') != null && con.get('MobilePhone') !='' && con.get('MobilePhone') == c.mobilePhone && AccountId != null &&  con.get('AccountId') == AccountId ){
                    ContactId = con.id;    
                    break ; 
                }
                else if(con.get('MobilePhone') != null && con.get('MobilePhone') !='' && con.get('MobilePhone') == c.mobilePhone && AccountId == null )
                {
                    ContactId = con.id;    
                    break ; 
                }
            }
            
        }
        if(c.firstName != null && c.firstName !='' && ContactId == null)
        {
            for(Sobject con: conList){
                
                if(con.get('FirstName') != null && con.get('FirstName') !='' && con.get('FirstName') == c.firstName && AccountId != null &&  con.get('AccountId') == AccountId ){
                    ContactId = con.id;    
                    break ; 
                }
                else if(con.get('FirstName') != null && con.get('FirstName') !='' && con.get('FirstName') == c.firstName && AccountId == null )
                {
                    ContactId = con.id;    
                    break ; 
                }
            }
            
        }
        if(c.lastName != null && c.lastName !='' && ContactId == null)
        {
            for(Sobject con: conList){
                
                if(con.get('LastName') != null && con.get('LastName') !='' && con.get('LastName') == c.lastName && AccountId != null &&  con.get('AccountId') == AccountId ){
                    ContactId = con.id;    
                    break ; 
                }
                else if(con.get('LastName') != null && con.get('LastName') !='' && con.get('LastName') == c.lastName && AccountId == null )
                {
                    ContactId = con.id;    
                    break ; 
                }
            }
            
        }
        if(c.localFirstName != null && c.localFirstName !='' && ContactId == null)
        {
            for(Sobject con: conList){
                
                if(con.get('LocalFirstName__c') != null && con.get('LocalFirstName__c') !='' && con.get('LocalFirstName__c') == c.localFirstName && AccountId != null &&  con.get('AccountId') == AccountId ){
                    ContactId = con.id;    
                    break ; 
                }
                else if(con.get('LocalFirstName__c') != null && con.get('LocalFirstName__c') !='' && con.get('LocalFirstName__c') == c.localFirstName && AccountId == null )
                {
                    ContactId = con.id;    
                    break ; 
                }
            }
            
        }
        if(c.localLastName != null && c.localLastName !='' && ContactId == null)
        {
            for(Sobject con: conList){
                
                if(con.get('LocalLastName__c') != null && con.get('LocalLastName__c') !='' && con.get('LocalLastName__c') == c.localLastName && AccountId != null && con.get('AccountId') == AccountId ){
                    ContactId = con.id;    
                    break ; 
                }
                else if(con.get('LocalLastName__c') != null && con.get('LocalLastName__c') !='' && con.get('LocalFirstName__c') == c.localLastName && AccountId == null )
                {
                    ContactId = con.id;    
                    break ; 
                }
            }
            
        }
        if(c.localMiddleInitial != null && c.localMiddleInitial !='' && ContactId == null)
        {
            for(Sobject con: conList){
                
                if(con.get('LocalMidInit__c') != null && con.get('LocalMidInit__c') !='' && con.get('LocalMidInit__c') == c.localMiddleInitial && AccountId != null &&  con.get('AccountId') == AccountId ){
                    ContactId = con.id;    
                    break ; 
                }
                else if(con.get('LocalMidInit__c') != null && con.get('LocalMidInit__c') !='' && con.get('LocalMidInit__c') == c.localMiddleInitial && AccountId == null )
                {
                    ContactId = con.id;    
                    break ; 
                }
            }
        }

        //End:Def-7331
        System.debug('\n Log SC: ContactId '+ContactId);      
        return ContactId;   
    }
    
    public static String getContactQuery(Map<String,Set<String>> fmap, Set<String> AccntIDSet){
        
        String Query='';
        String QueryString =CONTACT_QUERY;
        String WhereClause ='';
		String ORClause= ' OR ';
        //Def-7331
        String AccountFilter ='';
        if(AccntIDSet != null && AccntIDSet.size()>0)
        {                   
            AccountFilter +=  ' AccountId in ('+ SOQLListFormat(AccntIDSet) +') ';                    
        }//End:Def-7331
        
        if(fmap != null && fmap.containskey('GID'))
        {            
				String StringWithQuote = '  SEContactID__c  in  ('+ SOQLListFormat(fmap.get('GID')) +') ';
				StringConcat(WhereClause,StringWithQuote,ORClause);
        }       
        
        if(fmap != null && fmap.containskey('FN'))
        {            
				String StringWithQuote = ' FirstName in  ('+ SOQLListFormat(fmap.get('FN')) +') ';
				StringConcat(WhereClause,StringWithQuote,ORClause);
        }
        if(fmap != null && fmap.containskey('LFN'))
        {           		
				String StringWithQuote = ' LocalFirstName__c in ('+ SOQLListFormat(fmap.get('LFN')) +') ';
				StringConcat(WhereClause,StringWithQuote,ORClause);
        }
        if(fmap != null && fmap.containskey('MI'))
        {               	
			String StringWithQuote =  ' MidInit__c in ('+ SOQLListFormat(fmap.get('MI')) +') ';
			StringConcat(WhereClause,StringWithQuote,ORClause);
        }
        if(fmap != null && fmap.containskey('LMI'))
        {  		
			String StringWithQuote =  ' LocalMidInit__c in ('+ SOQLListFormat(fmap.get('LMI')) +') ';
			StringConcat(WhereClause,StringWithQuote,ORClause);
        }
        if(fmap != null && fmap.containskey('LN'))
        {
				String StringWithQuote =  ' LastName in ('+ SOQLListFormat(fmap.get('LN')) +') ';
				StringConcat(WhereClause,StringWithQuote,ORClause);
        }
        if(fmap != null && fmap.containskey('LLN'))
        {
          	String StringWithQuote =  ' LocalLastName__c in ('+ SOQLListFormat(fmap.get('LLN')) +') ';
			StringConcat(WhereClause,StringWithQuote,ORClause);
        }
        if(fmap != null && fmap.containskey('EA'))
        {
            String StringWithQuote =  ' Email in ('+ SOQLListFormat(fmap.get('EA')) +') ';
			StringConcat(WhereClause,StringWithQuote,ORClause);
        }
        if(fmap != null && fmap.containskey('MP'))
        {            
			String StringWithQuote =  ' MobilePhone in ('+ SOQLListFormat(fmap.get('MP')) +') ';
			StringConcat(WhereClause,StringWithQuote,ORClause);
        }
        if(fmap != null && fmap.containskey('WP'))
        {            
			String StringWithQuote =  ' WorkPhone__c in ('+ SOQLListFormat(fmap.get('WP')) +') ';
			StringConcat(WhereClause,StringWithQuote,ORClause);
        }
        //Def-7331
        if(AccountFilter.length()>0)
        {
            if(WhereClause.length()>0)
            {
                WhereClause  = ' AND ('+ WhereClause + ' )';
                WhereClause = AccountFilter + WhereClause;
            }
            else{
                WhereClause = AccountFilter;
            }
            
        }
        Query =  QueryString +' where '+WhereClause+' Limit 10000 ';
        System.debug('\n scLog :'+Query);
        return Query;
        
    }
    public static  void   StringConcat(String original , String nst, String extst){
		original +=(original.length()>0) ? extst+nst : nst;		
	}
    public static  void  UpdateFieldMap(Map<String,Set<String>> fmap, Map<String,String> ipmap){
        Map<String,String> ipfm = new Map<String,String>();
        if(ipmap != null ){
              for(string stkey: ipmap.keyset()){
                    if(fmap != null && fmap.containskey(stkey)){
                        fmap.get(stkey).add(ipmap.get(stkey));
                    }
                    else{
                        fmap.put(stkey, new Set<String>{stkey});
                    }
              }
        }
    
    }
     /*--------------------------------------------------------------------------------------------------------------------------
    Author: Hari Krishna
    Company: Schneider-Electric
    Description: getInstalledProductFieldsMap help for query fields base on InstalledProduct object
    Inputs:  WS_Work_Order.InstalledProduct
    Returns: Map<String,String> key will be  InstalledProduct field and value will backoffice value
    History
    27-07-2016 Hari Krishna Created
    --------------------------------------------------------------------------------------------------------------------------*/
    public static  Map<String,String>  getIPFieldsMap(WS_Work_Order.InstalledProduct ipu){
        Map<String,String> ipfm = new Map<String,String>();
        if(ipu != null ){
            if(ipu.bFOID != null)             
                ipfm.put('bFOID',ipu.bFOID);
            if(ipu.GoldenID != null && ipu.GoldenID !='')
                ipfm.put('GoldenID',ipu.GoldenID);            
            if(ipu.Name != null && ipu.Name !='')
                ipfm.put('Name',ipu.Name); 
            if(ipu.InstalledAtGoldenID != null && ipu.InstalledAtGoldenID !='')
                ipfm.put('InstalledAtGoldenID',ipu.InstalledAtGoldenID);
            if(ipu.SerialNumber != null && ipu.SerialNumber !='')
                ipfm.put('SerialNumber',ipu.SerialNumber);
            if(ipu.SECommercialRef != null && ipu.SECommercialRef !='')
                ipfm.put('SECommercialRef',ipu.SECommercialRef);
            if(ipu.installedAtCountryCode != null && ipu.installedAtCountryCode !='')
                ipfm.put('installedAtCountryCode',ipu.installedAtCountryCode);            
        }       
        return ipfm;
    
    
    }
     /*--------------------------------------------------------------------------------------------------------------------------
    Author: Hari Krishna
    Company: Schneider-Electric
    Description: getInstalledProductFieldsMap help for query fields base on InstalledProduct object
    Inputs:  WS_Work_Order.InstalledProduct
    Returns: Map<String,String> key will be  InstalledProduct field and value will backoffice value
    History
    27-07-2016 Hari Krishna Created
    --------------------------------------------------------------------------------------------------------------------------*/
    public static  void  UpdateIPFieldsMap(Map<String,Set<String>> fmap, Map<String,String> ipmap){
        Map<String,String> ipfm = new Map<String,String>();
        if(ipmap != null ){
              for(string stkey: ipmap.keyset()){
                    if(fmap != null && fmap.containskey(stkey)){
                        fmap.get(stkey).add(ipmap.get(stkey));
                    }
                    else{
                        fmap.put(stkey, new Set<String>{stkey});
                    }
              }
        }
    
    }
     /*--------------------------------------------------------------------------------------------------------------------------
    Author: Hari Krishna
    Company: Schneider-Electric
    Description: getIPRecodsFromMapping help get Records base on InstalledProduct object
    Inputs:  Map 
    Returns: List of InstalledProduct 
    History
    27-07-2016 Hari Krishna Created
    --------------------------------------------------------------------------------------------------------------------------*/
    public Static List<SVMXC__Installed_Product__c> getIPRecodsFromMapping(Map<String,Set<String>> ipfm){
        
        String QueryString ='';
        String WhereClause ='';
        List<SVMXC__Installed_Product__c> ipList  = new List<SVMXC__Installed_Product__c>();
        if(ipfm != null && ipfm.containskey('bFOID'))
        {
            if(WhereClause.length()>0)
                WhereClause +=  ' OR  id in  ('+ SOQLListFormat(ipfm.get('bFOID')) +') ';
            else
                WhereClause +=  '  id in  ('+ SOQLListFormat(ipfm.get('bFOID')) +') ';
        }
        
        if(ipfm != null && ipfm.containskey('GoldenID'))
        {
            if(WhereClause.length()>0)
                WhereClause +=  ' OR  GoldenAssetId__c in  ('+ SOQLListFormat(ipfm.get('GoldenID')) +') ';
            else
                WhereClause +=  '  GoldenAssetId__c in  ('+ ipfm.get('GoldenID') +') ';            
            
        }
        
        if(ipfm != null && ipfm.containskey('Name'))
        {
            if(WhereClause.length()>0)
                WhereClause +=  ' OR  Name in  ('+ SOQLListFormat(ipfm.get('Name')) +') ';
            else
                WhereClause +=  '  Name in  ('+ SOQLListFormat(ipfm.get('Name')) +') ';
        }
        if(ipfm != null && ipfm.containskey('InstalledAtGoldenID'))
        {
            if(WhereClause.length()>0)
                WhereClause +=  ' OR  SVMXC__Company__r.SEAccountID__c in  ('+ SOQLListFormat(ipfm.get('InstalledAtGoldenID')) +') ';
            else
                WhereClause +=  '  SVMXC__Company__r.SEAccountID__c in  ('+ SOQLListFormat(ipfm.get('InstalledAtGoldenID')) +') ';
        }
        if(ipfm != null && ipfm.containskey('SerialNumber'))
        {
            if(WhereClause.length()>0)
                WhereClause +=  ' OR  CustomerSerialNumber__c in  ('+ SOQLListFormat(ipfm.get('SerialNumber')) +') ';
            else
                WhereClause +=  '  CustomerSerialNumber__c in  ('+ SOQLListFormat(ipfm.get('SerialNumber')) +') ';
        }
        if(ipfm != null && ipfm.containskey('SECommercialRef'))
        {
            if(WhereClause.length()>0)
                WhereClause +=  ' OR  SchneiderCommercialReference__c in  ('+ SOQLListFormat(ipfm.get('SECommercialRef')) +') ';
            else
                WhereClause +=  '  SchneiderCommercialReference__c in  ('+ SOQLListFormat(ipfm.get('SECommercialRef')) +') ';
        }
        if(ipfm != null && ipfm.containskey('installedAtCountryCode'))
        {
            if(WhereClause.length()>0)
                WhereClause +=  ' OR  SVMXC__Company__r.Country__r.CountryCode__c in  ('+ SOQLListFormat(ipfm.get('installedAtCountryCode')) +') ';
            else
                WhereClause +=  '  SVMXC__Company__r.Country__r.CountryCode__c in  ('+ SOQLListFormat(ipfm.get('installedAtCountryCode')) +') ';
        }
        if ( WhereClause != '' && WhereClause != null ){
            QueryString = INSTALLEDPRODUCT_QUERY +' Where '+ WhereClause;
            ipList = Database.query(QueryString);
        } 
        

        System.debug('\n Log WWS : ip query '+ipList);
        return ipList;
    }
    
    
    //description : format the list to inorporate to a dynamic request
    //By adding quotes between each values
    //input list of string
    //outpu string formated list
    public static string SOQLListFormat(set<string> input){   
        String SOQL_ListFormat = '';
        for (string Value : input) {
            String value_in_quotes = '\''+String.escapeSingleQuotes(Value)+'\'';
            if (SOQL_ListFormat!='') { SOQL_ListFormat+=','; }  //  add a comma if this isn't the first one
            SOQL_ListFormat += value_in_quotes;
        }   
        return SOQL_ListFormat;
    }
    public static string SOQLListFormat(set<Id> input){   
        String SOQL_ListFormat = '';
        for (Id Value : input) {
            String value_in_quotes = '\''+String.escapeSingleQuotes(Value)+'\'';
            if (SOQL_ListFormat!='') { SOQL_ListFormat+=','; }  //  add a comma if this isn't the first one
            SOQL_ListFormat += value_in_quotes;
        }   
        return SOQL_ListFormat;
    }
    
    
}