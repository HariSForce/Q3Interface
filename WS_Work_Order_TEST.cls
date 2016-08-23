@isTest//(SeeAllData=true)
Private class WS_Work_Order_TEST{
    /*static{
        Utils_SDF_Methodology.PAD_BypassTrigger = ';InstalledProductBeforeupdate;SVMX10;SVMX_InstalledProduct2;SVMX22;AP_WorkOrderTechnicianNotification;SVMX07;SVMX23;SVMX05;SVMX06;SVMX07;SRV04;SRV05;SRV06;AP54;AP_Contact_PartnerUserUpdate;';
    }*/   
    static testMethod void bulkCreateWorkOrdersTest() {        
         User user = new User(alias = 'user', email='user' + '@accenture.com', 
                             emailencodingkey='UTF-8', lastname='Testing', languagelocalekey='en_US', 
                             localesidkey='en_US', profileid = System.label.CLFEB14SRV02, BypassWF__c = true,BypassVR__c = true, BypassTriggers__c = 'InstalledProductBeforeupdate;SVMX10;SVMX_InstalledProduct2;SVMX22;AP_WorkOrderTechnicianNotification;SVMX07;SVMX23;SVMX05;SVMX06;SVMX07;SRV04;SRV05;SRV06;AP54;AP_Contact_PartnerUserUpdate',
                             timezonesidkey='Europe/London', username='InterfaceTestuser' + '@bridge-fo.com',FederationIdentifier = '12345',Company_Postal_Code__c='12345',Company_Phone_Number__c='9986995000');       
       insert user;
       system.runAs(user)
       {  
            system.debug('>>>>>>>>>>>>>>>>>>>>>> user <<<<<<<<<<<<<<'+Limits.getQueries() +Limits.getLimitQueries());
        
                TestData td = new TestData();
            
                WS_Work_Order.bulkCreateWorkOrders(null);
                td.createData();
                WS_Work_Order.WorkOrder wou1 = getWOUnit(td);
                WS_Work_Order.WorkOrder wou2 = getWOUnit(td);
                wou2.WOBackOfficeReference = 'TestExisting';
                WS_Work_Order.WorkOrder wou3 = getWOUnit(td);
                wou3.productbFOID = '123456';
                List<WS_Work_Order.WorkOrder>  wulist = new List<WS_Work_Order.WorkOrder>();                
                wulist.add(wou1);
                wulist.add(wou2);
                wulist.add(wou3);
                
                List<WS_Work_Order.WorkOrderResult> createtest = WS_Work_Order.bulkCreateWorkOrders(wulist); 
            
        }   
            
                 
           
    }
    public Static WS_Work_Order.WorkOrder getWOUnit(TestData td){
        
                // IP creation
                WS_Work_Order.InstalledProduct ipunit= new WS_Work_Order.InstalledProduct();
                ipunit.GoldenID = 'GoledenAssertId1';
                // IP Contact Creation
                WS_Work_Order.Contact conunit = new WS_Work_Order.Contact();            
                conunit.GoldenID = td.contact.SEContactID__c ;
                conunit.firstName = td.contact.FirstName ;
                conunit.localFirstName = td.contact.LocalFirstName__c;
                conunit.middleInitial = td.contact.MidInit__c ;
                conunit.localMiddleInitial = td.contact.LocalMidInit__c;
                conunit.lastName = td.contact.LastName;
                conunit.localLastName = td.contact.LocalLastName__c;
                conunit.emailAddress = td.contact.Email;
                conunit.mobilePhone = td.contact.mobilePhone ;
                conunit.workPhone = td.contact.WorkPhone__c;                
                WS_Work_Order.ServiceProductsWD spu = new WS_Work_Order.ServiceProductsWD();            
                spu.workDescription ='Test one';
                spu.InstalledProduct = ipunit;
                WS_Work_Order.WorkDetail wds = new WS_Work_Order.WorkDetail();
                List<WS_Work_Order.ServiceProductsWD> spulist  = new List<WS_Work_Order.ServiceProductsWD>();
                spulist.add(spu );
                wds.ServiceProductsWDs = spulist;
                WS_Work_Order.InstalledProduct mainInstalledProduct = new WS_Work_Order.InstalledProduct();
                mainInstalledProduct.GoldenID = td.installedporduct.GoldenAssetId__c;
                WS_Work_Order.WorkOrder wou = new WS_Work_Order.WorkOrder();
                wou.contact = conunit ;
                wou.customerRequestedDate = system.today();
                wou.customerRequestedTime = '6:00';
                wou.serviceBusinessUnit ='IT';
                wou.priority = 'High';
                wou.workOrderReason = 'Testing from Test Class';
                wou.commentToPlanner = 'commentToPlanner';
                wou.countryOfBackOffice = 'countryOfBackOffice';
                wou.backOfficeSystem = 'BBO_AM';
                wou.workOrderStatus = 'New';
                wou.workOrderSubStatus  = 'New';
                wou.workOrderCategory = 'New';
                wou.workOrderType = 'workOrderType';
                wou.workOrderSubType = 'workOrderSubType';
                wou.isBillable = 'Yes';
                wou.billingType = 'Yes';           
                wou.soldToAccountbFOID = td.account.id;        
                wou.productbFOID =  td.product.id;
                wou.billToAccountbFOID = td.account.id;
                wou.quotationNumber = 'quotationNumber ';
                wou.installedAtAccountbFOID = td.account.id;
                wou.projectNumber = 'projectNumber ';           
                wou.salesOrderNumber = 'salesOrderNumber ';
                wou.salesOrderLineNumber = 'salesOrderLineNumber ';
                wou.PONumber = 'PONumber ';
                wou.serviceCenterTerritoryName = 'serviceCenterTerritoryName ';            
                wou.WOBackOfficeReference = 'TEST-WOBOFFREF-1';
                wou.TECH_WOBackOfficeRecordID = 'TEST-WOBOFFREF-1';
                wou.WOGBackOfficeReference = 'TEST-WOGBOFFREF-1';
                wou.customerReferenceNumber = 'customerReferenceNumber ';
                wou.estimatedExpenseCost = 10;
                wou.estimatedMaterialCost = 10;
                wou.estimatedLaborCost = 10;
                //wou.TECH_FOLastUpdateTimestamp =System.now();
                wou.WOcurrencyIsCode = 'INR';
                wou.BackOfficeBillToValid ='BackOfficeBillToValid';
                wou.WorkDetail = wds ;
                wou.mainInstalledProduct = mainInstalledProduct;
                return wou;
    }
    public class TestData{
        Country__c country;
        Account account;
        Contact contact;
        SVMXC__Installed_Product__c installedporduct;
        Product2 product ;
        SVMXC__Service_Order__c wo;
        SVMXC__Service_Order_Line__c Rwd1;
        SVMXC__Service_Order_Line__c Rwd2;
        
        
        public void createData(){
            
            //list<Country__c> countrySobj=[select id,name from Country__c limit 1];  
            Country__c  TCountry= Utils_TestMethods.createCountry(); 
            insert TCountry;       
            country = TCountry;
            Account accountSobj = Utils_TestMethods.createAccount();
            accountSobj.SEAccountID__c ='SEAccountID';
            accountSobj.RecordTypeId  = System.Label.CLOCT13ACC08;
            accountSobj.Country__c= TCountry.id;
            insert accountSobj;
            account =  accountSobj;
            Contact contactSobj = Utils_TestMethods.createContact(accountSobj.id, 'contact LastName');
            contactSobj.Country__c = TCountry.id;
            contactSobj.SEContactID__c ='SEContactID1';
            contactSobj.FirstName = 'CFirstName';
            contactSobj.LastName= 'CLastName';
            contactSobj.LocalFirstName__c= 'CLFirstName';
            contactSobj.MidInit__c ='TMid';
            contactSobj.LocalMidInit__c='TLMid';
            contactSobj.LocalLastName__c='CLLastName';
            contactSobj.Email='test@test.com';
            contactSobj.mobilePhone ='9999999999';
            contactSobj.WorkPhone__c='9999999999';
            insert contactSobj;
            contact = contactSobj;
            Product2 prod = Utils_TestMethods.createCommercialReference('One','Two','Three','Four','Five','Six',true,true,true);
            insert prod;
            product = prod;
            CS_AccountToLocation__c cs1 = new CS_AccountToLocation__c();
            cs1.SourceObjField__c = 'Country__c';
            cs1.TargetObjField__c = 'LocationCountry__c';
            cs1.Name ='Test 1';
            insert cs1;
            
            SVMXC__Installed_Product__c ip = new SVMXC__Installed_Product__c();
            ip.SVMXC__Company__c = accountSobj.id;
            ip.Name = 'Test Installed Product1';
            ip.SVMXC__Status__c= 'new';
            ip.GoldenAssetId__c = 'TEST1';
            ip.BrandToCreate__c ='Test Brand';
            ip.CustomerSerialNumber__c = 'SerialNumber';
            ip.SVMXC__Product__c = prod.id;
            ip.SVMXC__Serial_Lot_Number__c = '1234'; 
            ip.DeviceTypeToCreate__c ='Test DeviceType';            
            //ip.SchneiderCommercialReference__c = 'SECREF';
            insert ip;
            List<SVMXC__Site__c> primaryLocs = [SELECT Id,SVMXC__Account__c, PrimaryLocation__c FROM SVMXC__Site__c WHERE SVMXC__Account__c  =: accountSobj.id AND PrimaryLocation__c=true ];
           if(primaryLocs != null && primaryLocs.size()>0)
            delete primaryLocs;
            installedporduct = ip;
            System.debug('\n clog Test Log:'+installedporduct);
            WorkOrderGroup__c workOrdergroup = new WorkOrderGroup__c();
            workOrdergroup.BackOfficeReference__c ='TestExisting';
            insert workOrdergroup;
            SVMXC__Service_Order__c workOrder =  new SVMXC__Service_Order__c();
            workOrder.Work_Order_Category__c='On-site';  
            //workorder.SVMXC__Contact__c = contactSobj.id;
            workorder.SVMXC__Component__c=ip.id;
            workOrder.SVMXC__Order_Type__c='Maintenance';
            workOrder.SVMXC__Problem_Description__c = 'BLALBLALA';
            workOrder.SVMXC__Order_Status__c = 'UnScheduled';
            workOrder.CustomerRequestedDate__c = Date.today();
            workOrder.Service_Business_Unit__c = 'IT';
            workOrder.SVMXC__Priority__c = 'Normal-Medium';                 
            workOrder.SendAlertNotification__c = true;
            workOrder.BackOfficeReference__c = 'TestExisting';
            workOrder.BackOfficeSystem__c = 'BBO_AM';
            //workOrder.Comments_to_Planner__c='testing'; 
            workOrder.SVMXC__Company__c  =accountSobj.id;            
            insert workOrder;           
            wo = workOrder;            
            Schema.DescribeSObjectResult dSobjres = Schema.SObjectType.SVMXC__Service_Order_Line__c; 
            Map<String,Schema.RecordTypeInfo> WDRecordType = dSobjres.getRecordTypeInfosByName(); 
            
            SVMXC__Service_Order_Line__c wd1 = new SVMXC__Service_Order_Line__c();
            wd1.recordtypeid = WDRecordType.get('Installed Products Serviced').getRecordTypeId(); 
            wd1.WDBackOfficeReference__c = 'BOVIS01';
            wd1.SVMXC__Product__c = prod.id;
            wd1.SVMXC__Service_Order__c= wo.id;           
                insert wd1;
            
                Rwd1 = wd1;
                SVMXC__Service_Order_Line__c wd2 = new SVMXC__Service_Order_Line__c();
                wd2.recordtypeid = WDRecordType.get('Installed Products Serviced').getRecordTypeId(); 
                wd2.WDBackOfficeReference__c = 'BOVIS02';
                wd2.Shipped_Serial_Number__c = 'VIS09032016';
                wd2.SVMXC__Service_Order__c= wo.id;
            
                insert wd2;            
                Rwd2 = wd2;
            
        }
    }
    
    
}