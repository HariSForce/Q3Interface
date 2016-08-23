global class WS_Work_Order{
    
    
    global class WorkOrder{
        
        webservice ID         workOrderbFOID;       
        webservice String     workOrderNumber; 
        webservice ID      installedAtAccountbFOID ;
        webservice Contact    contact;
        webservice Date    customerRequestedDate ; 
        webservice string customerRequestedTime;
        webservice String serviceBusinessUnit;
        webservice String priority;
        webservice String scheduledDateTime;
        webservice ID     workOrderGroupbFOID;
        webservice String workOrderName;
        webservice String workOrderReason;
        webservice String commentToPlanner;
        webservice String countryOfBackOffice;
        webservice String backOfficeSystem;
        webservice String workOrderStatus;
        webservice String workOrderSubStatus;
        webservice String workOrderCategory;
        webservice String workOrderType;
        webservice String workOrderSubType;
        webservice String isBillable;
        webservice String billingType;
        webservice Technician primaryFSR;
        webservice ID     parentWObFOID;
        webservice ID     soldToAccountbFOID;
        webservice String parentWOBackOfficeReference;
        webservice InstalledProduct mainInstalledProduct;
        webservice String  productbFOID;
        webservice String  projectNumber;
        webservice String  serviceContractBOReference;
        webservice String  serviceLineBOReference;
        webservice String  salesOrderNumber;
        webservice String  salesOrderLineNumber;
        webservice String  PONumber;
        webservice String  serviceCenterTerritoryName;
        webservice String  customerReferenceNumber;
        webservice String  TECH_FOLastUpdateTimestamp; 
        webservice WorkDetail   WorkDetail;
        webservice PartsOrders PartsOrders;
        webservice String   quotationNumber;
        webservice Id   serviceContractbFOID;
        webservice Id   serviceLinebFOID;
        webservice String   WOBackOfficeReference;
        webservice String   TECH_WOBackOfficeRecordID;
        webservice String   WOGBackOfficeReference;
        webservice Decimal   estimatedExpenseCost;
        webservice Decimal   estimatedMaterialCost;
        webservice Decimal   estimatedLaborCost;
        webservice String   WOcurrencyIsCode;
        webservice String billToAccountbFOID;
        webservice String slaTermsName;
        webservice Account installedAtAccount;
        webservice String caseNumber; 
        webservice String BackOfficeBillToValid;
        webservice String plantName; //Yassine.B 18/03/2015
        webservice String closedOn;
        webservice Decimal plannedDuration;
        webservice Boolean triggerBilling; // BR-8048           
        webservice String installedAtAccountInfo;//BR-8080
        webservice String mainShippedSerialNumber; //Added by VISHNU C for BR 8310
        //webservice String productbFOId; //Added by VISHNU C for BR 8310
        webservice String SplitfromBackOfficeRef; // BR-9850
        
        
        
        
    }
    
    
    global class WorkDetail{
        
        webservice List<TimeWD> TimeWDs;
        webservice List<ExpenseWD> ExpenseWDs;  
        webservice List<ServiceProductsWD> ServiceProductsWDs;
        webservice List<PartsWD> PartsWDs;
        
    }
    
    global class Account{
        webservice    ID      bFOID;
        webservice    String   GoldenID;
        webservice    String   Name;
        webservice    String   NameLocal;
        webservice    String   Street;
        webservice    String   StreetLocal;
        webservice    String   AddAddressInfo;
        webservice    String   AddAddressInfoLocal;
        webservice    String   ZipCode;
        webservice    String   City;
        webservice    String   LocalCity;
        webservice    String   CountryCode;
        webservice    String   StateProvinceCode;
        webservice    String   recordTypeName;
        
        
    }
    
    global class Contact{
        
        webservice String GoldenID;
        webservice String firstName;
        webservice String localFirstName;
        webservice String middleInitial;
        webservice String localMiddleInitial;
        webservice String lastName;
        webservice String localLastName;
        webservice String emailAddress;
        webservice String mobilePhone;
        webservice String workPhone;
        
        
        
    }
    
    global class Technician{
        
        webservice String SESAID;
        webservice String FirstName;
        webservice String LastName;
        webservice String Email;
        webservice String RoleName;
        webservice String BusinessUnit;
        webservice String level;
        
        
    }
    
    global class InstalledProduct{
        
        webservice String GoldenID;
        webservice String Name;
        webservice String InstalledAtGoldenID;
        webservice String SerialNumber;
        webservice String SECommercialRef;
        webservice String installedAtCountryCode;
        
        webservice String installedAtName;
        webservice String installedAtNameLocal;
        webservice String installedAtStreet;
        webservice String installedAtStreetLocal;
        webservice String installedAtAddAddressInfo;
        webservice String installedAtAddAddressInfoLocal;
        webservice String installedAtZipCode;
        webservice String installedAtCity;
        webservice String installedAtLocalCity;     
        webservice String installedAtStateProvinceCode;
        webservice String installedAtRecordTypeName;
        
        webservice ID bFOID; //Added by VISHNU C for BR 8310
        //webservice String mainShippedSerialNumber; //Added by VISHNU C for BR 8310
        //webservice String productbFOId; //Added by VISHNU C for BR 8310
        //webservice String shippedSerialNumber; //Added by VISHNU C for BR 8310
        //webservice String WDBackOfficeReference; //Added by VISHNU C for BR 8310
        
        
        
    }
    
    global class PartsOrders{
        webservice List<PartsOrder> PartsOrders;
        
    }
    
    global class PartsOrdersResults{
        webservice List<PartsOrderResult> PartsOrderResults;
    }
    
    global class PartsOrder{
        webservice  ID partOrderbFOID;      
        webservice  String  partOrderbFONumber  ;
        webservice  String  partOrderStatus ;
        webservice  String  serviceLevel    ;
        webservice  Contact contact ;
        webservice  String  shippingReceivingNotes  ;
        webservice  Account shipToAccount   ;
        webservice  String  freightTerms    ;
        webservice  String  partsSLATerms   ;
        webservice  String  onsiteSLATerms  ;
        webservice  String  partOrderBOReference;
        webservice  String  TECH_BOPartsOrderRecordId;
        webservice  String  TECH_BOLastUpdateTimestamp;// Data type need to ask
        webservice  String  synchronizationLog;
        webservice  String  attentionToSESAID;
        webservice  String  attentionToEmail;
        webservice  String  partOrderType;
        webservice  ID      partOrderRMAbFOID;      //BR-8317
        webservice  String  partOrderRMAbFONumber;  //BR-8317
        webservice  String shipmentMode;// BR-10062
        
        
        
        webservice List<PartsOrderLines> PartsOrderLines;
        
    }
    
    global class PartsOrderResult{
        webservice  Boolean success;
        webservice  String  type;
        webservice  String  errorMessage;
        webservice  ID      partOrderbFOID;
        webservice  String  partOrderbFONumber;
        webservice  String  partOrderBOReference;
        webservice  String  TECH_BOPartsOrderRecordId;
        webservice List<PartsOrderLinesResult> PartsOrderLinesResults;
        
        
    }
    
    global class PartsOrderLines{
        
        webservice  ID   partOrderbFOID;        
        webservice  ID  partOrderLinebFOID  ;
        webservice  String  partOrderLinebFONumber  ;
        webservice  String  partOrderLineType   ;
        webservice  String  sparePartbFOID   ;
        webservice  String  FOSKUReference  ;
        webservice  String  plantName   ;
        webservice  Integer expectedQuantity    ;
        webservice  String  unitOfMeasure   ;
        webservice  String  requestedDate   ;
        webservice  String  calculatedPlant ;
        webservice  Integer stockQuantity   ;
        webservice  String  sparePartCategory   ;
        
        webservice  Date  LeadDate    ;
        webservice  String  BOMaterialReference ;
        webservice  String  freeTextReference   ;
        webservice  String  genericReference    ;
        webservice  String  createdBySESAID ;
        webservice  String  createdByFirstName  ;
        webservice  String  createdByLastName   ;
        webservice  Integer shippedQuantity;
        webservice  String shippingStatus;
        
        webservice  String expectedShipDate;// DataType need to ask
        webservice  String partOrderLineBOReference;
        webservice  String carrier;
        webservice  String trackingNumber;
        webservice  String TECH_BOLastUpdateTimestamp; // DataType need to ask      
        webservice  String shipmentMode;
        webservice  String TECH_BOPartsOrderLineRecordId;
        webservice  String partOrderLineInternalType;
        webservice  Decimal receivedQuantity;
        webservice  Date receivedDate;
        webservice  String returnReason;
        webservice  String installedProductSerialNumber;
        webservice  String currencyIsoCode;
        webservice  Double linePrice;
        webservice  String vendor;// BR-10077
        
        
        
    }
    
    global class PartsOrderLinesResult{
        webservice  Boolean success;
        webservice  String  type;
        webservice  String  errorMessage;
        webservice  ID partOrderLinebFOID;
        webservice  String partOrderLinebFONumber;
        webservice  String partOrderLineBOReference;
        webservice  String TECH_BOPartsOrderLineRecordId;
    }
    
    
    
    
    global class TimeWD{
        
        webservice ID workOrderbFOID;
        webservice ID  workDetailbFOID;
        webservice String  lineType;
        webservice String  activityType;
        webservice String  hourType;
        webservice  Technician  FSR;
        webservice  String  isBillable;    
        webservice  String  billingType;
        webservice  String  startDateTime;
        webservice  String  endDateTime;
        webservice  Double  totalTime;
        webservice  String  workDescription;
        webservice  ID  workDetailPlannedbFOID;
        webservice  String workDetailbFONumber;
        webservice String levelRequired;
        // Below 4 fields Added BY Anand.BR-9426 for Q2 Release
        webservice string customerHourType;
        webservice  string customerStartEndTime;
        webservice string customerEndDateTime;
        webservice Double customerTotalTime;
        
    }
    
    global class ExpenseWD{
        
        webservice     ID  workOrderbFOID;
        webservice      ID  workDetailbFOID;
        webservice      String  lineType;
        webservice      String  expenseType;
        webservice      String  expenseDate;
        webservice      Technician FSR;
        webservice      String  isBillable;
        webservice      String  billingType;
        webservice      Double  expenseQuantity;
        webservice      Double  linePricePerUnit;
        webservice      String  workDescription;
        webservice      ID  workDetailPlannedbFOID;
        webservice      String  currencyIsoCode;
        webservice  String workDetailbFONumber;
        webservice  Double linePricePerUnitCorporateCurrency;
        webservice String levelRequired;
        
        
    }
    
    global class ServiceProductsWD{
        webservice ID workOrderbFOID;
        webservice ID workDetailbFOID;
        webservice String workDetailbFONumber;
        webservice  Technician  FSR;
        webservice String workDescription;
        webservice InstalledProduct InstalledProduct;
        webservice String levelRequired;        
        //webservice String GoldenID; //Added by VISHNU C for BR 8310
        //webservice ID bFOID; //Added by VISHNU C for BR 8310
        webservice String shippedSerialNumber; //Added by VISHNU C for BR 8310
        webservice String WDBackOfficeReference; //Added by VISHNU C for BR 8310
        webservice String productbFOID; //Added by VISHNU C for BR 8310
        webservice String workDetailRecordType; // Added for BR-9850
        webservice String splitfromWDBORef; // Added for BR-9850
        webservice Boolean mipFlag; // Added for BR-9850
        
    }
    
    global class PartsWD{
                /*
        webservice List<PartsOrder> PartsOrders;
        webservice Contact  Contact;
        webservice String shippingReceivingNotes;
        webservice Account shipToAccount;
        webservice String   freightTerms;
        webservice String   partsSLATerms;
        webservice String   onsiteSLATerms;

        */
        
        webservice ID workOrderbFOID;
        webservice ID workDetailbFOID;
        webservice String workDetailbFONumber;
        webservice String partOrderLinebFOID;
        webservice String TECH_BOPartsOrderLineRecordId;
        webservice String FOSKUReference;
        webservice String BOMaterialReference;
        webservice ID  sparePartbFOID;
        webservice Technician FSR;
        webservice String   isBillable;
        webservice  Decimal expectedQuantity;
        webservice  Decimal shippedQuantity;
        webservice  Decimal installedQuantity;
        webservice  Decimal returnedQuantity;
        webservice  Decimal failedQuantity;
        webservice String workDescription;
        webservice String levelRequired;
        webservice String partOrderLineType;
        webservice String genericReference;
        webservice String freeTextReference;
        webservice Decimal leftOnsiteQuantity;
        webservice String notReturnReason;
        
    }
    
    global class WorkOrderResult{
        webservice  Boolean success;
        webservice  String  type;
        webservice  String  errorMessage;
        webservice  ID      workOrderbFOID;
        webservice  String  workOrderNumber;
        webservice  String  workOrderBOReference;
        webservice  String  TECH_WOBackOfficeRecordID;
        webservice  ID      workOrderGroupbFOID;
        webservice  String  workOrderGoupBOReference;
        webservice  String  countryOfBackOffice;
        webservice  String  backOfficeSystem;
        webservice  WorkDetailsResult   WorkDetailsResult;
        
        
    }
    
    global class WorkDetailsResult{
        webservice  List<TimeWDResult> TimeWDResults;
        webservice  List<ExpenseWDResult> ExpenseWDResults;
        webservice  List<PartsWDResult> PartsWDResult;
        webservice  List<ServicedProductsWDResult> ServicedProductsWDResult;
        
    }
    global class ServicedProductsWDResult{
        
        webservice  Boolean success;
        webservice  String  type;
        webservice  String  errorMessage;
        webservice  ID      installedProductbFOID;
        webservice  String  installedProductGoldenID;
        webservice  String  SerialNumber;
        webservice  ID      workOrderbFOID;        
        webservice String workDetailNumber; //Added by VISHNU C for BR 8310
        webservice ID workDetailbFOID; //Added by VISHNU C for BR 8310
        webservice String WDBackOfficeReference; //Added by VISHNU C for BR 8310
        
    }
    global class PartsWDResult{
        
    }
    global class ExpenseWDResult{
        
    }
    global class TimeWDResult{
        
    }
    global class WorkOrderSyncDetails{
        webservice  ID  workOrderbFOId;
        webservice  String  workOrderBOReference;
        webservice  String  TECH_WOBackOfficeRecordID;
        webservice  ID  workOrderGroupbFOID;
        webservice  String  workOrderGroupBOReference;
        webservice  String  BackOfficeSystem;
        webservice  String  Event;
        webservice  Boolean success;
        webservice String BOerrorMessage;
        webservice String BackOfficeBillToValid;
        webservice String totalEstimatedCosts;//BR-8047
        webservice String currencyIsoCode;//BR-8047
        webservice Boolean IsLocked; //BR-8046
        
    }
    global class WorkOrderSyncDetailsResult{
        webservice  ID workOrderbFOId;
        webservice  Boolean success;
        webservice String errorMessage;
        webservice String workOrderBOReference;
        webservice List<ServiceProductsWD> ServiceProductsWDs;
        
    }
    global class WorkOrdersTechCloseResult{ 
        
        webservice List<WorkOrder> workorders; 
        webservice  Boolean success; 
        webservice  String  errorMessage; 
    }
    
    public class ServiceProducts{
        
        public Id Serial_Number;
        public Id Group_Member;
        public id UserId;
        public id ContactId;
        public id Fsrid;
        public id ipid;
        public String SESAID;
        public String FirstName;
        public String LastName;
        public String Email;
        public String RoleName;
        public String GoldenID;
        public String IPName;
        public String InstalledAtGoldenID;
        public String IPSerialNumber;
        public String IPSECommercialRef;
        public String IpinstalledAtCountryCode; 
        
    }
    
    
    public static WorkOrder woresult = new WorkOrder();
    public static Map<String,RecordType> woDetailsMap = new Map<String,RecordType>();
    webservice static  WorkOrder getWorkOrderDetails(Id WorkOrderId, String Event){ 
        
        
        if(WorkOrderId != null )
        {
            Set<id> woidset = new Set<id>();
            woidset.add(WorkOrderId);
            for(RecordType rt: [SELECT DeveloperName,Id,Name,SobjectType FROM RecordType where SobjectType ='SVMXC__Service_Order_Line__c']){
                woDetailsMap.put(rt.DeveloperName , rt);
            }
            
            if(Event=='WO.CREATION' || Event=='WO.SYNC')
            {
                
                if(woDetailsMap.containskey('Products_Serviced')){
                    RecordType rt =woDetailsMap.get('Products_Serviced');
                    if(woidset != null && woidset.size()>0) {
                        SVMXC__Service_Order__c wo = WS_Work_Order_Handler.getWorkOrderObjects(woidset)[0];
                        woresult = WS_Work_Order_Handler.populateWorkOrderFields(wo);
                        WorkDetail wd=new WorkDetail();                        
                        wd.ServiceProductsWDs = getServiceProducts(WorkOrderId,rt.id);
                        woresult.WorkDetail = wd;
                    }
                }
                
            }
            else if(Event=='WO.RELEASE' ){
                
                if(woidset != null && woidset.size()>0) {
                    SVMXC__Service_Order__c wo = WS_Work_Order_Handler.getWorkOrderObjects(woidset)[0];
                    wo.RequestForRelease__c = system.now(); //Added for Customer Confirmed status by VISHNU C 
                    wo.Tech_RequestForRelease__c = system.now(); //Added for Customer Confirmed status by VISHNU C 
                    update wo; //Added for Customer Confirmed status by VISHNU C 
                    woresult = WS_Work_Order_Handler.populateWorkOrderFields(wo);
                    WorkDetail wd= getWorkDetails(WorkOrderId ,'WO.RELEASE');
                    woresult.WorkDetail = wd; 
                    PartsOrders porder = new PartsOrders();
                    porder = WS_Work_Order_Handler.preparePartsOrder(wo);
                    String LineType ='';
                    Id partsorderrtId ;
                    Schema.DescribeSObjectResult dSobjres = Schema.SObjectType.SVMXC__RMA_Shipment_Order__c; 
                    Map<String,Schema.RecordTypeInfo> PartOrderRecordTypeInfo = dSobjres.getRecordTypeInfosByName(); 
                    if(wo.SVMXC__Order_Status__c =='Unscheduled' || wo.SVMXC__Order_Status__c =='Scheduled' || wo.SVMXC__Order_Status__c =='Customer Confirmed' || wo.SVMXC__Order_Status__c =='Acknowledge FSE' ||  wo.SVMXC__Order_Status__c =='WIP' )
                    {       
                        partsorderrtId = PartOrderRecordTypeInfo.get('Shipment').getRecordTypeId();
                        LineType = 'Shipment';
                    }
                    else if(wo.SVMXC__Order_Status__c =='Service Complete'){
                        partsorderrtId = PartOrderRecordTypeInfo.get('RMA').getRecordTypeId();
                        LineType = 'RMA';
                    }
                    List<SVMXC__RMA_Shipment_Order__c> partsOrderList = [select Id,RequestForRelease__c,Tech_RequestForRelease__c from SVMXC__RMA_Shipment_Order__c where SVMXC__Service_Order__c = : wo.id AND SVMXC__Order_Status__c='Open' and RecordTypeId =:partsorderrtId];
                    for(SVMXC__RMA_Shipment_Order__c obj: partsOrderList)
                    {                            
                        obj.RequestForRelease__c = system.now();
                        obj.Tech_RequestForRelease__c = system.now();
                    }
                    update partsOrderList;
                    System.debug('\n WWO Log: '+porder);
                    woresult.PartsOrders =porder;
                    System.debug('\n WWO Log: '+woresult.PartsOrders);
                }   
                
                
                
            }
            
            
        }
        System.debug('\n WWO Log: '+woresult.PartsOrders);
        System.debug('\n WWO Log: '+woresult);
        return woresult;
        
    }
    public Static Set<String> AccntIDSet = new Set<String>();//Def-7331
    public static Set<String> GoldenIDset = new Set<String>();
    public static Set<String> firstNameset = new Set<String>();
    public static Set<String> localFirstNameset = new Set<String>();
    public static Set<String> middleInitialset = new Set<String>();
    public static Set<String> localMiddleInitialset = new Set<String>();
    public static Set<String> lastNameset = new Set<String>();
    public static Set<String> localLastNameset = new Set<String>();
    public static Set<String> emailAddressset = new Set<String>();
    public static Set<String> mobilePhoneset = new Set<String>();
    public static Set<String> workPhoneset = new Set<String>();
    
    public static Set<String> IPGoldenIDset = new Set<String>();
    public static Set<String> IPbFOIdset = new Set<String>(); //Added by VISHNU C for BR 8310 March 2016 Release
    public static Set<String> IPShipSerialNum = new Set<String>(); //Added by VISHNU C for BR 8310 March 2016 Release
    public static Set<String> IPProdbFOId = new Set<String>(); //Added by VISHNU C for BR 8310 March 2016 Release
    public static Set<String> WDBackOfficeReference = new Set<String>(); //Added by VISHNU C for BR 8310 March 2016 Release
    public static Set<String> IPWDBackOfficeReference = new Set<String>();//Added by VISHNU C for BR 8310 March 2016 Release
    public static Set<String> Nameset = new Set<String>();
    public static Set<String> InstalledAtGoldenIDset = new Set<String>();
    public static Set<String> SerialNumberset = new Set<String>();
    public static Set<String> SECommercialRefset = new Set<String>();
    public static Set<String> installedAtCountryCodeset = new Set<String>();
    public static Map<Id ,SVMXC__Installed_Product__c> bFOIdMap = new Map<Id,SVMXC__Installed_Product__c>(); //Added by VISHNU C for BR 8310 March 2016 Release
    public static Map<String ,SVMXC__Installed_Product__c> goldenIdMap = new Map<String,SVMXC__Installed_Product__c>(); //Added by VISHNU C for BR 8310 March 2016 Release
    public static Map<String ,Id> ProdSNMap = new Map<String,Id>(); //Added by VISHNU C for BR 8310 March 2016 Release
    //public static string ProdSN;//Added by VISHNU C for BR 8310 March 2016 Release
    
    // Added by Dwarak This Method is created to process WO Bulk Update from BO for BR 8310
    webservice static List<WorkOrderResult> bulkUpdateWorkOrders(List<WorkOrder> WorkOrderList){
        system.debug('workorderlist'+WorkOrderList);
        List<WorkOrderResult> worUpdateList = new List<WorkOrderResult>();
        Map<String,SVMXC__Service_Order__c> existingMap = new Map<String,SVMXC__Service_Order__c>();
        String SOPrefix = SObjectType.Product2.getKeyPrefix();
        Set<Id> accidSet = new Set<id>();
        //List<TechObject> tlist = new List<TechObject>();
        List<Sobject> conList = new List<Sobject>();
        List<Sobject> conList2 = new List<Sobject>();
        Set<String> ipgolden = new Set<String>();
        //Map<String ,Id> goldenIdMap = new Map<String,Id>();
        Set<String> wogrefset = new Set<String>();
        map<String, WorkOrderGroup__c> workorderGroupMap = new Map<String, WorkOrderGroup__c>();
        map<Id,string> AutoIpLink = new map<Id,string>();
        List<SVMXC__Service_Order__c> existingwolist = new List<SVMXC__Service_Order__c>();
        List<WorkOrder> WorkOrderListToProcess = new List<WorkOrder>();
        List<WorkOrder> WorkOrderMandatoryPass = new List<WorkOrder>();
        
        if(WorkOrderList != null){
            for(WorkOrder wu: WorkOrderList){ 
                //MandatoryFields mf = new MandatoryFields();
                //mf = CreateMandataryCheck(wu);
                
                WorkOrderMandatoryPass.add(wu);
            }
            Set<String> WObfoId = new Set<String>();
            
            for(WorkOrder wou: WorkOrderMandatoryPass){
                //if(wou.workOrderbFOID != null && wou.workOrderbFOID !=''){
                WObfoId.add(wou.workOrderbFOID);
                // }
                
            }
            
            String swhereClause = '';
            if(WObfoId != null && WObfoId.size()>0)
            {
                swhereClause +=' Id in : WObfoId';
            }
            
            if(swhereClause.length()>0)
            {
                existingwolist = Database.query('Select id,SVMXC__Component__c,SVMXC__Product__c from SVMXC__Service_Order__c where  '+swhereClause);
                system.debug('Existing List'+existingwolist );
                if(existingwolist != null && existingwolist.size()>0)
                {
                    for(SVMXC__Service_Order__c ewo: existingwolist){
                        existingMap.put(ewo.SVMXC__Product__c, ewo);
                    }
                }  
            }
            Set<id> woidset = new set<id>(); 
            for(WorkOrder wou: WorkOrderMandatoryPass){
                //if(existingMap.containskey(wou.productbFOID)){
                WorkOrderListToProcess.add(wou);
                woidset.add(wou.workOrderbFOID);
                                //}
                                /*else{
                // error 
                WorkOrderResult wor = new WorkOrderResult();
                wor.success = false;
                wor.type = 'UPDATE';
                wor.workOrderBOReference =  wou.WOBackOfficeReference;
                wor.workOrderGoupBOReference =  wou.WOGBackOfficeReference;
                wor.TECH_WOBackOfficeRecordID = wou.TECH_WOBackOfficeRecordID;
                wor.errorMessage = ' Work order '+existingMap.get(wou.productbFOID) +' is not exist with Work Order in BFS ';
                worUpdateList.add(wor);

                }*/
            }
        }
        else{
            WorkOrderResult wor = new WorkOrderResult();
            wor.success = false;
            wor.type = 'UPDATE';
            
            wor.errorMessage = ' Please send request ';
            worUpdateList.add(wor);
            return worUpdateList;   
        }
        Set<Id> SerailNumberMathchId = new Set<Id>();
        if(WorkOrderListToProcess != null && WorkOrderListToProcess.size()>0)
        {  
            Map<id,SVMXC__Service_Order__c> woMap = new Map<id,SVMXC__Service_Order__c>();
            system.debug('workorder list to process'+WorkOrderListToProcess);
            WorkOrderList = new List<WorkOrder>();
            WorkOrderList = WorkOrderListToProcess;
            
            set<Id> WorkOrderids = new set<Id>();
            Set<id> ipset = new Set<id>();
            Set<id> aidset = new Set<id>();
            for(WorkOrder wou: WorkOrderList)
            {
                WorkOrderids.add(wou.workOrderbFOID);
            }
            List<SVMXC__Service_Order__c> worderList = new List<SVMXC__Service_Order__c>();
            Set<id> woidset1 = new Set<id>();
            for(WorkOrder wou: WorkOrderList)
            {
                if(wou.workOrderbFOID != null)
                    woidset1.add(wou.workOrderbFOID);
                if(wou.mainShippedSerialNumber!=null && wou.mainShippedSerialNumber!='' && wou.productbFOId!=null && wou.productbFOId!=''){
                    IPShipSerialNum.add(wou.mainshippedSerialNumber );
                    IPProdbFOId.add(wou.productbFOID );
                }
                
                getInstalledProductFields(wou.mainInstalledProduct);
            }
            if(woidset1 != null && woidset1.size()>0){
                List<SVMXC__Service_Order__c>  woList =  [SELECT Id,SVMXC__Product__c,Shipped_Serial_Number__c FROM SVMXC__Service_Order__c WHERE Id  in:woidset1 ];
                woMap.putAll(woList);
            }
            List<SVMXC__Installed_Product__c> iplist  = new List<SVMXC__Installed_Product__c>();
            iplist = getIPQuery();
            if(!iplist.isempty())//Added IF loop by VISHNU C for BR 8310
                CreateMapIP(iplist);
            for(WorkOrder wou: WorkOrderList)
            {
                SVMXC__Service_Order__c  wo = woMap.get(wou.workOrderbFOID );
                if(wou.mainShippedSerialNumber != null)
                {
                    
                    
                    if(wou.mainShippedSerialNumber != wo.Shipped_Serial_Number__c )
                        wo.Shipped_Serial_Number__c = wou.mainShippedSerialNumber;
                }
                
                if(wou.productbFOId != null)
                {
                    if(wou.productbFOId != wo.SVMXC__Product__c )
                        wo.SVMXC__Product__c = wou.productbFOId;
                }
                //system.debug('mainShippedSerialNumber'+wo.Shipped_Serial_Number__c);
                
                //Added NOW
                if( wou.mainShippedSerialNumber != null && wou.mainShippedSerialNumber !=''  && wou.productbFOID != null && wou.productbFOID !='' && ProdSNMap.containskey(wou.mainShippedSerialNumber + wou.productbFOID) && !ProdSNMap.isempty()){
                    system.debug('Entered to update MIP with Product Id and SN');
                    //MIPWO =  wou.mainInstalledProduct.mainShippedSerialNumber + wou.mainInstalledProduct.productbFOID;
                    wo.SVMXC__Component__c =ProdSNMap.get(wou.mainShippedSerialNumber + wou.productbFOID);
                    wo.Shipped_Serial_Number__c = wou.mainShippedSerialNumber;
                    system.debug('Updated IP with SN and Prod bFO Id');
                }
                //End NOW
                system.debug('The IP list from getIPQuery function'+iplist);
                
                system.debug('mainShippedSerialNumber'+wou.mainShippedSerialNumber);
                
                worderList.add(wo);
                
            }
            
            
            List<SVMXC__Service_Order__c> wolist  = new List<SVMXC__Service_Order__c>();
            
            Map<id,SVMXC__Service_Order__c> womap1 = new Map<id,SVMXC__Service_Order__c>();
            
            if(worderList != null && worderList.size()>0)
            {
                Database.SaveResult[] Header_results = CreateOrUpdateServices((List<Sobject>)worderList,'UPDATE');
                Set<id> woidset = new set<id>();
                Set<String> errorHeader = new Set<String>();
                Map<String,SVMXC__Service_Order__c> succWOMap = new Map<String,SVMXC__Service_Order__c>();
                Map<String,SVMXC__Service_Order__c> succWOMapbFOId = new Map<String,SVMXC__Service_Order__c>();
                
                
                for(Integer k=0;k<Header_results.size();k++ )
                {
                    Database.SaveResult sr = Header_results[k];
                    if(sr.isSuccess())
                    {
                        woidset.add(sr.getId());
                    }
                    else{
                        // errorHeader.add(worderList[k].Id + worderList[k].SVMXC__Product__c );
                        errorHeader.add(worderList[k].BackOfficeSystem__c+worderList[k].BackOfficeReference__c );
                    }
                    
                }
                
                
                if(woidset!= null && woidset.size()>0)
                {               
                    wolist =  WS_Work_Order_Handler.getWorkOrderObjects(woidset);                
                    womap1.putAll(wolist);
                }
                for(Integer k=0;k<Header_results.size();k++ )
                {
                    Database.SaveResult sr =Header_results[k];
                    WorkOrderResult wor = new WorkOrderResult();
                    List<ServicedProductsWDResult> ServicedProductsWDResult = new List<ServicedProductsWDResult>();
                    WorkDetailsResult wdr = new WorkDetailsResult();                
                    wdr.ServicedProductsWDResult = ServicedProductsWDResult;
                    wor.WorkDetailsResult =wdr;
                    List<ServicedProductsWDResult> spResult = new List<ServicedProductsWDResult>();
                    
                    if(!sr.isSuccess())
                    {
                        String ErroMessage ='';
                        for(Database.Error err : sr.getErrors()) {
                            ErroMessage= ' '+err.getFields()+' : '+err.getMessage();                              
                        }
                        wor.success = false;
                        wor.type = 'UPDATE';
                        wor.errorMessage = ErroMessage;
                        wor.TECH_WOBackOfficeRecordID = worderList[k].TECH_WOBackOfficeRecordID__c;
                        wor.workOrderGoupBOReference =  worderList[k].WorkOrderGroup__r.BackOfficeReference__c;                  
                        wor.countryOfBackOffice =  worderList[k].CountryOfBackOffice__c;
                        wor.backOfficeSystem =  worderList[k].BackOfficeSystem__c;
                    }
                    else{
                        
                        Id worid = sr.getId();
                        SVMXC__Service_Order__c srObj = womap1.get(worid);
                        wor.success = true;
                        wor.type = 'UPDATE';
                        // wor.mainShippedSerialNumber =srObj.Shipped_Serial_Number__c;
                        wor.workOrderbFOID = srObj.id;
                        wor.workOrderNumber = srObj.name;
                        wor.workOrderBOReference = srObj.BackOfficeReference__c;
                        wor.workOrderGroupbFOID = srObj.WorkOrderGroup__c;
                        wor.TECH_WOBackOfficeRecordID = srObj.TECH_WOBackOfficeRecordID__c;
                        wor.workOrderGoupBOReference = srObj.WorkOrderGroup__r.BackOfficeReference__c;                  
                        wor.countryOfBackOffice = srObj.CountryOfBackOffice__c;
                        //wor.backOfficeSystem = srObj.BackOfficeSystem__c;
                        succWOMap.put(srObj.BackOfficeReference__c,srObj);
                        succWOMapbFOId.put(srObj.id,srObj);
                        
                    }   
                    worUpdateList.add(wor);
                }
                
                // processing workDetails
                set<Id> WDid = new set<Id>();
                set<string> BackofficeWDIds = new set<string>();
                //ServicedProductsWDResult result = new ServicedProductsWDResult(); //Added this FOR BR 8310 March 2016 release
                map<id,SVMXC__Service_Order_Line__c> WDBFOIdMap= new map<id,SVMXC__Service_Order_Line__c>();
                map<id,SVMXC__Service_Order_Line__c> WDAutoIP= new map<id,SVMXC__Service_Order_Line__c>(); //Added by VISHNU C for March 2016 Release for Performance Improvement
                map<string,SVMXC__Service_Order_Line__c> BackOfficeReferencMap = new map<string,SVMXC__Service_Order_Line__c>();
                List<SVMXC__Service_Order_Line__c> soLineList= new List<SVMXC__Service_Order_Line__c>();
                
                for(WorkOrder wou1: WorkOrderList){
                    for(ServiceProductsWD spu: wou1.WorkDetail.ServiceProductsWDs){
                        if(spu.workDetailbFOID != null)
                            WDid.add(spu.workDetailbFOID);
                        if(spu.WDBackOfficeReference != null)
                            BackofficeWDIds.add(spu.WDBackOfficeReference);
                        if(spu.shippedSerialNumber!=null && spu.shippedSerialNumber!='' && spu.productbFOId!=null && spu.productbFOId!=''){
                            IPShipSerialNum.add(spu.shippedSerialNumber );
                            IPProdbFOId.add(spu.productbFOID );
                        }
                    }
                }
                List<SVMXC__Installed_Product__c> iplist2  = new List<SVMXC__Installed_Product__c>();
                iplist2 = getIPQuery(); //Added by VISHNU C for BR 8310
                system.debug('The ip list 2' +iplist2 );
                if(!iplist2.isempty()){//Added IF loop by VISHNU C for BR 8310
                    CreateMapIP(iplist2);
                }
                system.debug('Wok Detail Id set'+WDid+ 'Work Detail Back Office' +BackofficeWDIds);
                list<SVMXC__Service_Order_Line__c> WDlist= GetWorkDetailsQuery(WDid,BackofficeWDIds);
                system.debug('Wok Detail List'+WDlist);
                //Id WoOrdID; //Added by VISHNU C BR 8310 March 2016 Release
                for(SVMXC__Service_Order_Line__c WorDetails : WDlist ){
                    WDBFOIdMap.put(WorDetails.Id,WorDetails);
                    BackOfficeReferencMap.put(WorDetails.WDBackOfficeReference__c,WorDetails);
                }
                system.debug('WorkOrderList'+WorkOrderList.size());
                for(WorkOrder wou2: WorkOrderList){
                    //WoOrdID = wou.workOrderbFOID; //Added 
                    // System.debug('WorkOrder Id'+WoOrdID);
                    System.debug('WOU2'+wou2);
                    System.debug('Work Order with matching Back office ref'+succWOMap+ 'Work Order with Matching bFO Id' +succWOMapbFOId);
                    if( succWOMap.containskey(wou2.WOBackOfficeReference) || succWOMapbFOId.containskey(wou2.workOrderbFOID) ){
                        System.debug('WorkDeatil'+succWOMap);
                        if(wou2.WorkDetail != null )
                        {
                            System.debug('WorkDeatil'+wou2.workdetail);
                            if(wou2.WorkDetail.ServiceProductsWDs != null && wou2.WorkDetail.ServiceProductsWDs.size()>0)
                            {
                                
                                
                                for(ServiceProductsWD spu: wou2.WorkDetail.ServiceProductsWDs){  
                                    Id WorkOrderId;
                                    System.debug('Work Back Office'+wou2.WOBackOfficeReference+ 'Work Detail bFO iD is' +wou2.workOrderbFOID);
                                    if (wou2.WOBackOfficeReference != null){
                                        WorkOrderId = succWOMap.get(wou2.WOBackOfficeReference).id; 
                                    }
                                    if (wou2.workOrderbFOID != null ){
                                        WorkOrderId = succWOMapbFOId.get(wou2.workOrderbFOID).id; 
                                    }
                                    //System.debug('Work Order Id is' +succWOMap.get(wou2.backOfficeSystem+wou2.WOBackOfficeReference).id);
                                    //Id WorkOrderId = succWOMap.get(wou2.backOfficeSystem+wou2.WOBackOfficeReference).id;
                                    
                                    SVMXC__Service_Order_Line__c WDRec = new SVMXC__Service_Order_Line__c ();
                                    if(WDBFOIdMap.containskey(spu.workDetailbFOID) || BackOfficeReferencMap.containskey(spu.WDBackOfficeReference) ){
                                        
                                        if(spu.workDetailbFOID != null && WDBFOIdMap.containskey(spu.workDetailbFOID)){
                                            //SVMXC__Service_Order_Line__c WDRec = WDBFOIdMap.get(spu.Id);
                                            system.debug('Inside WDBFOIdMap checking');
                                            WDRec = WDBFOIdMap.get(spu.workDetailbFOID);
                                        }
                                        else if(spu.WDBackOfficeReference != null && BackOfficeReferencMap.containskey(spu.WDBackOfficeReference)){
                                            //SVMXC__Service_Order_Line__c WDRec = WDBFOIdMap.get(spu.Id);
                                            system.debug('Inside BackOfficeReferencMap checking');
                                            WDRec = BackOfficeReferencMap.get(spu.WDBackOfficeReference);
                                        }
                                        system.debug('++Work Detail Record' +WDRec);
                                        system.debug('WDBFOID' +WDBFOIdMap);
                                                                                /*
                                        if(spu.shippedSerialNumber!=null && spu.shippedSerialNumber!='' && spu.productbFOId!=null && spu.productbFOId!=''){
                                        IPShipSerialNum.add(spu.shippedSerialNumber );
                                        IPProdbFOId.add(spu.productbFOID );
                                        }
                                        List<SVMXC__Installed_Product__c> iplist2  = new List<SVMXC__Installed_Product__c>();
                                        iplist2 = getIPQuery(); //Added by VISHNU C for BR 8310
                                        system.debug('The ip list 2' +iplist2 );
                                        //Added NOW


                                        //End NOW
                                        if(!iplist2.isempty()){//Added IF loop by VISHNU C for BR 8310
                                        CreateMapIP(iplist2);

                                        }*/
                                        
                                        //VISHNU Changes Ends
                                        
                                        
                                        //Added below code by VISHNU C for BR 8310 March 2016 Release
                                        system.debug('Work Detail Going to check Prod SN' +ProdSNMap+ 'for serial number' +spu.shippedSerialNumber+ 'Prod Id' +spu.productbFOID);
                                        //system.debug('Work Detail The MIP bFOId is' +spu.InstalledProduct.bFOID+ 'The MIP is Golden Id' +spu.InstalledProduct.GoldenID+ 'The MIP is Product bFO Id is' +spu.productbFOID+ 'The MIP Serial Number is ' +spu.shippedSerialNumber );
                                        
                                        system.debug('The ProdSN Map is' +ProdSNMap);
                                        if( spu.shippedSerialNumber != null && spu.shippedSerialNumber !=''  && spu.productbFOID != null && spu.productbFOID !='' && ProdSNMap.containskey(spu.shippedSerialNumber + spu.productbFOID) && !ProdSNMap.isempty()){
                                            system.debug('solrk Detail Entered to update MIP with Product Id and SN');
                                            //MIPsol =  spu.InstalledProduct.shippedSerialNumber + spu.InstalledProduct.productbFOID;
                                            WDRec.SVMXC__Serial_Number__c =ProdSNMap.get(spu.shippedSerialNumber + spu.productbFOID);
                                            // sol.Shipped_Serial_Number__c = spu.InstalledProduct.shippedSerialNumber;
                                            WDRec.Shipped_Serial_Number__c = spu.shippedSerialNumber;
                                            WDRec.SVMXC__Product__c = spu.productbFOID;
                                            system.debug('solrk Detail Updated IP with SN and Prod bFO Id');
                                        }
                                        else{
                                            system.debug('Befpre Shipped SN Update'+spu.shippedSerialNumber);
                                            if(spu.shippedSerialNumber != null)
                                                WDRec.Shipped_Serial_Number__c = spu.shippedSerialNumber;
                                            system.debug('Befpre Shipped SN Update');
                                            if(spu.productbFOID != null)
                                            {
                                                WDRec.SVMXC__Product__c = spu.productbFOID;
                                                system.debug('Setting Product bFO Id');
                                            }
                                            Id ProdId = WDRec.SVMXC__Product__c;
                                            String ShipSN = WDRec.Shipped_Serial_Number__c;
                                            system.debug('WD Rec Product is'+WDRec.SVMXC__Product__c+ 'WD Rec Serial Number is' +WDRec.Shipped_Serial_Number__c );
                                            if ( ProdId != null && ShipSN != '' )
                                            {
                                                //Added by VISHNU C for March 2016 Release Performance Improvement
                                                AutoIpLink.put(WDRec.Id,WDRec.Shipped_Serial_Number__c +'#' +WDRec.SVMXC__Product__c);
                                                WDAutoIP.put(WDRec.Id,WDRec);
                                                //Changes Ends VISHNU C for Performance Improvement
                                                system.debug('WD Rec Product is'+WDRec.SVMXC__Product__c+ 'WD Rec Serial Number is' +WDRec.Shipped_Serial_Number__c );
                                                                                                /*
                                                IPShipSerialNum.add(WDRec.Shipped_Serial_Number__c);
                                                IPProdbFOId.add(WDRec.SVMXC__Product__c);
                                                List<SVMXC__Installed_Product__c> iplist3  = new List<SVMXC__Installed_Product__c>();
                                                iplist3 = getIPQuery(); //Added by VISHNU C for BR 8310
                                                system.debug('The ip list 3' +iplist3 );
                                                if(!iplist3.isempty()){//Added IF loop by VISHNU C for BR 8310
                                                CreateMapIP(iplist3);
                                                if(!ProdSNMap.isempty())
                                                {
                                                system.debug('Inside the Auto Linking IP Process' +ProdSNMap.get(WDRec.Shipped_Serial_Number__c + WDRec.SVMXC__Product__c));
                                                WDRec.SVMXC__Serial_Number__c =ProdSNMap.get(WDRec.Shipped_Serial_Number__c + WDRec.SVMXC__Product__c); //Linking IP to the WD

                                                }

                                                }*/
                                                
                                            }
                                            
                                            system.debug('solrk Detail NO IP Updated, update Prod and MSN');
                                        }
                                        
                                        //Changes by VISHNU C Ends
                                        soLineList.add(WDRec);
                                    }                                    
                                    else{
                                        system.debug('Entered inside WD Failed');
                                        ServicedProductsWDResult result1 = new ServicedProductsWDResult();
                                        result1.workDetailbFOID = spu.workDetailbFOID; //Added by VISHNU C for BR 8310
                                        result1.WDBackOfficeReference = spu.WDBackOfficeReference; //Added by VISHNU C for BR 8310
                                        result1.errorMessage = 'Work Detail bFO Id not Found';
                                        result1.success = false;
                                        result1.workOrderbFOID = WorkOrderId;
                                        for(WorkOrderResult wor: worUpdateList){
                                            if(wor.workOrderbFOID == WorkOrderId){
                                                wor.WorkDetailsResult.ServicedProductsWDResult.add(result1);
                                            }
                                        }
                                        
                                    }
                                    
                                }                   
                                
                            }
                        }
                    }
                    
                }
                if(soLineList != null && soLineList.size()>0){
                    system.debug('solinelist'+soLineList);
                    Database.SaveResult[] child_results = CreateOrUpdateServices((List<Sobject>)soLineList,'UPDATE');
                    if(child_results != null){
                        for(Integer k=0;k<child_results.size();k++ )
                        {
                            Database.SaveResult sr = child_results[k];
                            ServicedProductsWDResult result = new ServicedProductsWDResult();
                            if(soLineList[k].SVMXC__Serial_Number__c != null ){
                                system.debug('Setting Result WD Details'+soLineList[k].Name+ 'WD bFO Id' +soLineList[k].id+ 'WD Back Ref' +soLineList[k].WDBackOfficeReference__c);
                                result.installedProductbFOID = soLineList[k].SVMXC__Serial_Number__c;
                                
                                
                                if(IPMap.containskey(soLineList[k].SVMXC__Serial_Number__c))
                                {
                                    result.installedProductGoldenID = IPMap.get(soLineList[k].SVMXC__Serial_Number__c).GoldenAssetId__c;
                                    result.SerialNumber = IPMap.get(soLineList[k].SVMXC__Serial_Number__c).CustomerSerialNumber__c;
                                }               
                                
                            }
                            result.workOrderbFOID = soLineList[k].SVMXC__Service_Order__c;
                            result.workDetailNumber = soLineList[k].Name; //Added by VISHNU C for BR 8310
                            result.workDetailbFOID = soLineList[k].id; //Added by VISHNU C for BR 8310
                            result.WDBackOfficeReference = soLineList[k].WDBackOfficeReference__c; //Added by VISHNU C for BR 8310
                            system.debug('Result WO Id++'+result.workOrderbFOID);
                            if(!sr.isSuccess())
                            {
                                system.debug('Failed++');
                                String Message ='';
                                for(Database.Error err : sr.getErrors()) {
                                    Message= ' '+err.getFields()+' Error : '+err.getMessage();                              
                                }
                                result.success = false;
                                result.errorMessage = Message;
                                
                                
                            }
                            else{
                                system.debug('success++');
                                result.success = true;
                                system.debug('update success');
                                
                            }
                            for(WorkOrderResult wor: worUpdateList){
                                system.debug('worUpdateList' +worUpdateList);
                                system.debug('Result Work Order Id' +result.workOrderbFOID);
                                system.debug('Inside For Loop to update the ServiceProduct Result');
                                if(wor.workOrderbFOID == result.workOrderbFOID){
                                    system.debug('Inside For Loop to update the ServiceProduct Result  bFO Id Found');
                                    wor.WorkDetailsResult.ServicedProductsWDResult.add(result);
                                }
                            }
                            
                            
                        }
                    }
                }
                //Added by VISHNU C for March Release 2016 performance improvement for WD Auto IP linkage
                if(soLineList != null)
                {
                    string AutoLinkSet = 'N';
                    List<SVMXC__Service_Order_Line__c> soLineList1= new List<SVMXC__Service_Order_Line__c>();
                    for (Id IpLink: AutoIpLink.KeySet())
                    {
                        string ProdIdSN = AutoIpLink.get(IpLink);
                        string [] PrSN = ProdIdSN.split('#');
                        string SN = PrSN[0];
                        Id ProdId = PrSN[1];
                        IPShipSerialNum.add(SN);
                        IPProdbFOId.add(ProdId);
                        
                    } 
                    
                    List<SVMXC__Installed_Product__c> iplist3  = new List<SVMXC__Installed_Product__c>();
                    //List<SVMXC__Service_Order_Line__c> soLineList1= new List<SVMXC__Service_Order_Line__c>();
                    iplist3 = getIPQuery(); //Added by VISHNU C for BR 8310
                    system.debug('The ip list 3' +iplist3 );
                    if(!iplist3.isempty())//Added IF loop by VISHNU C for BR 8310
                        CreateMapIP(iplist3);
                    if(!ProdSNMap.isempty())
                    {
                        for (Id IpLink1: AutoIpLink.KeySet())
                        {
                            SVMXC__Service_Order_Line__c WDRec1 = new SVMXC__Service_Order_Line__c ();
                            WDRec1 = WDAutoIP.get(IpLink1);
                            string ProdIdSN1 = AutoIpLink.get(IpLink1);
                            string [] PrSN1 = ProdIdSN1.split('#');
                            string SN1 = PrSN1[0];
                            Id ProdId1 = PrSN1[1];
                            //system.debug('Inside the Auto Linking IP Process' +ProdSNMap.get(WDRec.Shipped_Serial_Number__c + WDRec.SVMXC__Product__c));
                            if (ProdSNMap.containskey(SN1 + ProdId1))
                            {
                                WDRec1.SVMXC__Serial_Number__c =ProdSNMap.get(SN1 + ProdId1); //Linking IP to the WD
                                AutoLinkSet = 'Y';
                            }
                            if (AutoLinkSet=='Y')
                            {
                                AutoLinkSet = 'N';
                                soLineList1.add(WDRec1);
                            }
                        }
                        if(soLineList1 != null && soLineList1.size()>0)
                        {
                            system.debug('solinelist'+soLineList1);
                            Database.SaveResult[] child_results = CreateOrUpdateServices((List<Sobject>)soLineList1,'UPDATE');
                        }
                        
                    }
                }
                //VISHNU C Changes ends here
                
                
                
            }
            
        }
        return worUpdateList;
    }
    
    public static Map<String,Set<String>> contactFieldMap = new Map<String,Set<String>>();
    webservice static List<WorkOrderResult> bulkCreateWorkOrders(List<WorkOrder> WorkOrderList){
        List<WorkOrderResult> worList = new List<WorkOrderResult>();
        //List<TechObject> tlist = new List<TechObject>();
        List<Sobject> conList = new List<Sobject>();
        List<Sobject> conList2 = new List<Sobject>();
        /*Set<String> sesaSet = new Set<String>();
        Set<String> firstNameSet = new Set<String>();
        Set<String> lastNameSet = new Set<String>();
        Set<String> emailSet = new Set<String>();
        List<user> userList = new List<user>();
        Map<String, User> userMap = new Map<String, User>();*/
        Set<String> ipgolden = new Set<String>();
        Set<String> IPbFOId = new Set<String>(); //Added by VISHNU C for BR 8310 March 2016 Release
        Set<String> MSerialNumber = new Set<String>(); //Added by VISHNU C for BR 8310 March 2016 Release
        Set<String> ProdbFOId = new Set<String>(); //Added by VISHNU C for BR 8310 March 2016 Release
        //Map<String ,Id> goldenIdMap = new Map<String,Id>(); //Commented by VISHNU C for BR 8310 March 2016 Release
        /*Map<Id ,SVMXC__Installed_Product__c> bFOIdMap = new Map<Id,SVMXC__Installed_Product__c>(); //Added by VISHNU C for BR 8310 March 2016 Release
        Map<String ,SVMXC__Installed_Product__c> goldenIdMap = new Map<String,SVMXC__Installed_Product__c>(); //Added by VISHNU C for BR 8310 March 2016 Release
        Map<String ,Id> ProdSNMap = new Map<String,Id>(); //Added by VISHNU C for BR 8310 March 2016 Release*/
        Set<String> wogrefset = new Set<String>();
        map<String, WorkOrderGroup__c> workorderGroupMap = new Map<String, WorkOrderGroup__c>();
        Set<Id> accidSet = new Set<id>();
        List<SVMXC__Service_Order__c> existingwolist = new List<SVMXC__Service_Order__c>();
        List<WorkOrder> WorkOrderListToProcess = new List<WorkOrder>();
        List<WorkOrder> WorkOrderMandatoryPass = new List<WorkOrder>();
        Map<String,SVMXC__Service_Order__c> existingMap = new Map<String,SVMXC__Service_Order__c>();
        String SOPrefix = SObjectType.Product2.getKeyPrefix();
        String ProdSNWO; //Added by VISHNU C for BR 8310 March 2016 Release
        RecordType rt =[SELECT Description,DeveloperName,Id,Name,SobjectType FROM RecordType where SobjectType='SVMXC__Service_Order__c' and DeveloperName ='WO_ConnectedWorkOrder'];
        if(WorkOrderList != null){
            
            for(WorkOrder wu: WorkOrderList){   
                MandatoryFields mf = new MandatoryFields();
                mf = CreateMandataryCheck(wu);
                if( mf.isMFPass)
                {                   
                    if(Wu.productbFOID != null && Wu.productbFOID !='' ){
                        if(Wu.productbFOID.length()> 3 && Wu.productbFOID.substring(0, 3) != SOPrefix)
                        {
                          WorkOrderResult wor = WS_Work_Order_Handler.getWorkOrderResult(false,'CREATED',' Mandatory Fields are missing '+ mf.fields,null,
                                                                                    null,wu.WOBackOfficeReference,wu.TECH_WOBackOfficeRecordID,null,wu.WOGBackOfficeReference,null,wu.backOfficeSystem,null);

                            worList.add(wor);
                        }
                        else{
                            WorkOrderMandatoryPass.add(wu);
                        }
                        
                    }
                    else{
                        WorkOrderMandatoryPass.add(wu);
                    }
                }
                else{                   
                    WorkOrderResult wor = WS_Work_Order_Handler.getWorkOrderResult(false,'CREATED',' Mandatory Fields are missing '+ mf.fields,null,
                                                                                    null,wu.WOBackOfficeReference,wu.TECH_WOBackOfficeRecordID,null,wu.WOGBackOfficeReference,null,wu.backOfficeSystem,null);

                    worList.add(wor);                 
                }               
            }
            
            
            Set<String> setsystem = new Set<String>();
            Set<String> setbref = new Set<String>();
            for(WorkOrder wou: WorkOrderMandatoryPass){
                if(wou.WOBackOfficeReference != null && wou.WOBackOfficeReference !=''){
                    setbref.add(wou.WOBackOfficeReference);
                }
                if(wou.backOfficeSystem != null && wou.backOfficeSystem !=''){
                    setsystem.add(wou.backOfficeSystem);
                }                
            }
            
            String swhereClause = '';
            if(setsystem != null && setsystem.size()>0)
            {
                swhereClause +=' BackOfficeSystem__c in : setsystem ';
            }
            if(setbref != null && setbref.size()>0)
            {
                if(swhereClause.length()>0)
                {
                    swhereClause +=' and  BackOfficeReference__c in : setbref ';
                }
            }
            if(swhereClause.length()>0)
            {
                existingwolist = Database.query('Select id,BackOfficeSystem__c,BackOfficeReference__c, name from SVMXC__Service_Order__c where  '+swhereClause);
                if(existingwolist != null && existingwolist.size()>0)
                {
                    for(SVMXC__Service_Order__c ewo: existingwolist){
                        existingMap.put(ewo.BackOfficeSystem__c+ewo.BackOfficeReference__c, ewo);
                    }
                }  
            }
            for(WorkOrder wou: WorkOrderMandatoryPass){
                if(!existingMap.containskey(wou.backOfficeSystem+wou.WOBackOfficeReference))
                    WorkOrderListToProcess.add(wou);
                else{
                    // error 
                    String errorMessage = ' Work order '+existingMap.get(wou.backOfficeSystem+wou.WOBackOfficeReference).id+' is already exist with BackOfficeReference for this BackOfficeSystem ';
                    WorkOrderResult wor = WS_Work_Order_Handler.getWorkOrderResult(false,'CREATED',errorMessage,null,
                                                                                    null,wou.WOBackOfficeReference,wou.TECH_WOBackOfficeRecordID,null,wou.WOGBackOfficeReference,null,wou.backOfficeSystem,null);

                    worList.add(wor);
                    
                }
            }
        }
        else{
          
             WorkOrderResult wor = WS_Work_Order_Handler.getWorkOrderResult(false,'CREATED',' Please send request ',null,
                                                                                    null,null,null,null,null,null,null,null);
            worList.add(wor);
            return worList;                     
            
        }
        
        if(WorkOrderListToProcess != null && WorkOrderListToProcess.size()>0)
        {
            WorkOrderList = new List<WorkOrder>();
            WorkOrderList = WorkOrderListToProcess;
            for(WorkOrder wou: WorkOrderList){
                System.debug('*********************'+wou);
                if(wou.contact != null ){
                    //getContactFields(wou.contact);                    
                    WS_Work_Order_Handler.UpdateFieldMap(contactFieldMap,WS_Work_Order_Handler.getContactFieldMap(wou.contact));
                }
                //Added below If loop by VISHNU C for BR 8310 March 2016 Release
                if(wou.mainShippedSerialNumber!=null && wou.mainShippedSerialNumber!='' && wou.productbFOId!=null && wou.productbFOId!=''){
                    IPShipSerialNum.add(wou.mainshippedSerialNumber );
                    IPProdbFOId.add(wou.productbFOID );
                }
                
                if(wou.mainInstalledProduct!= null )
                {   
                    /*
                    //Added by VISHNU C below bFOId, Serial Number and bFO Product Id if conditions for BR 8310 March 2016 Release
                    if(wou.mainInstalledProduct.bFOID != null && wou.mainInstalledProduct.bFOID !='')
                    IPbFOId.add(wou.mainInstalledProduct.bFOID);
                    if(wou.mainInstalledProduct.mainShippedSerialNumber != null && wou.mainInstalledProduct.mainShippedSerialNumber !='')
                    MSerialNumber.add(wou.mainInstalledProduct.mainShippedSerialNumber);
                    if(wou.mainInstalledProduct.productbFOID != null && wou.mainInstalledProduct.productbFOID !='')
                    ProdbFOId.add(wou.mainInstalledProduct.productbFOID);
                    //VISHNU Change Ends
                    if(wou.mainInstalledProduct.GoldenID != null && wou.mainInstalledProduct.GoldenID !='')
                    ipgolden.add(wou.mainInstalledProduct.GoldenID);*/
                    getInstalledProductFields(wou.mainInstalledProduct );
                    
                }
                
                if(wou.WorkDetail != null ){
                    if(wou.WorkDetail.ServiceProductsWDs != null && wou.WorkDetail.ServiceProductsWDs.size()>0)
                        
                    {
                        for(ServiceProductsWD spu: wou.WorkDetail.ServiceProductsWDs){                
                            if(spu.InstalledProduct != null)
                                getInstalledProductFields(spu.InstalledProduct );               
                            
                        }
                        
                    }
                }
                
                if(wou.WOGBackOfficeReference != null){
                    System.debug('\n CLog : '+wou.WOGBackOfficeReference);
                    wogrefset.add(wou.WOGBackOfficeReference );
                }
                else if(wou.WOBackOfficeReference != null ){
                    System.debug('\n CLog : '+wou.WOBackOfficeReference);
                    wogrefset.add(wou.WOBackOfficeReference );
                    
                }
                //Def-7331
                if(wou.installedAtAccountbFOID != null){
                    System.debug('\n CLog : '+wou.installedAtAccountbFOID);
                    AccntIDSet.add(wou.installedAtAccountbFOID);
                }//End:Def-7331                
            }
            //Added by VISHNU C for BR 8310 March Release 2016
            List<SVMXC__Installed_Product__c> iplistNew  = new List<SVMXC__Installed_Product__c>();
            iplistNew = getIPQuery(); //Added by VISHNU C for BR 8310
            system.debug('The iplistNew getIPQuery is' +iplistNew);
            system.debug('The IP bFOId is' +IPbFOIdset+ 'The IP is Golden Id' +IPGoldenIDset+ 'The IP is Product bFO Id is' +IPProdbFOId+ 'The IP Serial Number is ' +IPShipSerialNum );
            if(!iplistNew.isempty()){//Added IF loop by VISHNU C for BR 8310
                CreateMapIP(iplistNew);
              
            }
            //Change by VISHNU C BR 8310 Ends
            System.debug('\n CLog : '+wogrefset);
            if(wogrefset != null && wogrefset.size()>0){
                
                for(WorkOrderGroup__c obj: [select id,BackOfficeReference__c from WorkOrderGroup__c where BackOfficeReference__c in :wogrefset ]){
                    System.debug('\n CLog : '+workorderGroupMap);
                    workorderGroupMap.put(obj.BackOfficeReference__c , obj);
                }
                
            }
            if(contactFieldMap != null && contactFieldMap.size()>0 )
            {
                String Querystr = WS_Work_Order_Handler.getContactQuery(contactFieldMap,AccntIDSet);
                //String Querystr = getContactQuery();                        
                conList2 = Database.query(Querystr);
                System.debug('\n SCLog : '+conList.size());                         
                System.debug('\n SCLog : '+conList);
            }
            List<SVMXC__Service_Order__c> worderList = new List<SVMXC__Service_Order__c>();
            
            Set<id> ipset = new Set<id>();
            Set<id> aidset = new Set<id>();
            for(WorkOrder wou: WorkOrderList)
            {
                SVMXC__Service_Order__c  wo =   getWorkOrder(wou);
                System.debug('\n CLog: '+wo);
                
                if(wou.WOGBackOfficeReference != null){
                    System.debug('\n CLog : '+wou.WOGBackOfficeReference);
                    if(workorderGroupMap.containskey(wou.WOGBackOfficeReference))
                    {
                        wo.WorkOrderGroup__c = workorderGroupMap.get(wou.WOGBackOfficeReference).id;
                    }
                }
                else if(wou.WOBackOfficeReference != null ){
                    System.debug('\n CLog : '+wou.WOBackOfficeReference);
                    if(workorderGroupMap.containskey(wou.WOBackOfficeReference))
                    {
                        wo.WorkOrderGroup__c = workorderGroupMap.get(wou.WOBackOfficeReference).id;
                    }
                    
                }
                
                wo.RecordTypeid = rt.id;
                wo.SynchronizationLog__c ='Work Order SYNCED with Back Office';
                wo.FirstSynchronizationDate__c = system.now();
                wo.LastSynchronizationDate__c = system.now();
                wo.RequestForRelease__c = null;//Added by VISHNU C for Q2 2016 Release
                
                //if(wou.contact != null && getMatchedContact(wou.contact ,conList2) != null )
                if(wou.contact != null && WS_Work_Order_Handler.getMatchedContact(wou.contact,conList2,wou.installedAtAccountbFOID) != null)
                {
                    Id ContactId =WS_Work_Order_Handler.getMatchedContact(wou.contact ,conList2,wou.installedAtAccountbFOID);
                    if(ContactId!=null)
                    {
                        wo.SVMXC__Contact__c = ContactId; 
                    }
                }
                //else if(wou.contact != null && getMatchedContact(wou.contact ,conList2) == null){
                else if(wou.contact != null && WS_Work_Order_Handler.getMatchedContact(wou.contact,conList2,wou.installedAtAccountbFOID) == null)
                {
                    wo.ContactInformation__c  = 'CONTACT AUTO-MATCHING FAILED \n Contact :';
                    if(wou.contact.firstName != null )
                        wo.ContactInformation__c  += wou.contact.firstName +' ';
                    if(wou.contact.lastName != null)
                        wo.ContactInformation__c  += wou.contact.lastName +' ';
                    if(wou.contact.emailAddress != null)
                        wo.ContactInformation__c  += wou.contact.emailAddress+' ';
                    if(wou.contact.mobilePhone != null)
                        wo.ContactInformation__c  += wou.contact.mobilePhone+' ';
                    //DEF-7387
                    if(wou.contact.workPhone != null)
                        wo.ContactInformation__c  += wou.contact.workPhone+' ';
                    wo.ContactInformation__c  += '\n';
                }
                if(wou.mainInstalledProduct!= null )
                {
                    Id MIPWO;
                    //Added below code by VISHNU C for BR 8310 March 2016 Release
                    //system.debug('Going to check Prod SN' +ProdSNMap+ 'for serial number' +wou.mainInstalledProduct.mainShippedSerialNumber+ 'Prod Id' +wou.mainInstalledProduct.productbFOID);
                    system.debug('The MIP bFOId is' +wou.mainInstalledProduct.bFOID+ 'The MIP is Golden Id' +wou.mainInstalledProduct.GoldenID+ 'The MIP is Product bFO Id is' +wou.productbFOID+ 'The MIP Serial Number is ' +wou.mainShippedSerialNumber );
                    if(wou.mainInstalledProduct.bFOID != null && bFOIdMap.containskey(wou.mainInstalledProduct.bFOID) && !bFOIdMap.isempty() ){
                        system.debug('Entered to update MIP with bFO Id');
                        MIPWO =  wou.mainInstalledProduct.bFOID;
                        wo.SVMXC__Component__c =bFOIdMap.get(MIPWO).Id;
                        wo.Shipped_Serial_Number__c = wou.mainShippedSerialNumber;
                        ProdSNWO = 'Y';
                        system.debug('Updated IP with bFO Id');
                    }
                    else if(wou.mainInstalledProduct.GoldenID != null && wou.mainInstalledProduct.GoldenID !='' && goldenIdMap.containskey(wou.mainInstalledProduct.GoldenID) && !goldenIdMap.isempty()){
                        system.debug('Entered to update MIP with golden Id');
                        //MIPWO =  wou.mainInstalledProduct.GoldenID;
                        wo.SVMXC__Component__c =goldenIdMap.get(wou.mainInstalledProduct.GoldenID).Id;
                        wo.Shipped_Serial_Number__c = wou.mainShippedSerialNumber;
                        ProdSNWO = 'Y';
                        system.debug('Updated IP with Golden Id Id');
                    }                   
                    /*
                    else if( wou.mainInstalledProduct.mainShippedSerialNumber != null && wou.mainInstalledProduct.mainShippedSerialNumber !=''  && wou.mainInstalledProduct.productbFOID != null && wou.mainInstalledProduct.productbFOID !='' && ProdSNMap.containskey(wou.mainInstalledProduct.mainShippedSerialNumber + wou.mainInstalledProduct.productbFOID) && !ProdSNMap.isempty()){
                    system.debug('Entered to update MIP with Product Id and SN');
                    //MIPWO =  wou.mainInstalledProduct.mainShippedSerialNumber + wou.mainInstalledProduct.productbFOID;
                    wo.SVMXC__Component__c =ProdSNMap.get(wou.mainInstalledProduct.mainShippedSerialNumber + wou.mainInstalledProduct.productbFOID);
                    wo.Shipped_Serial_Number__c = wou.mainInstalledProduct.mainShippedSerialNumber;
                    system.debug('Updated IP with SN and Prod bFO Id');
                    }
                    else{
                    wo.Shipped_Serial_Number__c = wou.mainInstalledProduct.mainShippedSerialNumber;
                    wo.SVMXC__Product__c = wou.mainInstalledProduct.productbFOID;
                    system.debug('NO IP Updated, update Prod and MSN');
                    }*/                    
                    
                }
                if( ProdSNWO != 'Y' )
                {
                    ProdSNWO = 'N';
                    if( wou.mainShippedSerialNumber != null && wou.mainShippedSerialNumber !=''  && wou.productbFOID != null && wou.productbFOID !='' && ProdSNMap.containskey(wou.mainShippedSerialNumber + wou.productbFOID) && !ProdSNMap.isempty()){
                        system.debug('Entered to update MIP with Product Id and SN');
                        //MIPWO =  wou.mainInstalledProduct.mainShippedSerialNumber + wou.mainInstalledProduct.productbFOID;
                        wo.SVMXC__Component__c =ProdSNMap.get(wou.mainShippedSerialNumber + wou.productbFOID);
                        wo.Shipped_Serial_Number__c = wou.mainShippedSerialNumber;
                        system.debug('Updated IP with SN and Prod bFO Id');
                    }
                    else{
                        wo.Shipped_Serial_Number__c = wou.mainShippedSerialNumber;
                        wo.SVMXC__Product__c = wou.productbFOID;
                        system.debug('NO IP Updated, update Prod and MSN');
                    }
                    
                }
                ProdSNWO = 'N';
                //Changes by VISHNU C Ends
                if(wo.SVMXC__Company__c == null){
                    if(wo.SVMXC__Component__c != null){
                        ipset.add(wo.SVMXC__Component__c);
                    }
                    else{
                        if(wo.SoldToAccount__c != null ){
                            wo.SVMXC__Company__c = wo.SoldToAccount__c;
                            aidset.add(wo.SoldToAccount__c);
                        }
                    }
                    
                }
                System.debug('\n CLog: '+wo);
                worderList.add(wo);
                
            }
            if(ipset != null && ipset.size()>0){
                Map<id,SVMXC__Installed_Product__c> ipidobjmap = new Map<id,SVMXC__Installed_Product__c>();
                List<SVMXC__Installed_Product__c> iplist =[SELECT Id, SVMXC__Company__c, SVMXC__Site__c FROM SVMXC__Installed_Product__c WHERE id in :ipset ];
                ipidobjmap.putAll(iplist);
                
                for(SVMXC__Service_Order__c wo: worderList)
                {
                    if(wo.SVMXC__Company__c == null){
                        if(wo.SVMXC__Component__c != null){
                            SVMXC__Installed_Product__c mainIP = ipidobjmap.get(wo.SVMXC__Component__c);
                            if(mainIP !=null && mainIP.SVMXC__Company__c != null){
                                wo.SVMXC__Company__c = mainIP.SVMXC__Company__c;
                                wo.SVMXC__Site__c = mainIP.SVMXC__Site__c;
                            }else{
                                wo.SVMXC__Company__c = wo.SoldToAccount__c;
                            }
                        }
                        
                        
                    }
                    if(wo.SVMXC__Company__c != null )
                        aidset.add(wo.SVMXC__Company__c);
                    
                }
                
            }
            for(SVMXC__Service_Order__c wo: worderList)
            {
                if(wo.SVMXC__Company__c != null )
                    aidset.add(wo.SVMXC__Company__c);
            }
            
            System.debug('\n CLog: account ids '+aidset);
            if(aidset != null && aidset.size()>0)
            {
                Map<id,id> aidsiteMap = new Map<id,id>();
                List<SVMXC__Site__c> primaryLocs = [SELECT Id,SVMXC__Account__c, PrimaryLocation__c FROM SVMXC__Site__c WHERE SVMXC__Account__c  in : aidset AND PrimaryLocation__c=true ];
                Set<id> accountIDSet = new Set<id>();
                for(SVMXC__Site__c site: primaryLocs){
                    if(site.PrimaryLocation__c)
                        aidsiteMap.put(site.SVMXC__Account__c,site.id );
                }
                for(SVMXC__Service_Order__c wo: worderList)
                {
                    if(wo.SVMXC__Company__c != null  && !aidsiteMap.containskey(wo.SVMXC__Company__c)){
                        
                        accountIDSet.add(wo.SVMXC__Company__c);
                    }
                }
                System.debug('\n CLog: '+accountIDSet);
                if(accountIDSet!= null && accountIDSet.size()>0)
                {
                    List<CS_AccountToLocation__c> acctoloc = CS_AccountToLocation__c.getall().values();
                    String SQLHeader ='';
                    String SQLLine ='';
                    
                    for(CS_AccountToLocation__c obj: acctoloc)
                    {
                        if(obj.SourceObjField__c != null )
                        {
                            if(SQLHeader !='')
                                SQLHeader +=',';
                            SQLHeader +=obj.SourceObjField__c;                  
                        }
                        System.debug('\n SQLHeader: '+SQLHeader);
                        if(obj.TargetObjField__c != null )
                        {
                            if(SQLLine !='')
                                SQLLine +=',';
                            SQLLine +=obj.TargetObjField__c;                    
                        }
                        System.debug('\n SQLLine: '+SQLLine);
                    }
                    
                    String SqlQuery='Select id, Name , '+SQLHeader+' , ( select id , '+SQLLine+' from SVMXC__Sites__r where PrimaryLocation__c = true '+' )' +' from Account where id in :accountIDSet';
                    System.debug('\n query: '+SqlQuery);
                    List<SObject> sobjects =Database.Query(SqlQuery);
                    System.debug('\n CLog: '+sobjects);
                    // create location
                    List<SVMXC__Site__c> siteList = new List<SVMXC__Site__c>();
                    
                    if(sobjects!= null && sobjects.size()>0){
                        for(SObject sObj:sobjects){
                            // create location
                            //SObject sObj = (SObject)acc;
                            SVMXC__Site__c site = new SVMXC__Site__c();
                            site.PrimaryLocation__c =  true;
                            //site.TECH_CreateFromWS_IP__c = true;
                            site.SVMXC__Account__c = Id.valueOf(sobj.get('Id')+'');
                            SObject tObj = (SObject)site;                                                       
                            //DEF-7527
                            // Stared 
                            //tObj.put('Name',sobj.get('Name')+'_'+'SITE');
                            String locationName =  Ap_Location.computeSiteName(sobj.get('Name')+'');
                            tObj.put('Name',locationName);
                            // Ended
                            tObj.put('RecordTypeId',Label.CLOCT13SRV36);
                            tObj.put('SVMXC__Location_Type__c', 'Site');
                            
                            for(CS_AccountToLocation__c obj: acctoloc)
                            {
                                if(obj.SourceObjField__c != null  && obj.TargetObjField__c != null )
                                {                               
                                    tObj.put(obj.TargetObjField__c,sobj.get(obj.SourceObjField__c));
                                }
                                
                            }                       
                            siteList.add((SVMXC__Site__c)tObj);
                            
                            
                        }
                        System.debug('\n CLog: '+siteList);
                        if(siteList != null && siteList.size()>0){
                            Database.SaveResult[] sresults  =  CreateOrUpdateServices((List<Sobject>)siteList,'CREATE');
                            for(Integer k=0;k<sresults.size();k++ )
                            {
                                Database.SaveResult sr =sresults[k];
                                if(!sr.isSuccess())
                                {                           
                                    String Message =' Creation of Site ';
                                    for(Database.Error err : sr.getErrors()) {
                                        Message= ' '+err.getFields()+' Error : '+err.getMessage();                              
                                    } 
                                    System.debug('\n CLog:** '+Message);
                                    //aidErroMessMap.put(siteList[k].SVMXC__Account__c,Message);          
                                }
                                else{                           
                                    aidsiteMap.put(siteList[k].SVMXC__Account__c,sr.getId());
                                }
                                
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
                for(SVMXC__Service_Order__c wo: worderList)
                {
                    if(wo.SVMXC__Company__c != null  && aidsiteMap.containskey(wo.SVMXC__Company__c))
                    {
                        //SVMXC__Site__c primaryLoc =aidsiteMap.get(wo.SVMXC__Company__c);
                        wo.SVMXC__Site__c = aidsiteMap.get(wo.SVMXC__Company__c);
                    }
                    
                }                
            }
            System.debug('\n CLog: '+worderList);
            if(worderList != null && worderList.size()>0)
            {
                Database.SaveResult[] Header_results = CreateOrUpdateServices((List<Sobject>)worderList,'CREATE');
                Set<id> woidset = new set<id>();
                Set<String> errorHeader = new Set<String>();
                Map<String,SVMXC__Service_Order__c> succWOMap = new Map<String,SVMXC__Service_Order__c>();
                for(Integer k=0;k<Header_results.size();k++ )
                {
                    Database.SaveResult sr = Header_results[k];
                    if(sr.isSuccess())
                    {
                        woidset.add(sr.getId());
                    }
                    else{
                        errorHeader.add(worderList[k].BackOfficeSystem__c+worderList[k].BackOfficeReference__c );
                    }
                    
                }
                List<SVMXC__Service_Order__c> wolist  = new List<SVMXC__Service_Order__c>();
                Map<id,SVMXC__Service_Order__c> womap = new Map<id,SVMXC__Service_Order__c>();
                if(woidset!= null && woidset.size()>0)
                {               
                    wolist =  WS_Work_Order_Handler.getWorkOrderObjects(woidset);                
                    womap.putAll(wolist);
                }
                for(Integer k=0;k<Header_results.size();k++ )
                {
                    Database.SaveResult sr =Header_results[k];
                    WorkOrderResult wor = new WorkOrderResult();
                    List<ServicedProductsWDResult> ServicedProductsWDResult = new List<ServicedProductsWDResult>();
                    WorkDetailsResult wdr = new WorkDetailsResult();                
                    wdr.ServicedProductsWDResult = ServicedProductsWDResult;
                    wor.WorkDetailsResult =wdr;
                    List<ServicedProductsWDResult> spResult = new List<ServicedProductsWDResult>();
                    
                    if(!sr.isSuccess())
                    {
                        String ErroMessage ='';
                        for(Database.Error err : sr.getErrors()) {
                            ErroMessage= ' '+err.getFields()+' : '+err.getMessage();                              
                        }
                        wor.success = false;
                        wor.type = 'CREATED';
                        wor.errorMessage = ErroMessage;
                        wor.TECH_WOBackOfficeRecordID = worderList[k].TECH_WOBackOfficeRecordID__c;
                    }
                    else{
                        
                        Id worid = sr.getId();
                        SVMXC__Service_Order__c srObj = womap.get(worid);
                        wor.success = true;
                        wor.type = 'CREATED';
                        wor.workOrderbFOID = srObj.id;
                        wor.workOrderNumber = srObj.name;
                        wor.workOrderBOReference = srObj.BackOfficeReference__c;
                        wor.workOrderGroupbFOID = srObj.WorkOrderGroup__c;
                        
                        wor.TECH_WOBackOfficeRecordID = srObj.TECH_WOBackOfficeRecordID__c;
                        wor.workOrderGoupBOReference = srObj.WorkOrderGroup__r.BackOfficeReference__c;                  
                        wor.countryOfBackOffice = srObj.CountryOfBackOffice__c;
                        wor.backOfficeSystem = srObj.BackOfficeSystem__c;
                        succWOMap.put(srObj.BackOfficeSystem__c+srObj.BackOfficeReference__c,srObj);
                        
                    }   
                    worList.add(wor);
                }
                // processing workDetails
                List<SVMXC__Service_Order_Line__c> soLineList = new List<SVMXC__Service_Order_Line__c>();
                RecordType rtRecord ;
                String ProdSNWD;//Added by VISHNU C for BR 8310 March 2015 Release
                for(RecordType rtobj: [SELECT DeveloperName,Id,Name,SobjectType FROM RecordType where SobjectType ='SVMXC__Service_Order_Line__c']){
                    woDetailsMap.put(rtobj.DeveloperName , rtobj);
                }
                if(woDetailsMap.containskey('Products_Serviced')){
                    rtRecord =woDetailsMap.get('Products_Serviced');
                }
                
                
                
                for(WorkOrder wou: WorkOrderList){
                    
                    if(succWOMap.containskey(wou.backOfficeSystem+wou.WOBackOfficeReference)){
                        if(wou.WorkDetail != null )
                        {
                            if(wou.WorkDetail.ServiceProductsWDs != null && wou.WorkDetail.ServiceProductsWDs.size()>0)
                            {
                                
                                for(ServiceProductsWD spu: wou.WorkDetail.ServiceProductsWDs){  
                                    
                                    String sMandatoryFields;
                                    string sInstalledProduct;
                                    if(spu.productbFOID != null && spu.productbFOID !='' ){
                                        if(spu.productbFOID.length()> 3 && spu.productbFOID.substring(0, 3) != SOPrefix)
                                        {
                                            sMandatoryFields = 'Y';
                                        }
                                    }
                                    if ((spu.shippedSerialNumber=='' || spu.shippedSerialNumber==null) && (spu.productbFOID=='' || spu.productbFOID==null))
                                    {
                                        sMandatoryFields = 'Y';
                                    }
                                    if(spu.InstalledProduct != null){
                                    }
                                    else{
                                        sInstalledProduct = 'Y';
                                    }
                                    if( sInstalledProduct != 'Y' )
                                    {
                                        if ((spu.InstalledProduct.bFOID==null) && (spu.InstalledProduct.GoldenID=='' || spu.InstalledProduct.GoldenID==null))
                                            sMandatoryFields = 'Y';
                                    }
                                   
                                    if ( sMandatoryFields != 'Y' )
                                    {
                                        
                                        //Ends Now
                                        
                                        SVMXC__Service_Order_Line__c sol = new SVMXC__Service_Order_Line__c();
                                        sol.SVMXC__Service_Order__c = succWOMap.get(wou.backOfficeSystem+wou.WOBackOfficeReference).id;
                                        sol.RecordTypeId = rtRecord.id;
                                        string ReqWDBackOfficeReference = spu.WDBackOfficeReference; //Added by VISHNU C for BR 8310 March Release
                                        sol.WDBackOfficeReference__c = ReqWDBackOfficeReference; //Added by VISHNU C for BR 8310 March Release
                                        //Added below lines by VISHNU C for BR 8310 March 2016 Release
                                        if(spu.InstalledProduct != null){
                                            getInstalledProductFields(spu.InstalledProduct ); 
                                            if(spu.shippedSerialNumber!=null && spu.shippedSerialNumber!='' && spu.productbFOId!=null && spu.productbFOId!=''){
                                                IPShipSerialNum.add(spu.shippedSerialNumber );
                                                IPProdbFOId.add(spu.productbFOID );
                                            }
                                            List<SVMXC__Installed_Product__c> iplist  = new List<SVMXC__Installed_Product__c>();
                                            iplist = getIPQuery(); //Added by VISHNU C for BR 8310
                                            if(!iplist.isempty()){//Added IF loop by VISHNU C for BR 8310
                                                CreateMapIP(iplist);
                                                
                                            }
                                            
                                            
                                            //VISHNU Changes Ends
                                            
                                            
                                            //Added below code by VISHNU C for BR 8310 March 2016 Release
                                            
                                            //system.debug('Work Detail Going to check Prod SN' +ProdSNMap+ 'for serial number' +spu.InstalledProduct.shippedSerialNumber+ 'Prod Id' +spu.InstalledProduct.productbFOID);
                                            system.debug('Work Detail The MIP bFOId is' +spu.InstalledProduct.bFOID+ 'The MIP is Golden Id' +spu.InstalledProduct.GoldenID+ 'The MIP is Product bFO Id is' +spu.productbFOID+ 'The MIP Serial Number is ' +spu.shippedSerialNumber );
                                            if(spu.InstalledProduct.bFOID != null && bFOIdMap.containskey(spu.InstalledProduct.bFOID) && !bFOIdMap.isempty() ){
                                                system.debug('Work Detail Entered to update MIP with bFO Id');
                                                //MIPWO =  spu.InstalledProduct.bFOID;
                                                sol.SVMXC__Serial_Number__c =bFOIdMap.get(spu.InstalledProduct.bFOID).Id;
                                                sol.Shipped_Serial_Number__c = spu.shippedSerialNumber;
                                                ProdSNWD = 'Y';
                                                system.debug('solrk Detail Updated IP with bFO Id');
                                            }
                                            else if(spu.InstalledProduct.GoldenID != null && spu.InstalledProduct.GoldenID !='' && goldenIdMap.containskey(spu.InstalledProduct.GoldenID) && !goldenIdMap.isempty()){
                                                system.debug('solrk Detail Entered to update MIP with golden Id');
                                                //MIPsol =  spu.InstalledProduct.GoldenID;
                                                sol.SVMXC__Serial_Number__c =goldenIdMap.get(spu.InstalledProduct.GoldenID).Id;
                                                sol.Shipped_Serial_Number__c = spu.shippedSerialNumber;
                                                ProdSNWD = 'Y';
                                                system.debug('solrk Detail Updated IP with Golden Id Id');
                                            }                   
                                            
                                            
                                        }
                                        if( ProdSNWD != 'Y' )
                                        {
                                            ProdSNWD = 'N';
                                            if( spu.shippedSerialNumber != null && spu.shippedSerialNumber !=''  && spu.productbFOID != null && spu.productbFOID !='' && ProdSNMap.containskey(spu.shippedSerialNumber + spu.productbFOID) && !ProdSNMap.isempty()){
                                                system.debug('Entered to update MIP with Product Id and SN');
                                                //MIPWO =  wou.mainInstalledProduct.mainShippedSerialNumber + wou.mainInstalledProduct.productbFOID;
                                                sol.SVMXC__Serial_Number__c =ProdSNMap.get(spu.shippedSerialNumber + spu.productbFOID);
                                                sol.Shipped_Serial_Number__c = spu.shippedSerialNumber;
                                                system.debug('Updated IP with SN and Prod bFO Id');
                                            }
                                            else{
                                                sol.Shipped_Serial_Number__c = spu.shippedSerialNumber;
                                                sol.SVMXC__Product__c = spu.productbFOID;
                                                system.debug('NO IP Updated, update Prod and MSN');
                                            }
                                            
                                        }
                                        ProdSNWD = 'N';
                                       
                                        
                                        soLineList.add(sol);
                                    }
                                    
                                    else
                                    {
                                        system.debug('Entered inside WD No values found in KEY Criteria ELSE PART');
                                        ServicedProductsWDResult result2 = new ServicedProductsWDResult();
                                        
                                        result2.workDetailbFOID = spu.workDetailbFOID; //Added by VISHNU C for BR 8310
                                        result2.WDBackOfficeReference = spu.WDBackOfficeReference; //Added by VISHNU C for BR 8310
                                        result2.errorMessage = 'At least one of the following fields is mandatory to create a Work Detail (Serviced Product): bFOID OR Golden ID OR ShippedSerialNumber OR ProductbFOID';
                                        result2.success = false;
                                        //result2.workOrderbFOID = wou.workOrderbFOID;
                                        result2.workOrderbFOID = succWOMap.get(wou.backOfficeSystem+wou.WOBackOfficeReference).id;
                                        system.debug('++Work Order bFO Id for Null'+result2.workOrderbFOID);
                                        system.debug('++Work Order List for Null'+worList);
                                        for(WorkOrderResult wor: worList){
                                            if(wor.workOrderbFOID == result2.workOrderbFOID){
                                                wor.WorkDetailsResult.ServicedProductsWDResult.add(result2);
                                            }
                                        }
                                        
                                    }
                                }                   
                                
                            }
                        }
                    }
                    
                }
                if(soLineList != null && soLineList.size()>0){
                    Database.SaveResult[] child_results = CreateOrUpdateServices((List<Sobject>)soLineList,'CREATE');
                    Set<id> WokDetailIdset = new set<id>(); //Added by VISHNU C for BR 8310 March Release
                    Map<String,SVMXC__Service_Order_Line__c> WDMap = new Map<String,SVMXC__Service_Order_Line__c>();//Added by VISHNU C for BR 8310 March Release
                    
                    if(child_results != null){
                        //Added by VISHNU C for BR 8310 March 2016 Release
                        for(Integer k=0;k<child_results.size();k++ )
                        {
                            Database.SaveResult sr = child_results[k];
                            if(sr.isSuccess())
                            {
                                WokDetailIdset.add(sr.getId());
                            }
                                                        /*else{
                            errorHeader.add(worderList[k].BackOfficeSystem__c+worderList[k].BackOfficeReference__c );
                            }*/
                            
                        }
                        List<SVMXC__Service_Order_Line__c> WDlist  = new List<SVMXC__Service_Order_Line__c>();
                        if(WokDetailIdset!= null && WokDetailIdset.size()>0)
                        {               
                            WDlist =  getWorkDetailsResults(WokDetailIdset);                
                            WDMap.putAll(WDlist);
                        }
                        //VISHNU C Changes ends here
                        for(Integer k=0;k<child_results.size();k++ )
                        {
                            Database.SaveResult sr = child_results[k];
                            ServicedProductsWDResult result = new ServicedProductsWDResult();
                            if(soLineList[k].SVMXC__Serial_Number__c != null ){
                                result.installedProductbFOID = soLineList[k].SVMXC__Serial_Number__c;
                                //result.workDetailNumber = soLineList[k].Name; //Added by VISHNU C for BR 8310
                                //result.workDetailbFOID = soLineList[k].id; //Added by VISHNU C for BR 8310
                                //result.WDBackOfficeReference = soLineList[k].WDBackOfficeReference__c; //Added by VISHNU C for BR 8310
                                
                                if(IPMap.containskey(soLineList[k].SVMXC__Serial_Number__c))
                                {
                                    result.installedProductGoldenID = IPMap.get(soLineList[k].SVMXC__Serial_Number__c).GoldenAssetId__c;
                                    result.SerialNumber = IPMap.get(soLineList[k].SVMXC__Serial_Number__c).CustomerSerialNumber__c;
                                }               
                                
                            }
                            result.workOrderbFOID = soLineList[k].SVMXC__Service_Order__c;
                            Id WDid = sr.getId();//Added by VISHNU C for BR 8310 March Release
                            SVMXC__Service_Order_Line__c srObj1 = WDMap.get(WDid);//Added by VISHNU C for BR 8310 March Release
                            result.WDBackOfficeReference = srObj1.WDBackOfficeReference__c;//Added by VISHNU C for BR 8310
                            if(!sr.isSuccess())
                            {
                                String Message ='';
                                for(Database.Error err : sr.getErrors()) {
                                    Message= ' '+err.getFields()+' Error : '+err.getMessage();                              
                                }
                                result.success = false;
                                result.errorMessage = Message;
                                
                                
                            }
                            else{
                                result.success = true;
                                
                                
                                result.workDetailNumber = srObj1.Name; //Added by VISHNU C for BR 8310
                                result.workDetailbFOID = srObj1.id; //Added by VISHNU C for BR 8310
                                
                                //Changes by VISHNU C ends here
                            }
                            for(WorkOrderResult wor: worList){
                                if(wor.workOrderbFOID == result.workOrderbFOID){
                                    wor.WorkDetailsResult.ServicedProductsWDResult.add(result);
                                }
                            }
                            
                            
                        }
                    }
                }
                
            }
            
            
            
            
        }
        
        
        
        return worList;
        
    }
    
    public Static Database.SaveResult[] CreateOrUpdateServices(List<SObject> sObjectList,String type)
    {
        Database.SaveResult[] sresults ;
        if(sObjectList != null && sObjectList.size()>0){                
            if(type == 'CREATE' ){
                sresults = Database.insert(sObjectList, false);
            }
            else if(type == 'UPDATE')
            {
                sresults = Database.update(sObjectList, false);
            }
        }
        return sresults;
    }
    public static Map<id,SVMXC__Installed_Product__c> IPMap = new Map<id,SVMXC__Installed_Product__c>();
      
    public Static Set<String> SESAIDset = new Set<string>();
    public Static set<String> TFirstNameset = new Set<String>();
    public Static set<String> TLastNameset = new Set<String>();
    public Static set<String> TEmailset = new Set<String>();
    
    public static  void getTechnicianFields(Technician tecu,ServiceProducts spObj){
        
        if(tecu != null ){
            
            if(tecu.SESAID != null && tecu.SESAID !='')
            {
                SESAIDset.add(tecu.SESAID );
                spObj.SESAID = tecu.SESAID ;
            }
            if(tecu.FirstName != null && tecu.FirstName !='')
            {
                TFirstNameset.add(tecu.FirstName );
                spObj.FirstName = tecu.FirstName ;
            }
            if(tecu.LastName != null && tecu.LastName !='')
            {
                TLastNameset.add(tecu.LastName );
                spObj.LastName = tecu.LastName ;
            }
            if(tecu.Email != null && tecu.Email !='')
            {
                TEmailset.add(tecu.Email );
                spObj.Email = tecu.Email ;
            }
            if(tecu.RoleName != null && tecu.RoleName !='')
            {               
                spObj.RoleName = tecu.RoleName ;
            }
            
            
            
        }
        
    }
    
    /** Yassine.B : updated on 19/02/15 **/
    webservice static WorkOrderSyncDetailsResult updateWorkOrderSyncDetails(WorkOrderSyncDetails request){
        WorkOrderSyncDetailsResult result = new WorkOrderSyncDetailsResult();
        if(request != null)
        {
            SVMXC__Service_Order__c wo = new SVMXC__Service_Order__c();
            WorkOrderGroup__c wog;
            MandatoryFields mf  = new MandatoryFields();
            if(request.Event != null && request.Event !='')
                mf = WorkOrderSyncDetailsMandataryCheck(request, request.Event);
            
            if(mf.isMFPass){
                
                wo=[select id,SynchronizationLog__c,BackOfficeSystem__c,FirstSynchronizationDate__c,LastSynchronizationDate__c ,RequestForRelease__c ,name, BackOfficeReference__c, CurrencyIsoCode, SVMXC__Order_Status__c, WorkOrderGroup__c, WorkOrderGroup__r.BackOfficeReference__c,Total_Estimated_Costs__c,IsLocked__c from SVMXC__Service_Order__c where id =:request.workOrderbFOId];
                if(request.workOrderGroupbFOID != null){
                    try{
                        wog=[select id, BackOfficeReference__c from WorkOrderGroup__c where id =:request.workOrderGroupbFOID];
                    }
                    catch(Exception ex){
                        System.debug('exception ');
                    }
                }else{
                    if(wo.WorkOrderGroup__c != null){
                        try{
                            wog=[select id, BackOfficeReference__c from WorkOrderGroup__c where id =:wo.WorkOrderGroup__c];
                        }
                        catch(Exception ex){
                            System.debug('exception ');
                        }
                    }
                }
                if(request.Event == 'WO.CREATION'){
                    
                    if(request.success){
                        wo.SynchronizationLog__c ='Work Order CREATED in Back Office';
                        wo.BackOfficeReference__c = request.workOrderBOReference;
                        wo.TECH_IsBoundToBackOffice__c = true;
                        wo.SVMXC__Order_Status__c = 'Unscheduled';
                        if(wog != null){
                            wog.BackOfficeReference__c = request.workOrderGroupBOReference;
                        }
                    }
                    else{
                        wo.SynchronizationLog__c ='Work Order NOT CREATED in Back Office due to : '+request.BOerrorMessage+ '';
                    }
                    if(wo.FirstSynchronizationDate__c==null){
                        wo.FirstSynchronizationDate__c = system.now();
                    }
                    wo.LastSynchronizationDate__c = system.now();
                    wo.RequestForRelease__c = null;//Added by VISHNU C for Q2 2016 Release
                    wo.TECH_WOBackOfficeRecordID__c = request.TECH_WOBackOfficeRecordID;
                    //wo.Back_Office_Bill__c = request.BackOfficeBillToValid;
                    
                    
                }
                else if(request.Event == 'WO.RELEASE'){
                    
                    if(request.success){
                        wo.SynchronizationLog__c ='Work Order RELEASED in Back Office';
                        
                        //Yassine.B 15/04/2015 - BEGIN - patch code move into the success=true case
                        Map<String,CS_BOFederationSystems__c> csmap =CS_BOFederationSystems__c.getAll();
                        
                        Set<String> OracleSystems = new Set<String>(); 
                        Set<String> SAPSystems = new Set<String>(); 
                        for(CS_BOFederationSystems__c obj:csmap.values()){
                            if(obj.System__c != null){
                                String BOSystem = String.valueOf(obj.System__c);
                                if(BOSystem.contains('Oracle'))
                                    
                                    
                                    OracleSystems.add(obj.SystemCode__c);
                                else if(BOSystem.contains('SAP'))
                                    
                                    
                                    SAPSystems.add(obj.SystemCode__c);
                            }
                            
                            
                            
                        }
                        
                        if(SAPSystems.contains(wo.BackOfficeSystem__c))
                        {
                            List<SVMXC__RMA_Shipment_Order__c> partsOrderList = [select id, Name,SVMXC__Order_Status__c, Last_Synchronization__c, Synchronization_log__c from SVMXC__RMA_Shipment_Order__c where SVMXC__Service_Order__c = : request.workOrderbFOId and SVMXC__Order_Status__c = 'Open'];
                            
                            
                            
                            
                            for(SVMXC__RMA_Shipment_Order__c obj: partsOrderList){                            
                                obj.SVMXC__Order_Status__c = 'Released';
                                
                                
                                obj.Last_Synchronization__c = system.now();
                                obj.RequestForRelease__c = null;
                                obj.Synchronization_log__c = 'Part Order RELEASED in Back Office';
                            }
                            
                            update partsOrderList;
                            
                        }
                        else if(OracleSystems.contains(wo.BackOfficeSystem__c)){
                            //Yassine.B 04/06/2015 - START - patch code DEF-DEF-7241
                            Schema.DescribeSObjectResult dSobjres = Schema.SObjectType.SVMXC__RMA_Shipment_Order__c; 
                            Map<String,Schema.RecordTypeInfo> PartOrderRecordTypeInfo = dSobjres.getRecordTypeInfosByName(); 
                            List<SVMXC__RMA_Shipment_Order__c> partsOrderList = [select id, Name,SVMXC__Order_Status__c, RecordTypeId from SVMXC__RMA_Shipment_Order__c where SVMXC__Service_Order__c = : request.workOrderbFOId and SVMXC__Order_Status__c = 'Open'];
                            List<SVMXC__RMA_Shipment_Order__c> partOrderListTarget = new List<SVMXC__RMA_Shipment_Order__c>();
                            for(SVMXC__RMA_Shipment_Order__c obj: partsOrderList){
                                if(wo.SVMXC__Order_Status__c =='Unscheduled' || wo.SVMXC__Order_Status__c =='Scheduled' || wo.SVMXC__Order_Status__c =='Customer Confirmed' || wo.SVMXC__Order_Status__c =='Acknowledge FSE' ||  wo.SVMXC__Order_Status__c =='WIP' ){
                                    if(obj.RecordTypeId == PartOrderRecordTypeInfo.get('Shipment').getRecordTypeId()){
                                        obj.SVMXC__Order_Status__c = 'Pending Release in BO';      
                                        obj.Last_Synchronization__c = system.now();
                                        obj.RequestForRelease__c = null;
                                        obj.Synchronization_log__c = 'Part Order PENDING RELEASE in Back Office';
                                        partOrderListTarget.add(obj);
                                    }
                                }else if(wo.SVMXC__Order_Status__c == 'Service Complete'){
                                    if(obj.RecordTypeId == PartOrderRecordTypeInfo.get('RMA').getRecordTypeId()){
                                        obj.SVMXC__Order_Status__c = 'Pending Release in BO';      
                                        obj.Last_Synchronization__c = system.now();
                                        obj.RequestForRelease__c = null;
                                        obj.Synchronization_log__c = 'Part Order PENDING RELEASE in Back Office';   
                                        partOrderListTarget.add(obj);
                                    }
                                }
                                
                            }
                            if(partOrderListTarget.size() > 0){
                                update partOrderListTarget;
                            }
                            //Yassine.B 04/06/2015 - END - patch code DEF-DEF-7241
                        }
                        //Yassine.B 15/04/2015 - END - patch code move into the success=true case
                        
                    }
                    else{
                        wo.SynchronizationLog__c ='Work Order NOT RELEASED due to : '+request.BOerrorMessage+ '';
                    }
                    if(wo.FirstSynchronizationDate__c==null){
                        wo.FirstSynchronizationDate__c = system.now();
                    }
                    wo.LastSynchronizationDate__c = system.now();
                    wo.RequestForRelease__c = null;//Added by VISHNU C for Q2 2016 Release
                    //wo.Back_Office_Bill__c = request.BackOfficeBillToValid;
                    
                    
                }
                else if(request.Event == 'WO.SYNC'){
                    if(request.success !=null){
                        if(request.success){
                            //if(request.BackOfficeBillToValid != null){
                            //    wo.Back_Office_Bill__c = request.BackOfficeBillToValid;
                            // }
                            
                            wo.SynchronizationLog__c = 'Work Order SYNCED with Back Office';
                        }
                        else{
                            wo.SynchronizationLog__c ='Work Order NOT SYNCED with Back Office due to : '+request.BOerrorMessage+ '';
                        }
                    }
                    wo.LastSynchronizationDate__c = system.now();
                    wo.RequestForRelease__c = null;//Added by VISHNU C for Q2 2016 Release
                    // BR-8046 updated on 21 sep 2015 added in sync
                    if(request.totalEstimatedCosts != null && request.totalEstimatedCosts !=''){
                        wo.Total_Estimated_Costs__c =  Decimal.valueOf(request.totalEstimatedCosts);
                        if(request.currencyIsoCode != null && request.currencyIsoCode != ''){
                            wo.CurrencyIsoCode = request.currencyIsoCode;
                        }
                    }
                    if(request.IsLocked != null && request.IsLocked == true){
                        wo.IsLocked__c = request.IsLocked ;
                    }
                    
                }
                //Yassine Bouargoub 27/05/2015 - DEF-6925 - START
                if(request.BackOfficeBillToValid != null){
                    wo.Back_Office_Bill__c = request.BackOfficeBillToValid;
                }
                //Yassine Bouargoub 27/05/2015 - DEF-6925 - END
                
                
                try{
                    System.debug('\n CLog : '+wo);
                    System.debug('\n CLog : '+wog);
                    update wo;
                    update wog;
                    result.success =true;
                    result.workOrderbFOId = wo.Id; 
                    result.workOrderBOReference = wo.BackOfficeReference__c;
                    System.debug('\n CLog : '+wo);
                }
                catch(exception ex){
                    result.success = false;
                    result.errorMessage = ex.getMessage();
                    result.workOrderBOReference = wo.BackOfficeReference__c;
                }
                
            }
            else{
                result.success = false;
                result.errorMessage = 'Please send Mandatory Fields '+mf.fields;
            }
        }
        else{
            result.success = false;
            result.errorMessage = 'Please send the WorkOrderSyncDetails parameter';
            
        }
        
        
        System.debug('\n CLog : '+result);
        return result;
        
    }
    
    
    public class MandatoryFields{
        public Boolean isMFPass{get;set;}
        public String fields{get;set;}
        
    }
    
    public static MandatoryFields CreateMandataryCheck(WorkOrder request){
        MandatoryFields mf = new MandatoryFields();
        String mandatoryFields ='';                
        Boolean mandatory = true; 
        if(request.installedAtAccountbFOID != null ){
        }
        else{
            mandatory = false;
            mandatoryFields += mandatoryFields + ' installedAtAccountbFOID';
        }
 
        if(request.WOBackOfficeReference != null ){
        }
        else{
            mandatory = false;
            mandatoryFields += mandatoryFields + ' WOBackOfficeReference';
        }
        if(request.countryOfBackOffice != null && request.countryOfBackOffice != ''){
        }
        else{
            mandatory = false;
            mandatoryFields += mandatoryFields + ' countryOfBackOffice';
        }
        if(request.backOfficeSystem != null && request.backOfficeSystem != ''){
        }
        else{
            mandatory = false;
            mandatoryFields += mandatoryFields + ' backOfficeSystem';
        }
        
        
        mf.isMFPass = mandatory;
        mf.fields = mandatoryFields;
        return mf;
    }
    public static MandatoryFields WorkOrderSyncDetailsMandataryCheck(WorkOrderSyncDetails request, String event){
        MandatoryFields mf = new MandatoryFields();
        
        String mandatoryFields ='';                
        Boolean mandatory = true;   
        
        if(request.workOrderbFOId != null ){
        }
        else{
            mandatory = false;
            mandatoryFields += mandatoryFields + 'workOrderbFOId';
        }
        //if(request.success != null && request.success )
        {
            
            if(event == 'WO.CREATION' && request.success != null && request.success &&  (request.workOrderBOReference == null || request.workOrderBOReference =='')){
                
                mandatory = false;
                mandatoryFields += mandatoryFields + 'workOrderBOReference';
            }
            
            /*
if(request.workOrderGroupBOReference != null && request.workOrderGroupBOReference !=''){
}
else{
mandatory = false;
mandatoryFields += mandatoryFields + 'workOrderGroupBOReference';
}*/
        }
        
        if(request.Event != null && request.Event !=''){
        }
        else{
            mandatory = false;
            mandatoryFields += mandatoryFields + 'Event';
        }
        /*
if(request.success != null){
}
else{
mandatory = false;
mandatoryFields += mandatoryFields + 'success';
}*/
        mf.isMFPass = mandatory;
        mf.fields = mandatoryFields;
        return mf;
        
    }
       
   
    public Static List<ServiceProductsWD>  getServiceProducts( Id woid ,Id rtid){
        List<ServiceProductsWD> splist = new List<ServiceProductsWD>();
        Set<id> ipidSet = new Set<id>();
        Set<id> fsridSet = new Set<id>();
        for(SVMXC__Service_Order_Line__c  wd:[select id, SVMXC__Serial_Number__c,SVMXC__Group_Member__c from SVMXC__Service_Order_Line__c where SVMXC__Service_Order__c =:woid and RecordTypeId =:rtid ]){            
            if(wd.SVMXC__Serial_Number__c != null ){            
                ipidSet.add(wd.SVMXC__Serial_Number__c);
            }
            if(wd.SVMXC__Group_Member__c != null ){         
                fsridSet.add(wd.SVMXC__Group_Member__c);
            }            
        }
        prepareIPMap(ipidSet);
        prepareTechnicians(fsridSet);
        
        for(SVMXC__Service_Order_Line__c  wd:[select id,name,SVMXC__Service_Order__c, SVMXC__Serial_Number__c,SVMXC__Group_Member__c ,SVMXC__Work_Description__c,SVMXC__Line_Type__c,MIP_Flag__c,Shipped_Serial_Number__c,SplitFromWDBORef__c,SVMXC__Product__c,RecordType.Name from SVMXC__Service_Order_Line__c where SVMXC__Service_Order__c =:woid and RecordTypeId =:rtid ]){  
            ServiceProductsWD sp = new ServiceProductsWD();
            sp.workOrderbFOID = wd.SVMXC__Service_Order__c;
            sp.workDetailbFOID = wd.id;
            sp.workDetailbFONumber = wd.name;
            if(wd.SVMXC__Group_Member__c != null)
            {
                if(TechnicianMap.containskey(wd.SVMXC__Group_Member__c))
                {
                    sp.FSR = TechnicianMap.get(wd.SVMXC__Group_Member__c);
                }
            }
            if(wd.SVMXC__Serial_Number__c != null)
            {
                if(IPUnitMap.containskey(wd.SVMXC__Serial_Number__c))
                {
                    sp.InstalledProduct = IPUnitMap.get(wd.SVMXC__Serial_Number__c);
                }
                
            }
            sp.workDescription = wd.SVMXC__Work_Description__c;
            sp.workDetailRecordType = wd.RecordType.Name;//BR-9850
            sp.splitfromWDBORef = wd.SplitFromWDBORef__c;//BR-9850
            sp.mipFlag = wd.MIP_Flag__c;//BR-9850
            sp.shippedSerialNumber = wd.Shipped_Serial_Number__c;//BR-9850
            sp.productbFOID = wd.SVMXC__Product__c;//BR-9850    
            
            splist.add(sp);
            
        }
        
        
        
        return splist;
        
    }
    webservice Static  WorkOrdersTechCloseResult bulkGetTechCloseWorkOrders( String backOfficeSystem ){
        
        WorkOrdersTechCloseResult response = new WorkOrdersTechCloseResult();
        Map<id,WorkOrder> WOMap=new Map<id,WorkOrder>();
        List<SVMXC__Service_Order__c>  wos = new List<SVMXC__Service_Order__c>();
        
        for(RecordType rtobj: [SELECT DeveloperName,Id,Name,SobjectType FROM RecordType where SobjectType ='SVMXC__Service_Order_Line__c']){
            woDetailsMap.put(rtobj.DeveloperName , rtobj);
        }
        RecordType PlannedRt =woDetailsMap.get('Estimate');    
        RecordType ServiceProductRt =woDetailsMap.get('Products_Serviced');
        RecordType PartsRt =woDetailsMap.get('Parts');
        RecordType ActualsRt =woDetailsMap.get('UsageConsumption');
        ID Planned = PlannedRt.id;
        ID serviceproduct = ServiceProductRt.id;
        ID Parts = PartsRt.id;
        ID Actuals = ActualsRt.id;
        Map<id,SVMXC__Service_Order__c> workorderMap = new Map<id,SVMXC__Service_Order__c>();
        Map<id,List<SVMXC__Service_Order_Line__c>> woidlistServiceListMap = new Map<id,List<SVMXC__Service_Order_Line__c>>();
        Map<id,List<SVMXC__Service_Order_Line__c>> woidlistCurrencyServiceListMap = new Map<id,List<SVMXC__Service_Order_Line__c>>();
        Set<id> ipidSet = new Set<id>();
        set<id> fsridSet = new Set<id>();
        Map<id,List<SVMXC__RMA_Shipment_Order__c>> woidporderListmap = new Map<id,List<SVMXC__RMA_Shipment_Order__c>>();
        Map<id,List<SVMXC__RMA_Shipment_Line__c>> porderLineMap = new Map<id,List<SVMXC__RMA_Shipment_Line__c>>();
        
        wos = [select ID,Name,SVMXC__Company__c,SVMXC__Contact__c,CustomerRequestedDate__c,CustomerRequestedTime__c,BusinessUnit__c, Service_Business_Unit__c,
               WOPriority__c,SVMXC__Scheduled_Date_Time__c,WorkOrderGroup__c,WorkOrderGroup__r.BackOfficeReference__c,WorkOrderName__c,
               Comments_to_Planner__c,CountryOfBackOffice__c,BackOfficeSystem__c,SVMXC__Order_Status__c,SubStatus__c,Work_Order_Category__c,
               SVMXC__Order_Type__c,WorkOrderSubType__c,IsBillable__c,SVMXC__Billing_Type__c,SVMXC__Group_Member__c,OwnerID,Parent_Work_Order__c,
               Parent_Work_Order__r.BackOfficeReference__c,Parent_Work_Order__r.TECH_WOBackOfficeRecordID__c,SoldToAccount__c,SVMXC__Component__c,SVMXC__Product__c,Project__c,SVMXC__Service_Contract__c,ServiceLine__c,SVMXC__Closed_On__c,
               BackOfficeReference__c,SVMXC__Company__r.SEAccountID__c,SVMXC__Company__r.Name,SVMXC__Company__r.AccountLocalName__c,SVMXC__Company__r.Street__c,
               SVMXC__Company__r.StreetLocalLang__c,SVMXC__Company__r.AdditionalAddress__c,SVMXC__Company__r.LocalAdditionalAddress__c,
               SVMXC__Company__r.ZipCode__c,SVMXC__Company__r.City__c,SVMXC__Company__r.LocalCity__c,SVMXC__Company__r.Country__r.CountryCode__c,
               SVMXC__Company__r.StateProvince__r.Name, SVMXC__Company__r.StateProvince__r.StateProvinceCode__c,SVMXC__Company__r.RecordType.Name, SVMXC__Contact__r.SEContactID__c,SVMXC__Contact__r.FirstName,SVMXC__Contact__r.LocalFirstName__c,
               SVMXC__Contact__r.MidInit__c,SVMXC__Contact__r.LocalMidInit__c,SVMXC__Contact__r.LastName,SVMXC__Contact__r.LocalLastName__c,
               SVMXC__Contact__r.Email,SVMXC__Contact__r.MobilePhone,SVMXC__Contact__r.WorkPhone__c,SVMXC__SLA_Terms__c, SVMXC__SLA_Terms__r.Name,
               SVMXC__Group_Member__r.SVMXC__Role__c,SVMXC__Group_Member__r.SVMXC__Salesforce_User__r.FirstName,SVMXC__Preferred_Technician__c,
               SVMXC__Group_Member__r.SVMXC__Salesforce_User__r.LastName,SVMXC__Group_Member__r.SVMXC__Salesforce_User__r.Email,SVMXC__Group_Member__r.SESAID__c,
               SVMXC__Group_Member__r.ThirdPartyContact__r.FirstName,SVMXC__Group_Member__r.ThirdPartyContact__r.LastName,
               SVMXC__Group_Member__r.ThirdPartyContact__r.Email,SVMXC__Group_Member__r.Business_Unit__c,SVMXC__Group_Member__r.Level__c, SVMXC__Component__r.GoldenAssetId__c,SVMXC__Component__r.Name,
               SVMXC__Component__r.SVMXC__Company__r.SEAccountID__c,SVMXC__Component__r.SVMXC__Serial_Lot_Number__c,SVMXC__Component__r.SchneiderCommercialReference__c,
               SVMXC__Component__r.SVMXC__Company__r.Country__r.CountryCode__c,SVMXC__Component__r.SVMXC__Company__r.Name,SVMXC__Component__r.SVMXC__Company__r.AccountLocalName__c,
               SVMXC__Component__r.SVMXC__Company__r.Street__c,SVMXC__Component__r.SVMXC__Company__r.StreetLocalLang__c,SVMXC__Component__r.SVMXC__Company__r.AdditionalAddress__c,
               SVMXC__Component__r.SVMXC__Company__r.LocalAdditionalAddress__c,SVMXC__Component__r.SVMXC__Company__r.ZipCode__c,SVMXC__Component__r.SVMXC__Company__r.City__c,
               SVMXC__Component__r.SVMXC__Company__r.LocalCity__c, SVMXC__Component__r.SVMXC__Company__r.RecordType.Name,
               SVMXC__Component__r.SVMXC__Company__r.StateProvince__r.StateProvinceCode__c,SVMXC__Service_Contract__r.BackOfficeReference__c,ServiceLine__r.BackOfficeReference__c,
               Sales_Order_Number__c,salesOrderLineNumber__c,Customer_Reference_Number__c,PONumber__c,SVMXC__Primary_Territory__r.Name,CustomerReferenceNumber__c,SVMXC__Case__c,SVMXC__Case__r.CaseNumber,SVMXC__Component__r.RecordType.Name,PlannedServiceDuration__c,
               EstimatedExpenseCost__c, Estimated_Labor_Cost__c, EstimatedMaterialCost__c, QuotationNumber__c,CurrencyIsoCode,SVMXC__Problem_Description__c, SVMXC__Primary_Territory__r.Plant__r.Name,TECH_WOBackOfficeRecordID__c,TECH_FOLastUpdate_Timestamp__c,LastModifiedDate,Trigger_Billing__c  from SVMXC__Service_Order__c where BackOfficeSystem__c =:backOfficeSystem and  TECH_TechnicaClosure__c='To Be Processed' and SVMXC__Order_Status__c ='Service Validated' limit 150];
        
        List<SVMXC__RMA_Shipment_Line__c> partsOrderLineList = new List<SVMXC__RMA_Shipment_Line__c>();
        
        if(wos != null && wos.size()>0){                
            workorderMap.putAll(wos); 
            for(SVMXC__Service_Order_Line__c sl:[select Level_Required__c ,id, Name,  RecordTypeId ,RecordType.Name,SVMXC__Service_Order__c,SVMXC__Line_Type__c ,SVMXC__Activity_Type__c,HourType__c,SVMXC__Serial_Number__c,SVMXC__Group_Member__c,SVMXC__Expense_Type__c,SVMXC__Date_Received__c,IsBillable__c,SVMXC__Work_Description__c , SVMXC__Start_Date_and_Time__c ,SVMXC__End_Date_and_Time__c ,TotalTime__c, SVMXC__Work_Detail__c, ExpenseQuantity__c, LinePricePerUnit__c, 
                                                 CurrencyIsoCode,PartsOrderLine__c,PartsOrderLine__r.TECH_BOPartsOrderLineRecordId__c,PartsOrderLine__r.SKU__c ,PartsOrderLine__r.BOMaterialReference__c,
                                                 PartsOrderLine__r.SVMXC__Product__r.Name,PartsOrderLine__r.SVMXC__Expected_Quantity2__c,ShippedQuantity_del__c,InstalledQuantity__c,FailedQuantity__c,CustomerTotalTime__c,CustomerEndDateAndTime__c,
                                                 CustomerStartDateAndTime__c,CustomerHourType__c,
                                                 ReturnedQuantity__c,Part_Order_Line_Type__c,PartsOrderLine__r.Generic_reference__c,PartsOrderLine__r.Free_text_reference__c,Left_Onsite_Qty__c,Not_Returned_Reason__c from SVMXC__Service_Order_Line__c where SVMXC__Service_Order__c =:workorderMap.keyset() and ( RecordTypeId =:Planned OR RecordTypeId =:serviceproduct OR RecordTypeId =:Parts OR RecordTypeId =:Actuals)]) 
            {
                
                if(woidlistServiceListMap.containskey(sl.SVMXC__Service_Order__c)){                         
                    woidlistServiceListMap.get(sl.SVMXC__Service_Order__c).add(sl);
                }
                else{
                    woidlistServiceListMap.put(sl.SVMXC__Service_Order__c, new List<SVMXC__Service_Order_Line__c>{sl});
                }
                if(sl.SVMXC__Serial_Number__c != null ){            
                    ipidSet.add(sl.SVMXC__Serial_Number__c);
                }
                if(sl.SVMXC__Group_Member__c != null ){         
                    fsridSet.add(sl.SVMXC__Group_Member__c);
                } 
            }
            for(SVMXC__Service_Order_Line__c sl:[select id,SVMXC__Service_Order__c, convertCurrency(LinePricePerUnit__c) from SVMXC__Service_Order_Line__c  where SVMXC__Service_Order__c =:workorderMap.keyset() and ( RecordTypeId =:Planned OR RecordTypeId =:serviceproduct OR RecordTypeId =:Parts OR RecordTypeId =:Actuals)]) 
            {
                
                if(woidlistCurrencyServiceListMap.containskey(sl.SVMXC__Service_Order__c)){                         
                    woidlistCurrencyServiceListMap.get(sl.SVMXC__Service_Order__c).add(sl);
                }
                else{
                    woidlistCurrencyServiceListMap.put(sl.SVMXC__Service_Order__c, new List<SVMXC__Service_Order_Line__c>{sl});
                }
                
            } 
            Set<id> poidset = new set<id>();
            List<SVMXC__RMA_Shipment_Order__c> partsOrderList = [select id,SVMXC__Service_Order__c, Name,SVMXC__Order_Status__c,Service_level__c,SVMXC__Shipping_Receiving_Notes__c,Freight_terms__c,Parts_SLA_terms__c,On_site_SLA_terms__c,SVMXC__Contact__c,SVMXC__Contact__r.SEContactID__c,SVMXC__Contact__r.FirstName,SVMXC__Contact__r.LocalFirstName__c,SVMXC__Contact__r.MidInit__c,
                                                                 SVMXC__Contact__r.LocalMidInit__c,SVMXC__Contact__r.LastName,SVMXC__Contact__r.LocalLastName__c,SVMXC__Contact__r.Email,SVMXC__Contact__r.MobilePhone,SVMXC__Contact__r.WorkPhone__c,
                                                                 Ship_to__r.SEAccountID__c,Ship_to__r.Name,Ship_to__r.AccountLocalName__c,Ship_to__r.Street__c,Ship_to__r.StreetLocalLang__c,Ship_to__r.AdditionalAddress__c,Ship_to__r.LocalAdditionalAddress__c,Ship_to__r.ZipCode__c,Ship_to__r.City__c,Ship_to__r.LocalCity__c,Ship_to__r.Country__r.CountryCode__c,Ship_to__r.StateProvince__c,Ship_to__c,
                                                                 Ship_to__r.RecordType.Name,Ship_to__r.StateProvince__r.StateProvinceCode__c from SVMXC__RMA_Shipment_Order__c where SVMXC__Service_Order__c  =:workorderMap.keyset() AND SVMXC__Order_Status__c='Open'];
            if(partsOrderList != null && partsOrderList.size()>0){
                for(SVMXC__RMA_Shipment_Order__c poobj:partsOrderList){
                    poidset.add(poobj.id);
                    if(woidporderListmap.containskey(poobj.SVMXC__Service_Order__c)){
                        woidporderListmap.get(poobj.SVMXC__Service_Order__c).add(poobj);
                    }
                    else{
                        woidporderListmap.put(poobj.SVMXC__Service_Order__c, new List<SVMXC__RMA_Shipment_Order__c>{poobj});
                        
                    }
                }
                if(poidset != null && poidset.size()>0){
                    
                    partsOrderLineList = [select  id,Name,SVMXC__RMA_Shipment_Order__c,SVMXC__Line_Type__c,Plant_Name__r.name,SVMXC__Expected_Quantity2__c,UnitofMeasure__c,RequestedDate__c,RecordType.Name,
                                          Calculated_plant__r.name,Spare_part_category__c,SVMXC__Expected_Ship_Date__c,Lead_Date__c,Free_text_reference__c,Generic_reference__c,Shipment_mode__c,SVMXC__Product__c,SKU__c,
                                          BOMaterialReference__c,createdby.FederationIdentifier,createdby.FirstName,createdby.LastName,Available_stock__c, Vendor__c from SVMXC__RMA_Shipment_Line__c where SVMXC__RMA_Shipment_Order__c in : poidset];
                    
                }
                for(SVMXC__RMA_Shipment_Line__c line: partsOrderLineList){
                    if(porderLineMap.containskey(line.SVMXC__RMA_Shipment_Order__c)){
                        
                        porderLineMap.get(line.SVMXC__RMA_Shipment_Order__c).add(line);
                    }
                    else{
                        porderLineMap.put(line.SVMXC__RMA_Shipment_Order__c, new List<SVMXC__RMA_Shipment_Line__c>{line});
                    }
                }
            }
            
        }
        prepareIPMap(ipidSet);
        prepareTechnicians(fsridSet);   
        
        for(SVMXC__Service_Order__c wo:wos){
            
            WorkOrder wunit=populateAndGetWorkOrderFields(wo);
            WorkDetail wd = new WorkDetail();
            if(woidlistServiceListMap.containskey(wo.id))
            {
                wd= getWorkDetails(woidlistServiceListMap.get(wo.id),woidlistCurrencyServiceListMap.get(wo.id));
            }
            wunit.WorkDetail = wd;              
            PartsOrders porder = new PartsOrders();
            WOMap.put(wo.id,wunit);
            
        }
        if(WOMap != null && WOMap.size()>0)
        {
            
            response.workorders = new List<WorkOrder>();
            response.workorders =  WOMap.values();
            response.success = true;
            
            
        }
        else{
            
            
            response.success = false;
            response.errorMessage = 'No records found.';
            
        }
        return response;
    }
    webservice Static   List<WorkOrderSyncDetailsResult>  bulkUpdateTechCloseWorkOrders( List<WorkOrderSyncDetails> WorkOrderSyncDetails ){
        List<WorkOrderSyncDetailsResult> results = new List<WorkOrderSyncDetailsResult>();
        List<WorkOrderSyncDetails> toProcess = new List<WorkOrderSyncDetails>();
        
        Set<id> workorderidset = new Set<id>();
        
        
        for(WorkOrderSyncDetails wosd: WorkOrderSyncDetails){
            if(wosd.success != null && wosd.workOrderbFOId != null ){
                toProcess.add(wosd);
                workorderidset.add(wosd.workOrderbFOId );
            }
            else{
                WorkOrderSyncDetailsResult wrerror = new WorkOrderSyncDetailsResult();
                wrerror.workOrderbFOId = wosd.workOrderbFOId;
                wrerror.workOrderBOReference = wosd.workOrderBOReference;
                wrerror.success = false;
                wrerror.errorMessage = ' Success and workOrderbFOId are mandatory ' ;
                results.add(wrerror);
            }
            
        }
        if(workorderidset!= null && workorderidset.size()>0)
        {
            Map<id, SVMXC__Service_Order__c> woMap = new Map<id,SVMXC__Service_Order__c>();
            List<SVMXC__Service_Order__c> sorder = new List<SVMXC__Service_Order__c>();
            List<SVMXC__Service_Order__c> worders =[select id, name,SynchronizationLog__c,BackOfficeReference__c,SVMXC__Order_Status__c,TECH_TechnicaClosure__c,RequestForRelease__c,LastSynchronizationDate__c from SVMXC__Service_Order__c where id in :workorderidset ];
            if(worders != null && worders.size()>0)
                woMap.putAll(worders);
            for(WorkOrderSyncDetails wosd: toProcess){
                
                SVMXC__Service_Order__c wo = woMap.get(wosd.workOrderbFOId);
                
                if(wosd.success){
                    wo.SynchronizationLog__c = 'Work Order TECHNICALLY CLOSED in Back Office';
                    wo.TECH_TechnicaClosure__c ='Processed';
                    wo.LastSynchronizationDate__c = system.now();
                    wo.RequestForRelease__c = null;//Added by VISHNU C for Q2 2016 Release
                }
                else{
                    
                    
                    wo.SynchronizationLog__c = 'Work Order NOT TECHNICALLY CLOSED in Back Office due to  ['+wosd.BOerrorMessage+']';
                    wo.TECH_TechnicaClosure__c ='Failed';
                    wo.LastSynchronizationDate__c = system.now();
                    wo.RequestForRelease__c = null;//Added by VISHNU C for Q2 2016 Release
                    
                }
                
                
                
                sorder.add(wo);
                
                
                
                
                
                
                
                
            }
            if( sorder != null && sorder.size()>0 ){
                Database.SaveResult[] worder_results  = CreateOrUpdateServices((List<Sobject>)worders,'UPDATE');
                for(Integer k=0;k<worder_results.size();k++ )
                {
                    Database.SaveResult sr = worder_results[k];
                    WorkOrderSyncDetailsResult wr = new WorkOrderSyncDetailsResult();
                    wr.workOrderbFOId = worders[k].id;
                    wr.workOrderBOReference =worders[k].BackOfficeReference__c;
                    
                    if(!sr.isSuccess())
                    {
                        wr.success = false;
                        String Message ='';
                        for(Database.Error err : sr.getErrors()) {
                            Message= ' '+err.getFields()+' Error : '+err.getMessage();                              
                        }                            
                        wr.errorMessage = Message;
                    }
                    else{
                        wr.success = true;              
                    }
                    
                    results.add(wr);
                }
                
            }
            
            
            
        }
        
        return results;
        
        
    }
    webservice Static   List<WorkOrderSyncDetailsResult>  bulkCloseWorkOrders( List<ID> workOrderID ){
        
        List<WorkOrderSyncDetailsResult> results = new List<WorkOrderSyncDetailsResult>();
        
        List<SVMXC__Service_Order__c> worders =[select id, name,SynchronizationLog__c,BackOfficeReference__c,SVMXC__Order_Status__c,LastSynchronizationDate__c,RequestForRelease__c from SVMXC__Service_Order__c where id in :workOrderID ];
        
        Map<id, SVMXC__Service_Order__c> woMap = new Map<id,SVMXC__Service_Order__c>();
        
        if( worders != null && worders.size()>0 ){
            woMap.putAll(worders);
            for(SVMXC__Service_Order__c wo:worders){
                wo.SynchronizationLog__c = 'Work Order CLOSED in Back Office';
                wo.SVMXC__Order_Status__c ='Closed';
                wo.LastSynchronizationDate__c = system.now();
                wo.RequestForRelease__c = null;//Added by VISHNU C for Q2 2016 Release
            }
            Database.SaveResult[] worder_results  = CreateOrUpdateServices((List<Sobject>)worders,'UPDATE');
            for(Integer k=0;k<worder_results.size();k++ )
            {
                Database.SaveResult sr = worder_results[k];
                WorkOrderSyncDetailsResult wr = new WorkOrderSyncDetailsResult();
                wr.workOrderbFOId = worders[k].id;
                wr.workOrderBOReference =worders[k].BackOfficeReference__c;
                
                if(!sr.isSuccess())
                {
                    wr.success = false;
                    String ErroMessage;
                    for(Database.Error err : sr.getErrors()) {
                        ErroMessage= ' '+err.getFields()+' : '+err.getMessage();                              
                    }
                    wr.errorMessage = ErroMessage;
                }
                else{
                    wr.success = true;              
                }
                
                results.add(wr);
            }
        }
        return results;
        
        
    }
    public Static   WorkDetail  getWorkDetails( List<SVMXC__Service_Order_Line__c> serviceLines,List<SVMXC__Service_Order_Line__c> ccurrencyserviceLines ){
        System.debug('WORK DETAILS'+serviceLines);
        WorkDetail wDetail=new WorkDetail();
        RecordType PlannedRt =woDetailsMap.get('Estimate');        
        RecordType ServiceProductRt =woDetailsMap.get('Products_Serviced');
        RecordType PartsRt =woDetailsMap.get('Parts');
        RecordType ActualsRt =woDetailsMap.get('UsageConsumption');
        ID Planned = PlannedRt.id;       
        ID serviceproduct = ServiceProductRt.id;
        ID Parts = PartsRt.id;
        ID Actuals = ActualsRt.id;
        
        
        List<TimeWD> TimeWDs = new List<TimeWD>();
        List<ExpenseWD> ExpenseWDs  = new List<ExpenseWD>();  
        List<PartsWD> PartsWDs  = new List<PartsWD>();  
        List<ServiceProductsWD> ServiceProductsWDs = new List<ServiceProductsWD>();
        Map<id,SVMXC__Service_Order_Line__c> currencyMap = new Map<id,SVMXC__Service_Order_Line__c>();  
        currencyMap.putAll(ccurrencyserviceLines);   
        
        for(SVMXC__Service_Order_Line__c  wd:serviceLines)
        {    
            if(wd.RecordTypeId == Planned || wd.RecordTypeId == Actuals){
                
                if(wd.SVMXC__Line_Type__c == 'Labor')
                {
                    TimeWD t = new TimeWD();
                    t.workOrderbFOID = wd.SVMXC__Service_Order__c;
                    t.workDetailbFOID = wd.id;
                    //t.lineType = wd.SVMXC__Line_Type__c;
                    if(wd.RecordTypeId == Planned)
                        t.lineType = System.Label.CLAPR15SRV84;
                    if(wd.RecordTypeId == Actuals)
                        t.lineType = 'Actuals';
                    t.activityType = wd.SVMXC__Activity_Type__c;
                    t.hourType = wd.HourType__c;
                    if(wd.SVMXC__Group_Member__c != null)
                    {
                        if(TechnicianMap.containskey(wd.SVMXC__Group_Member__c))
                        {
                            t.FSR = TechnicianMap.get(wd.SVMXC__Group_Member__c);
                        }
                    }
                    
                    t.isBillable = wd.IsBillable__c;
                    //t.startDateTime = String.valueOf(wd.SVMXC__Start_Date_and_Time__c);
                    if(wd.SVMXC__Start_Date_and_Time__c != null)
                        t.startDateTime = (wd.SVMXC__Start_Date_and_Time__c).formatGMT('yyyy-MM-dd HH:mm:ss');
                    
                    
                    
                    //t.endDateTime = String.valueOf(wd.SVMXC__End_Date_and_Time__c);
                    if(wd.SVMXC__End_Date_and_Time__c != null)
                        t.endDateTime =  (wd.SVMXC__End_Date_and_Time__c).formatGMT('yyyy-MM-dd HH:mm:ss');
                    
                    
                    
                    t.totalTime = wd.TotalTime__c;
                    //t.totalTime = wd.TotalTime__c;
                    t.workDescription = wd.SVMXC__Work_Description__c;
                    t.workDetailPlannedbFOID = wd.SVMXC__Work_Detail__c;
                    t.workDetailbFONumber = wd.Name;
                    t.levelRequired = wd.Level_Required__c;// May Release 2015
                    //Added BY anand for BR-9426
                    t.customerHourType=wd.CustomerHourType__c;
                    
                    if(wd.CustomerStartDateAndTime__c!=null)
                        t.customerStartEndTime=(wd.CustomerStartDateAndTime__c).formatGMT('yyyy-MM-dd HH:mm:ss');
                    
                    if(wd.CustomerEndDateAndTime__c!=null)
                        t.customerEndDateTime=(wd.CustomerEndDateAndTime__c).formatGMT('yyyy-MM-dd HH:mm:ss');
                    
                    t.customerTotalTime=wd.CustomerTotalTime__c;
                    TimeWDs.add(t);
                    
                    
                }
                else if(wd.SVMXC__Line_Type__c == 'Expenses'){
                    
                    ExpenseWD e = new ExpenseWD();
                    e.workOrderbFOID = wd.SVMXC__Service_Order__c;
                    e.workDetailbFOID = wd.id;
                    if(wd.RecordTypeId == Planned)
                        e.lineType = System.Label.CLAPR15SRV84;
                    if(wd.RecordTypeId == Actuals)
                        e.lineType = 'Actuals';
                    e.expenseType = wd.SVMXC__Expense_Type__c;
                    e.expenseDate = String.valueOf(wd.SVMXC__Date_Received__c);
                    if(wd.SVMXC__Group_Member__c != null)
                    {
                        if(TechnicianMap.containskey(wd.SVMXC__Group_Member__c))
                        {
                            e.FSR = TechnicianMap.get(wd.SVMXC__Group_Member__c);
                        }
                    }
                    e.isBillable = wd.IsBillable__c;
                    //e.billingType = wd.
                    e.expenseQuantity = wd.ExpenseQuantity__c;
                    e.linePricePerUnit = wd.LinePricePerUnit__c;
                    e.currencyIsoCode = wd.CurrencyIsoCode;
                    e.workDescription = wd.SVMXC__Work_Description__c;
                    e.workDetailPlannedbFOID = wd.SVMXC__Work_Detail__c;
                    if(currencyMap.containskey(wd.id))
                        e.linePricePerUnitCorporateCurrency = currencyMap.get(wd.id).LinePricePerUnit__c;
                    e.workDetailbFONumber = wd.Name;
                    e.levelRequired = wd.Level_Required__c;// May Release 2015
                    ExpenseWDs.add(e);
                    
                    
                }
                
            }
            if(wd.RecordTypeId == Parts &&  wd.PartsOrderLine__c != null){
                
                PartsWD p = new PartsWD();
                p.workOrderbFOID = wd.SVMXC__Service_Order__c;
                p.workDetailbFOID = wd.id;
                p.workDetailbFONumber = wd.Name;
                p.partOrderLinebFOID  = wd.PartsOrderLine__c;
                p.TECH_BOPartsOrderLineRecordId = wd.PartsOrderLine__r.TECH_BOPartsOrderLineRecordId__c;
                p.FOSKUReference = wd.PartsOrderLine__r.SKU__c;
                p.BOMaterialReference =  wd.PartsOrderLine__r.BOMaterialReference__c;
                p.sparePartbFOID = wd.PartsOrderLine__r.SVMXC__Product__c; // Yassine.B 02/04/2015 fix (name -> Id)
                if(wd.SVMXC__Group_Member__c != null)
                {
                    if(TechnicianMap.containskey(wd.SVMXC__Group_Member__c))
                    {
                        p.FSR = TechnicianMap.get(wd.SVMXC__Group_Member__c);
                    }
                }
                p.isBillable = wd.IsBillable__c;
                //p.expectedQuantity
                p.shippedQuantity = wd.ShippedQuantity_del__c;
                p.installedQuantity = wd.InstalledQuantity__c;
                p.returnedQuantity = wd.ReturnedQuantity__c;
                p.failedQuantity = wd.FailedQuantity__c;
                p.workDescription = wd.SVMXC__Work_Description__c;
                p.expectedQuantity = wd.PartsOrderLine__r.SVMXC__Expected_Quantity2__c;
                p.levelRequired = wd.Level_Required__c;// May Release 2015
                p.partOrderLineType = wd.Part_Order_Line_Type__c;
                p.genericReference = wd.PartsOrderLine__r.Generic_reference__c;
                p.freeTextReference =  wd.PartsOrderLine__r.Free_text_reference__c;
                p.leftOnsiteQuantity = wd.Left_Onsite_Qty__c;
                p.notReturnReason = wd.Not_Returned_Reason__c;
                PartsWDs.add(p);
                
            }
            
            else if(wd.RecordTypeId == serviceproduct){
                ServiceProductsWD sp = new ServiceProductsWD();
                sp.workOrderbFOID = wd.SVMXC__Service_Order__c;
                sp.workDetailbFOID = wd.id;
                sp.workDetailbFONumber = wd.Name;
                if(wd.SVMXC__Group_Member__c != null)
                {
                    if(TechnicianMap.containskey(wd.SVMXC__Group_Member__c))
                    {
                        sp.FSR = TechnicianMap.get(wd.SVMXC__Group_Member__c);
                    }
                }
                if(wd.SVMXC__Serial_Number__c != null)
                {
                    if(IPUnitMap.containskey(wd.SVMXC__Serial_Number__c))
                    {
                        sp.InstalledProduct = IPUnitMap.get(wd.SVMXC__Serial_Number__c);
                    }
                    
                }
                sp.workDescription = wd.SVMXC__Work_Description__c;
                sp.levelRequired = wd.Level_Required__c;// May Release 2015
                ServiceProductsWDs.add(sp);
                
            }
            
        }
        
        
        wDetail.TimeWDs = TimeWDs;
        wDetail.ExpenseWDs = ExpenseWDs;
        wDetail.ServiceProductsWDs = ServiceProductsWDs;
        wDetail.PartsWDs = PartsWDs;
        return wDetail;
    }
    public Static   WorkDetail  getWorkDetails( Id woid ,String event){
        WorkDetail wDetail=new WorkDetail();
        Set<id> ipidSet = new Set<id>();
        Set<id> fsridSet = new Set<id>();
        
        RecordType PlannedRt =woDetailsMap.get('Estimate');        
        RecordType ServiceProductRt =woDetailsMap.get('Products_Serviced');
        RecordType PartsRt =woDetailsMap.get('Parts');
        ID Planned = PlannedRt.id;       
        ID serviceproduct = ServiceProductRt.id;
        ID Parts = PartsRt.id;
        
        List<TimeWD> TimeWDs = new List<TimeWD>();
        List<ExpenseWD> ExpenseWDs  = new List<ExpenseWD>();  
        List<PartsWD> PartsWDs  = new List<PartsWD>();  
        List<ServiceProductsWD> ServiceProductsWDs = new List<ServiceProductsWD>();
        Map<id,SVMXC__Service_Order_Line__c> currencyMap = new Map<id,SVMXC__Service_Order_Line__c>();
        
        
        if(event == 'WO.RELEASE'){
            
            List<SVMXC__Service_Order_Line__c> solines = new List<SVMXC__Service_Order_Line__c>();
            solines = [select id, Name, RecordTypeId ,RecordType.Name,SVMXC__Service_Order__c,SVMXC__Line_Type__c ,SVMXC__Activity_Type__c,HourType__c,SVMXC__Serial_Number__c,SVMXC__Group_Member__c,SVMXC__Expense_Type__c,SVMXC__Date_Received__c,IsBillable__c,SVMXC__Work_Description__c ,SVMXC__Start_Date_and_Time__c ,SVMXC__End_Date_and_Time__c ,TotalTime__c, SVMXC__Work_Detail__c, ExpenseQuantity__c, LinePricePerUnit__c, CurrencyIsoCode,PartsOrderLine__c,PartsOrderLine__r.TECH_BOPartsOrderLineRecordId__c,PartsOrderLine__r.SKU__c ,PartsOrderLine__r.BOMaterialReference__c,PartsOrderLine__r.SVMXC__Product__r.Name,PartsOrderLine__r.SVMXC__Expected_Quantity2__c,ShippedQuantity_del__c,InstalledQuantity__c,FailedQuantity__c,ReturnedQuantity__c, Level_Required__c,
                       Part_Order_Line_Type__c,PartsOrderLine__r.Generic_reference__c,PartsOrderLine__r.Free_text_reference__c,Left_Onsite_Qty__c,Not_Returned_Reason__c
                       from SVMXC__Service_Order_Line__c where SVMXC__Service_Order__c =:woid and ( RecordTypeId =:Planned OR RecordTypeId =:serviceproduct OR RecordTypeId =:Parts)];             
            
            List<SVMXC__Service_Order_Line__c> servicelinelist = [select id, convertCurrency(LinePricePerUnit__c) from SVMXC__Service_Order_Line__c where SVMXC__Service_Order__c =:woid and ( RecordTypeId =:Planned and SVMXC__Line_Type__c = 'Expenses' )];
            if(servicelinelist != null && servicelinelist.size()>0)
                currencyMap.putAll(servicelinelist);
            
            if(solines != null && solines.size()>0)
            {
                // for preparation IP Map  and Technicians Map
                for(SVMXC__Service_Order_Line__c  wd:solines)
                {
                    if(wd.SVMXC__Serial_Number__c != null ){            
                        ipidSet.add(wd.SVMXC__Serial_Number__c);
                    }
                    if(wd.SVMXC__Group_Member__c != null ){         
                        fsridSet.add(wd.SVMXC__Group_Member__c);
                    }
                }
                if(ipidSet != null && ipidSet.size()>0)
                    prepareIPMap(ipidSet);
                if(fsridSet != null && fsridSet.size()>0)
                    prepareTechnicians(fsridSet);
                // Work Detail Creation
                for(SVMXC__Service_Order_Line__c  wd:solines){
                    if(wd.RecordTypeId == Planned){  
                        
                        if(wd.SVMXC__Line_Type__c == 'Labor')
                        {
                            TimeWD t = new TimeWD();
                            t.workOrderbFOID = wd.SVMXC__Service_Order__c;
                            t.workDetailbFOID = wd.id;
                            //t.lineType = wd.SVMXC__Line_Type__c;
                            t.lineType = System.Label.CLAPR15SRV84;
                            t.activityType = wd.SVMXC__Activity_Type__c;
                            t.hourType = wd.HourType__c;
                            if(wd.SVMXC__Group_Member__c != null)
                            {
                                if(TechnicianMap.containskey(wd.SVMXC__Group_Member__c))
                                {
                                    t.FSR = TechnicianMap.get(wd.SVMXC__Group_Member__c);
                                }
                            }
                            t.isBillable = wd.IsBillable__c;
                            
                            //t.startDateTime = String.valueOf(wd.SVMXC__Start_Date_and_Time__c);
                            if(wd.SVMXC__Start_Date_and_Time__c != null)
                                t.startDateTime = (wd.SVMXC__Start_Date_and_Time__c).formatGMT('yyyy-MM-dd HH:mm:ss');
                            
                            
                            
                            //t.endDateTime = String.valueOf(wd.SVMXC__End_Date_and_Time__c);
                            if(wd.SVMXC__End_Date_and_Time__c != null)
                                t.endDateTime =  (wd.SVMXC__End_Date_and_Time__c).formatGMT('yyyy-MM-dd HH:mm:ss');
                            
                            
                            
                            t.totalTime = wd.TotalTime__c;
                            t.workDescription = wd.SVMXC__Work_Description__c;
                            t.workDetailPlannedbFOID = wd.SVMXC__Work_Detail__c;
                            t.workDetailbFONumber = wd.Name;
                            t.levelRequired = wd.Level_Required__c; //May Release Yassine 05052015
                            TimeWDs.add(t);
                        }
                        else if(wd.SVMXC__Line_Type__c == 'Expenses'){
                            
                            ExpenseWD e = new ExpenseWD();
                            e.workOrderbFOID = wd.SVMXC__Service_Order__c;
                            e.workDetailbFOID = wd.id;
                            e.lineType = System.Label.CLAPR15SRV84;
                            e.expenseType = wd.SVMXC__Expense_Type__c;
                            e.expenseDate = String.valueOf(wd.SVMXC__Date_Received__c);
                            if(wd.SVMXC__Group_Member__c != null)
                            {
                                if(TechnicianMap.containskey(wd.SVMXC__Group_Member__c))
                                {
                                    e.FSR = TechnicianMap.get(wd.SVMXC__Group_Member__c);
                                }
                            }
                            e.isBillable = wd.IsBillable__c;
                            //e.billingType = wd.
                            e.expenseQuantity = wd.ExpenseQuantity__c;
                            e.linePricePerUnit = wd.LinePricePerUnit__c;
                            e.currencyIsoCode = wd.CurrencyIsoCode;
                            e.workDescription = wd.SVMXC__Work_Description__c;
                            e.workDetailPlannedbFOID = wd.SVMXC__Work_Detail__c;
                            if(currencyMap.containskey(wd.id))
                                e.linePricePerUnitCorporateCurrency = currencyMap.get(wd.id).LinePricePerUnit__c;
                            e.workDetailbFONumber = wd.Name;
                            e.levelRequired = wd.Level_Required__c; //May Release Yassine 05052015
                            ExpenseWDs.add(e);
                        }
                        
                    }
                    //Send only Work Detail Part that are related to a Part Order Line (Shipment), meaning the ones having PartsOrderLine__c not empty
                    if(wd.RecordTypeId == Parts && wd.PartsOrderLine__c != null){
                        
                        PartsWD p = new PartsWD();
                        p.workOrderbFOID = wd.SVMXC__Service_Order__c;
                        p.workDetailbFOID = wd.id;
                        p.workDetailbFONumber = wd.Name;
                        p.partOrderLinebFOID  = wd.PartsOrderLine__c;
                        p.partOrderLineType = wd.Part_Order_Line_Type__c;
                        p.TECH_BOPartsOrderLineRecordId = wd.PartsOrderLine__r.TECH_BOPartsOrderLineRecordId__c;
                        p.FOSKUReference = wd.PartsOrderLine__r.SKU__c;
                        p.BOMaterialReference =  wd.PartsOrderLine__r.BOMaterialReference__c;
                        p.sparePartbFOID = wd.PartsOrderLine__r.SVMXC__Product__c; // Yassine.B 02/04/2015 fix (name -> Id)
                        p.genericReference = wd.PartsOrderLine__r.Generic_reference__c;
                        p.freeTextReference =  wd.PartsOrderLine__r.Free_text_reference__c;
                        if(wd.SVMXC__Group_Member__c != null)
                        {
                            if(TechnicianMap.containskey(wd.SVMXC__Group_Member__c))
                            {
                                p.FSR = TechnicianMap.get(wd.SVMXC__Group_Member__c);
                            }
                        }
                        p.isBillable = wd.IsBillable__c;
                        //p.expectedQuantity
                        p.shippedQuantity = wd.ShippedQuantity_del__c;
                        p.installedQuantity = wd.InstalledQuantity__c;
                        p.returnedQuantity = wd.ReturnedQuantity__c;
                        p.failedQuantity = wd.FailedQuantity__c;
                        p.leftOnsiteQuantity = wd.Left_Onsite_Qty__c;
                        p.notReturnReason = wd.Not_Returned_Reason__c;
                        p.workDescription = wd.SVMXC__Work_Description__c;
                        p.expectedQuantity = wd.PartsOrderLine__r.SVMXC__Expected_Quantity2__c;
                        p.levelRequired = wd.Level_Required__c; //May Release Yassine 05052015                          
                        PartsWDs.add(p);
                        
                    }                   
                    else if(wd.RecordTypeId == serviceproduct){
                        ServiceProductsWD sp = new ServiceProductsWD();
                        sp.workOrderbFOID = wd.SVMXC__Service_Order__c;
                        sp.workDetailbFOID = wd.id;
                        sp.workDetailbFONumber = wd.Name;
                        if(wd.SVMXC__Group_Member__c != null)
                        {
                            if(TechnicianMap.containskey(wd.SVMXC__Group_Member__c))
                            {
                                sp.FSR = TechnicianMap.get(wd.SVMXC__Group_Member__c);
                            }
                        }
                        if(wd.SVMXC__Serial_Number__c != null)
                        {
                            if(IPUnitMap.containskey(wd.SVMXC__Serial_Number__c))
                            {
                                sp.InstalledProduct = IPUnitMap.get(wd.SVMXC__Serial_Number__c);
                            }
                            
                        }
                        sp.workDescription = wd.SVMXC__Work_Description__c;
                        sp.levelRequired = wd.Level_Required__c; //May Release Yassine 05052015
                        ServiceProductsWDs.add(sp);
                        
                    }
                    
                    
                }
            }
            wDetail.TimeWDs = TimeWDs;
            wDetail.ExpenseWDs = ExpenseWDs;
            wDetail.ServiceProductsWDs = ServiceProductsWDs;
            wDetail.PartsWDs = PartsWDs;
        }
        
        return wDetail;
        
    }
    public static Map<Id,InstalledProduct> IPUnitMap = new Map<Id,InstalledProduct>();
    public Static void prepareIPMap(Set<id> idset){
        
        for(SVMXC__Installed_Product__c ipobj: [select id, name,GoldenAssetId__c,SVMXC__Company__r.SEAccountID__c,
                                                SVMXC__Company__r.Name,SVMXC__Company__r.AccountLocalName__c,SVMXC__Company__r.Street__c,SVMXC__Company__r.StreetLocalLang__c,
                                                SVMXC__Company__r.AdditionalAddress__c,SVMXC__Company__r.LocalAdditionalAddress__c,SVMXC__Company__r.ZipCode__c,
                                                SVMXC__Company__r.City__c,SVMXC__Company__r.LocalCity__c,SVMXC__Company__r.Country__r.CountryCode__c,SVMXC__Company__r.StateProvince__c,
                                                SVMXC__Company__r.StateProvince__r.StateProvinceCode__c,SVMXC__Company__r.RecordType.Name,
                                                CustomerSerialNumber__c, SVMXC__Serial_Lot_Number__c, SchneiderCommercialReference__c,SVMXC__Country__c,RecordType.Name from SVMXC__Installed_Product__c where id in :idset ])
        {
            InstalledProduct ipu = new InstalledProduct();
            ipu.GoldenID = ipobj.GoldenAssetId__c;
            ipu.Name =  ipobj.Name;
            ipu.InstalledAtGoldenID = ipobj.SVMXC__Company__r.SEAccountID__c;
            //ipu.SerialNumber = ipobj.CustomerSerialNumber__c;
            ipu.SerialNumber = ipobj.SVMXC__Serial_Lot_Number__c; // Yassine.B 13/03/2015 - fix the right serial number field on IP
            ipu.SECommercialRef = ipobj.SchneiderCommercialReference__c;
            ipu.installedAtCountryCode = ipobj.SVMXC__Country__c;
            ipu.installedAtGoldenID = ipobj.SVMXC__Company__r.SEAccountID__c;
            ipu.installedAtName = ipobj.SVMXC__Company__r.Name;
            ipu.installedAtNameLocal = ipobj.SVMXC__Company__r.AccountLocalName__c;
            ipu.installedAtStreet = ipobj.SVMXC__Company__r.Street__c;
            ipu.installedAtStreetLocal = ipobj.SVMXC__Company__r.StreetLocalLang__c;
            ipu.installedAtAddAddressInfo = ipobj.SVMXC__Company__r.AdditionalAddress__c;
            ipu.installedAtAddAddressInfoLocal = ipobj.SVMXC__Company__r.LocalAdditionalAddress__c;
            ipu.installedAtZipCode = ipobj.SVMXC__Company__r.ZipCode__c;
            ipu.installedAtCity = ipobj.SVMXC__Company__r.City__c;
            ipu.installedAtLocalCity = ipobj.SVMXC__Company__r.LocalCity__c;
            ipu.installedAtCountryCode = ipobj.SVMXC__Company__r.Country__r.CountryCode__c;
            ipu.installedAtStateProvinceCode = ipobj.SVMXC__Company__r.StateProvince__r.StateProvinceCode__c;
            
            
            //ipu.installedAtRecordTypeName = ipobj.RecordType.name;
            ipu.installedAtRecordTypeName = ipobj.SVMXC__Company__r.RecordType.Name; // Yassine.B 13/03/2015 - fix the record type name field on Account
            IPUnitMap.put(ipobj.id, ipu);
        }
        
        
    }
    public static Map<Id,Technician> TechnicianMap = new Map<Id,Technician>();
    public Static void  prepareTechnicians(Set<id> idset){
        
        for(SVMXC__Service_Group_Members__c gm:[select Level__c, id, SESAID__c,Business_Unit__c,SVMXC__Salesforce_User__c,SVMXC__Salesforce_User__r.FirstName,SVMXC__Salesforce_User__r.LastName,SVMXC__Salesforce_User__r.email,ThirdPartyContact__c,ThirdPartyContact__r.FirstName,ThirdPartyContact__r.LastName,ThirdPartyContact__r.email,SVMXC__Email__c,SVMXC__Role__c  from SVMXC__Service_Group_Members__c]){         
            Technician t = new Technician();
            if(gm.SVMXC__Role__c == 'Schneider Employee'){
                t.SESAID  = gm.SESAID__c;
                t.FirstName = gm.SVMXC__Salesforce_User__r.FirstName;
                t.LastName = gm.SVMXC__Salesforce_User__r.LastName;
                t.Email = gm.SVMXC__Salesforce_User__r.email;
                t.RoleName = gm.SVMXC__Role__c;
                t.BusinessUnit = gm.Business_Unit__c;
                t.level =gm.Level__c; // May 2015 Release 
            }
            else{
                
                t.FirstName = gm.ThirdPartyContact__r.FirstName;
                t.LastName = gm.ThirdPartyContact__r.LastName;
                t.Email = gm.ThirdPartyContact__r.email;
                t.RoleName = gm.SVMXC__Role__c;
                t.BusinessUnit = gm.Business_Unit__c;
                t.level =gm.Level__c; // May 2015 Release 
            }
            TechnicianMap.put(gm.id,t);
        }
        
        
    }
    public Static  WorkOrder  populateAndGetWorkOrderFields(SVMXC__Service_Order__c wo){
        woresult = new WorkOrder();
        woresult = WS_Work_Order_Handler.populateWorkOrderFields(wo);
        return woresult;
    }
   
    
    public static SVMXC__Service_Order__c getWorkOrder(WorkOrder wou ){
        
        SVMXC__Service_Order__c  wo = new SVMXC__Service_Order__c();
        wo.Id = wou.workOrderbFOID;
        
        wo.WorkOrderName__c =  wou.workOrderName;
        wo.CustomerRequestedTime__c =string.valueof(wou.customerRequestedTime);
        wo.BusinessUnit__c = wou.serviceBusinessUnit ;
        wo.WOPriority__c = wou.priority;
        wo.Comments_to_Planner__c = wou.commentToPlanner;
        wo.CountryOfBackOffice__c = wou.countryOfBackOffice;
        wo.BackOfficeSystem__c = wou.backOfficeSystem;
        wo.SVMXC__Order_Status__c = wou.workOrderStatus;
        wo.SubStatus__c = wou.workOrderSubStatus;
        wo.Work_Order_Category__c = wou.workOrderCategory;
        wo.SVMXC__Order_Type__c = wou.workOrderType;
        wo.WorkOrderSubType__c = wou.workOrderSubType;
        wo.IsBillable__c =  wou.isBillable;
        wo.SVMXC__Billing_Type__c =  wou.billingType;   
        wo.CustomerRequestedDate__c = wou.customerRequestedDate;
        wo.SVMXC__Problem_Description__c =wou.workOrderReason;      
        //wo.TECH_FOLastUpdate_Timestamp__c =wou.TECH_FOLastUpdateTimestamp;
        wo.PONumber__c  = wou.PONumber;
        wo.salesOrderLineNumber__c = wou.salesOrderLineNumber;
        wo.Customer_Reference_Number__c = wou.customerReferenceNumber;
        wo.SVMXC__Company__c   = wou.installedAtAccountbFOID ;     
        wo.Sales_Order_Number__c = wou.salesOrderNumber;
        
        wo.EstimatedExpenseCost__c = wou.estimatedExpenseCost;
        wo.EstimatedMaterialCost__c = wou.estimatedMaterialCost;
        //wo.estimatedLaborCost
        wo.Shipped_Serial_Number__c = wou.mainShippedSerialNumber;
        wo.QuotationNumber__c = wou.quotationNumber;
        wo.BillToAccount__c = wou.billToAccountbFOID;
        wo.SVMXC__Product__c = wou.productbFOID;
        wo.Estimated_Labor_Cost__c = wou.estimatedLaborCost;
        wo.Project__c = wou.projectNumber;
        wo.salesOrderLineNumber__c =wou.salesOrderLineNumber;
        wo.Sales_Order_Number__c =wou.salesOrderNumber;
        wo.Service_Business_Unit__c  = wou.serviceBusinessUnit;
        //wo.SVMXC__Service_Contract__c  = wou.serviceContractbFOID;
        //wo.ServiceLine__c =wou.serviceLinebFOID;
        wo.SVMXC__Service_Contract__c = wou.serviceLinebFOID; 
        wo.ServiceLine__c =wou.serviceContractbFOID;
        wo.SoldToAccount__c  = wou.soldToAccountbFOID;
        wo.BackOfficeReference__c = wou.WOBackOfficeReference;
        wo.CurrencyIsoCode =wou.WOcurrencyIsCode;
        wo.TECH_IsBoundToBackOffice__c =  true;//Added for RecoredType Switch 18/02/2015
        if(wou.WOGBackOfficeReference != null )
            wo.TECH_WOGBackOfficeReference__c = wou.WOGBackOfficeReference;
        else{
            wo.TECH_WOGBackOfficeReference__c =wou.WOBackOfficeReference;
        }
        
        wo.Back_Office_Bill__c = wou.BackOfficeBillToValid; // Yassine. B 13/03/2015 
        wo.TECH_WOBackOfficeRecordID__c = wou.TECH_WOBackOfficeRecordID;
        wo.installedAtAccountInfo__c =  wou.installedAtAccountInfo;
        //if(wou.totalEstimatedCosts != null && wou.totalEstimatedCosts !='')
        //wo.Total_Estimated_Costs__c =  Decimal.valueOf(wou.totalEstimatedCosts);
        
        
        
        // webservice String  serviceContractBOReference;
        // webservice String  serviceLineBOReference;
        // webservice String  salesOrderNumber;
        
        // webservice String  PONumber;
        // webservice String  serviceCenterTerritoryName;
        
        
        
        //webservice Id   serviceLinebFOID;
        //webservice String   WOBackOfficeReference;
        //webservice String   TECH_WOBackOfficeRecordID;
        
        
        //webservice Decimal   estimatedLaborCost;
        
        
        return wo;
    }
    
    //Added by VISHNU C for BR 8310 March 2016 Release
    public static void CreateMapIP(List<SVMXC__Installed_Product__c> wowdList){
        
        system.debug('Inside the check to associate the MAP');
        if(IPbFOIdset != null && IPbFOIdset.size()>0){
            system.debug('The bFOIdMap before is' +bFOIdMap);
            for(SVMXC__Installed_Product__c  ip: wowdList)
            {
                bFOIdMap.put(ip.id ,ip);
                system.debug('The bFOIdMap after is' +bFOIdMap);
            }
        }
        if (bFOIdMap.isempty()){ //Added by VISHNU C for BR 8310 March Release 2016
            system.debug('Entered Inside Golden IF Loop');
            if(IPGoldenIDset != null && IPGoldenIDset.size()>0){
                system.debug('The goldenIdMap before is' +goldenIdMap);
                for(SVMXC__Installed_Product__c  ip1: wowdList)
                {
                    goldenIdMap.put(ip1.GoldenAssetId__c ,ip1);
                    system.debug('The goldenIdMap after is' +goldenIdMap);
                }
            }
        }
        if (goldenIdMap.isempty()){ //Added by VISHNU C for BR 8310 March Release 2016
            system.debug('The Product bFO Id is' +IPProdbFOId+ 'serial number is' +IPShipSerialNum );
            if(IPShipSerialNum != null && IPShipSerialNum.size()>0 && IPProdbFOId != null && IPProdbFOId.size()>0){
                system.debug('The ProdSNMap before is' +ProdSNMap);
                for(SVMXC__Installed_Product__c  ip2: wowdList)
                    
                {
                    ProdSNMap.put(ip2.SVMXC__Serial_Lot_Number__c + ip2.SVMXC__Product__c,ip2.id);
                    system.debug('The ProdSNMap after is' +ProdSNMap);
                }
            }
        }
        
    }
    //Changes by VISHNU C for BR 3810 Ends here
    
    public static  void getInstalledProductFields(InstalledProduct ipu){
        
        if(ipu != null ){
            //Added below lines by VISHNU C for BR 8310
            //system.debug('The bFOID is ' +ipu.bFOID+ 'The Golden Id Requestis' +ipu.GoldenID+ 'The SN Requestis' +ipu.mainShippedSerialNumber+ 'The Prod Id Request is' +ipu.productbFOID);
            
            if(ipu.bFOID != null)
            {   
                IPbFOIdset.add(ipu.bFOID );
            }
            //Commented below line by VISHNU C for BR 8310 March 2016 Release
            /*if(ipu.shippedSerialNumber != null && ipu.shippedSerialNumber !='')
{   
IPShipSerialNum.add(ipu.shippedSerialNumber );
}
if(ipu.mainShippedSerialNumber != null && ipu.mainShippedSerialNumber !='')
{   
IPShipSerialNum.add(ipu.mainShippedSerialNumber );
}
if(ipu.productbFOID != null && ipu.productbFOID !='')
{   
IPProdbFOId.add(ipu.productbFOID );
}
if(ipu.WDBackOfficeReference != null && ipu.WDBackOfficeReference !='')
{   
IPWDBackOfficeReference.add(ipu.WDBackOfficeReference );
}*/
            
            //Changes by VISHNU C Ends
            
            if(ipu.GoldenID != null && ipu.GoldenID !='')
            {   
                IPGoldenIDset.add(ipu.GoldenID );
                //spObj.GoldenID = ipu.GoldenID;
            }
            if(ipu.Name != null && ipu.Name !='')
            {
                Nameset.add(ipu.Name );
                //spObj.IPName = ipu.Name;
            }
            if(ipu.InstalledAtGoldenID != null && ipu.InstalledAtGoldenID !='')
            {
                InstalledAtGoldenIDset.add(ipu.InstalledAtGoldenID );
                //spObj.InstalledAtGoldenID = ipu.InstalledAtGoldenID;
            }
            if(ipu.SerialNumber != null && ipu.SerialNumber !='')
            {  
                SerialNumberset.add(ipu.SerialNumber );
                //spObj.IPSerialNumber = ipu.SerialNumber;
            }
            if(ipu.SECommercialRef != null && ipu.SECommercialRef !='')
            {
                SECommercialRefset.add(ipu.SECommercialRef );
                //spObj.IPSECommercialRef = ipu.SECommercialRef;
            }
            if(ipu.installedAtCountryCode != null && ipu.installedAtCountryCode !='')
            {
                installedAtCountryCodeset.add(ipu.installedAtCountryCode );
                //spObj.IpinstalledAtCountryCode = ipu.installedAtCountryCode;
            }
            
        }
        
    }
    public Static List<SVMXC__Service_Order_Line__c> getWorkDetailsResults(Set<Id> WDids){//Added this Method by VISHNU C for BR 8310 March 2016 Release
        List<SVMXC__Service_Order_Line__c>  WDs = new List<SVMXC__Service_Order_Line__c>();
        WDs = [select id,Name,WDBackOfficeReference__c from SVMXC__Service_Order_Line__c where id in : WDids];
        return WDs;
    }
    public Static List<SVMXC__Installed_Product__c> getIPQuery(){
        
        String Query=' select id, name ,GoldenAssetId__c,SVMXC__Company__c,SVMXC__Company__r.SEAccountID__c,CustomerSerialNumber__c, SchneiderCommercialReference__c,SVMXC__Serial_Lot_Number__c,SVMXC__Product__c,SVMXC__Company__r.Country__r.CountryCode__c from SVMXC__Installed_Product__c ';
        List<SVMXC__Installed_Product__c> ipquery  = new List<SVMXC__Installed_Product__c>(); //Added by VISHNU C for BR 8310
        String QueryString ='';
        String WhereClause ='';
        String WhereClausebFOId =''; //Modified the variable name WhereClause to WhereClausebFOId by VISHNU C BR 8310
        String WhereClauseGoldenId =''; //Added by VISHNU C for BR 8310
        String WhereClauseSNProd =''; //Added by VISHNU C for BR 8310
        //Added below Line by VISHNU C for BR 8310
        system.debug('The IPbFOIdset is ' +IPbFOIdset+ 'The Golden Id is' +IPGoldenIDset+ 'The SN is' +IPShipSerialNum+ 'The Prod Id is' +IPProdbFOId);
        
        if(IPbFOIdset != null && IPbFOIdset.size()>0)
        {
            if(WhereClause.length()>0)
                WhereClause +=  ' OR  id in  ('+ SOQLListFormat(IPbFOIdset) +') ';
            else
                WhereClause +=  '  id in  ('+ SOQLListFormat(IPbFOIdset) +') ';
            //WhereClausebFOId =' id in  ('+ SOQLListFormat(IPbFOIdset) +') ';
            
        }
        
        if(IPGoldenIDset != null && IPGoldenIDset.size()>0)
        {
            if(WhereClause.length()>0)
                WhereClause +=  ' OR  GoldenAssetId__c in  ('+ SOQLListFormat(IPGoldenIDset) +') ';
            else
                WhereClause +=  '  GoldenAssetId__c in  ('+ SOQLListFormat(IPGoldenIDset) +') ';
            //WhereClauseGoldenId =' GoldenAssetId__c in  ('+ SOQLListFormat(IPGoldenIDset) +') ';
            
        }
        if(IPShipSerialNum != null && IPShipSerialNum.size()>0 && IPProdbFOId != null && IPProdbFOId.size()>0)
            
        {
            if(WhereClause.length()>0)
                WhereClause +=  ' OR  (SVMXC__Serial_Lot_Number__c in  ('+ SOQLListFormat(IPShipSerialNum)+')'+ ' AND  SVMXC__Product__c in ('+ SOQLListFormat(IPProdbFOId) +' ) )';
            else
                WhereClause +=  ' ( SVMXC__Serial_Lot_Number__c in ('+ SOQLListFormat(IPShipSerialNum)+')'+ ' AND  SVMXC__Product__c in ('+ SOQLListFormat(IPProdbFOId) +' ) )';
            //WhereClauseSNProd =' SVMXC__Serial_Lot_Number__c in ('+ SOQLListFormat(IPShipSerialNum)+')'+ ' AND  SVMXC__Product__c in ('+ SOQLListFormat(IPProdbFOId) +' ) ';
            
        }
        //Changes by VISHNU C ENDS
        
        
        if(Nameset != null && Nameset.size()>0)
        {
            if(WhereClause.length()>0)
                WhereClause +=  ' OR  Name in  ('+ SOQLListFormat(Nameset) +') ';
            else
                WhereClause +=  '  Name in  ('+ SOQLListFormat(Nameset) +') ';
        }
        if(InstalledAtGoldenIDset != null && InstalledAtGoldenIDset.size()>0)
        {
            if(WhereClause.length()>0)
                WhereClause +=  ' OR  SVMXC__Company__r.SEAccountID__c in  ('+ SOQLListFormat(InstalledAtGoldenIDset) +') ';
            else
                WhereClause +=  '  SVMXC__Company__r.SEAccountID__c in  ('+ SOQLListFormat(InstalledAtGoldenIDset) +') ';
        }
        if(SerialNumberset != null && SerialNumberset.size()>0)
        {
            if(WhereClause.length()>0)
                WhereClause +=  ' OR  CustomerSerialNumber__c in  ('+ SOQLListFormat(SerialNumberset) +') ';
            else
                WhereClause +=  '  CustomerSerialNumber__c in  ('+ SOQLListFormat(SerialNumberset) +') ';
        }
        if(SECommercialRefset != null && SECommercialRefset.size()>0)
        {
            if(WhereClause.length()>0)
                WhereClause +=  ' OR  SchneiderCommercialReference__c in  ('+ SOQLListFormat(SECommercialRefset) +') ';
            else
                WhereClause +=  '  SchneiderCommercialReference__c in  ('+ SOQLListFormat(SECommercialRefset) +') ';
        }
        if(installedAtCountryCodeset != null && installedAtCountryCodeset.size()>0)
        {
            if(WhereClause.length()>0)
                WhereClause +=  ' OR  SVMXC__Company__r.Country__r.CountryCode__c in  ('+ SOQLListFormat(installedAtCountryCodeset) +') ';
            else
                WhereClause +=  '  SVMXC__Company__r.Country__r.CountryCode__c in  ('+ SOQLListFormat(installedAtCountryCodeset) +') ';
        }
        if ( WhereClause != '' && WhereClause != null ){
            QueryString = Query +' Where '+ WhereClause;
            ipquery = Database.query(QueryString);
        } 
        
        //Changed the variable from WhereClause to WhereClausebFOId by VISHNU C for BR 8310
        /*if ( WhereClause != '' && WhereClause != null ){
WhereClausebFOId += WhereClause;
}   
if(WhereClausebFOId!=null && WhereClausebFOId!='' ){        
QueryString = Query +' Where '+ WhereClausebFOId;
//Below Changes added by VISHNU C for BR 8310
ipquery = Database.query(QueryString); //VISHNU C
}
if(ipquery.isempty()){
if ( WhereClause != '' && WhereClause != null )
WhereClauseGoldenId += WhereClause;
if(WhereClauseGoldenId!=null && WhereClauseGoldenId!=''){
QueryString = Query +' Where '+ WhereClauseGoldenId;
ipquery = Database.query(QueryString); //VISHNU C
}
if(ipquery.isempty()){
if ( WhereClause != '' && WhereClause != null )
WhereClauseSNProd += WhereClause;
system.debug('The Where Clause serial number query string is' +WhereClauseSNProd);
if ( WhereClauseSNProd != '' && WhereClauseSNProd != null ){
QueryString = Query +' Where '+ WhereClauseSNProd;
system.debug('The serial number query string is' +QueryString);
ipquery = Database.query(QueryString); //VISHNU C
}

}
}*/
        //Changes by VISHNU C Ends
        /*else{ //Code commented by VISHNU C for BR 8310
QueryString ='';
}*/
        System.debug('\n Log WWS : ip query '+ipquery);
        return ipquery;
        
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
    
    webservice static PartsOrdersResults bulkUpdatePartsOrderAndPartsOrderLines(PartsOrders request){
        
        PartsOrdersResults response = new PartsOrdersResults();
        Map<id,PartsOrder> porderMap = new  Map<id,PartsOrder>();
        Map<id,PartsOrderLines> porderLineMap = new Map<id,PartsOrderLines>();
        Map<id,id> polpomap = new Map<id,id>();
        Map<id, PartsOrderLinesResult> plineResultMap = new Map<id, PartsOrderLinesResult>();
        Map<id,List<PartsOrderLinesResult>> pidPlineResults = new Map<id,List<PartsOrderLinesResult>>();
        Map<id,PartsOrderResult> pidporderResultmap = new Map<id,PartsOrderResult>();
        Set<String> calculatedPlantSet = new Set<String>();
        
        
        for(PartsOrder punit: request.PartsOrders){
            
            if(punit.partOrderbFOID != null )
            {
                porderMap.put(punit.partOrderbFOID, punit);
            }
            if(punit.PartsOrderLines != null ){
                for(PartsOrderLines plUnit:punit.PartsOrderLines){                  
                    if(plUnit.partOrderLinebFOID != null){
                        
                        
                        porderLineMap.put(plUnit.partOrderLinebFOID, plUnit);
                        polpomap.put(plUnit.partOrderLinebFOID,punit.partOrderbFOID);
                        
                    }
                    if(plUnit.calculatedPlant != null && plUnit.calculatedPlant !=''){
                        calculatedPlantSet.add(plUnit.calculatedPlant);
                    }                   
                    
                    
                }
            }
        }
        System.debug('\n cLog: '+porderMap);
        List<PartsOrderResult> PartsOrderUnitList = new List<PartsOrderResult>();
        if(porderMap!= null && porderMap.size()>0){
            //Yassine.B 11/06/2015 - Last_Synchronization__c added in the query (DEF-7348)
            List<SVMXC__RMA_Shipment_Order__c> poList =[ select id, name ,TECH_BOPartsOrderRecordId__c,TECH_BOLastUpdateTimestamp__c,SVMXC__Order_Status__c,Synchronization_log__c, BackOfficeReference__c, Last_Synchronization__c FROM  SVMXC__RMA_Shipment_Order__c where id in :porderMap.keySet()  ];
            if(poList != null && poList.size()>0){
                for(SVMXC__RMA_Shipment_Order__c poObj: poList){
                    
                    if(porderMap.containskey(poObj.id))
                    {                   
                        PartsOrder punit  = porderMap.get(poObj.id);
                        if(punit.partOrderbFONumber != null && punit.partOrderbFONumber !='')
                        {
                            //poObj.name = punit.partOrderbFONumber;                        
                        }
                        if(punit.partOrderStatus != null && punit.partOrderStatus !='')
                        {
                            poObj.SVMXC__Order_Status__c = punit.partOrderStatus;                       
                        }
                        if(punit.partOrderBOReference != null && punit.partOrderBOReference !='')
                        {
                            poObj.BackOfficeReference__c = punit.partOrderBOReference;                      
                        }
                        if(punit.TECH_BOPartsOrderRecordId != null && punit.TECH_BOPartsOrderRecordId !='')
                        {
                            poObj.TECH_BOPartsOrderRecordId__c = punit.TECH_BOPartsOrderRecordId;                       
                        }
                        if(punit.TECH_BOLastUpdateTimestamp != null )
                        {
                            poObj.TECH_BOLastUpdateTimestamp__c = punit.TECH_BOLastUpdateTimestamp;                       
                        }
                        if(punit.synchronizationLog != null && punit.synchronizationLog !='')
                        {
                            poObj.Synchronization_log__c = punit.synchronizationLog;  
                            poObj.Last_Synchronization__c = System.now(); // Yassine.B 11/06/2015 (DEF-7348) put the last sync date/time when we got a log update from BO
                            poObj.RequestForRelease__c = null;
                        }
                    }
                }
                Database.SaveResult[] Po_results  = CreateOrUpdateServices((List<Sobject>)poList,'UPDATE');
                
                for(Integer k=0;k<Po_results.size();k++ )
                {
                    Database.SaveResult sr = Po_results[k];
                    PartsOrderResult pr = new PartsOrderResult();
                    List<PartsOrderLinesResult> PartsOrderLinesResults= new List<PartsOrderLinesResult>();
                    pr.PartsOrderLinesResults = PartsOrderLinesResults;
                    
                    //pr.type = 'UPDATE';
                    
                    pr.partOrderbFOID =poList[k].id;
                    pr.partOrderbFONumber = poList[k].name;
                    pr.partOrderBOReference = poList[k].BackOfficeReference__c;
                    pr.TECH_BOPartsOrderRecordId = poList[k].TECH_BOPartsOrderRecordId__c;
                    
                    if(!sr.isSuccess())
                    {
                        pr.success = false;
                        
                        String Message ='';
                        for(Database.Error err : sr.getErrors()) {
                            Message= ' '+err.getFields()+' Error : '+err.getMessage();                              
                        }                            
                        pr.errorMessage = Message;
                    }
                    else{
                        pr.success = true;              
                    }
                    
                    PartsOrderUnitList.add(pr);
                }
                
                
            }
            
        }
        if(porderLineMap != null && porderLineMap.size()>0){
            
            List<SVMXC__RMA_Shipment_Line__c> porderLineList =[select id,Received_Qty__c,Received_Date__c,SVMXC__RMA_Shipment_Order__c, name,SVMXC__Expected_Quantity2__c ,Shipped_Qty__c ,ShippingStatus__c ,Calculated_plant__c ,SVMXC__Expected_Ship_Date__c ,BackOfficeReference__c ,Carrier__c ,Tracking_number__c, TECH_BOPartsOrderLineRecordId__c,TECH_BOLastUpdateTimestamp__c, BOMaterialReference__c,Vendor__c  from SVMXC__RMA_Shipment_Line__c where id in :porderLineMap.keySet() ]; //Yassine.B 09/04/2015
            Map<String,Plant__c> plantMap = new Map<String,Plant__c>();
            
            if(calculatedPlantSet != null && calculatedPlantSet.size()>0){
                for(Plant__c obj:  [select id,Name from Plant__c where name in :calculatedPlantSet ])
                {
                    plantMap.put(obj.name,obj);
                }
            }
            
            if(porderLineList != null && porderLineList.size()>0){
                for(SVMXC__RMA_Shipment_Line__c polObj:porderLineList){
                    
                    if(porderLineMap.containskey(polObj.id))
                    {
                        PartsOrderLines opluint =porderLineMap.get(polObj.id);
                        if(opluint.expectedQuantity != null)
                        {
                            polObj.SVMXC__Expected_Quantity2__c = opluint.expectedQuantity ;
                        }
                        if(opluint.receivedQuantity != null)
                        {
                            polObj.Received_Qty__c = opluint.receivedQuantity ;
                        }
                        if(opluint.receivedDate != null)
                        {
                            polObj.Received_Date__c = opluint.receivedDate ;
                        }
                        if(opluint.shippedQuantity != null)
                        {
                            polObj.Shipped_Qty__c = opluint.shippedQuantity ;
                        }
                        if(opluint.shippingStatus != null && opluint.shippingStatus  !='')
                        {
                            if(opluint.shippingStatus == 'Shipped' && opluint.shippedQuantity >0 && opluint.shippedQuantity < polObj.SVMXC__Expected_Quantity2__c) //Yassine.B 09/04/2015
                            {
                                polObj.ShippingStatus__c ='Partially Shipped'; //Yassine.B 09/04/2015
                            }else if(opluint.shippingStatus == 'Received' && opluint.shippedQuantity >0 && opluint.shippedQuantity < polObj.SVMXC__Expected_Quantity2__c) //Yassine.B 16/04/2015
                            {
                                polObj.ShippingStatus__c ='Partially Received'; //Yassine.B 16/04/2015
                            }
                            else{
                                polObj.ShippingStatus__c = opluint.shippingStatus; //Yassine.B 09/04/2015
                            }
                        }
                        if(opluint.calculatedPlant != null &&  opluint.calculatedPlant !='' && plantMap.containskey(opluint.calculatedPlant))
                        {
                            polObj.Calculated_plant__c = plantMap.get(opluint.calculatedPlant).id ;
                        }
                        if(opluint.expectedShipDate != null)
                        {
                            polObj.SVMXC__Expected_Ship_Date__c = Date.valueOf(opluint.expectedShipDate );
                        }
                        if(opluint.partOrderLineBOReference != null && opluint.partOrderLineBOReference != '')
                        {   
                            if(polObj.BackOfficeReference__c == null)
                                polObj.BackOfficeReference__c = opluint.partOrderLineBOReference ;
                        }
                        if(opluint.carrier != null && opluint.carrier != '')
                        {
                            polObj.Carrier__c = opluint.carrier  ;
                        }
                        if(opluint.trackingNumber != null && opluint.trackingNumber != '')
                        {
                            polObj.Tracking_number__c = opluint.trackingNumber  ;
                        }
                        if(opluint.TECH_BOPartsOrderLineRecordId != null && opluint.TECH_BOPartsOrderLineRecordId != '')
                        {
                            System.debug('***************'+opluint.TECH_BOPartsOrderLineRecordId);
                            polObj.TECH_BOPartsOrderLineRecordId__c = opluint.TECH_BOPartsOrderLineRecordId  ;
                        }
                        if(opluint.TECH_BOLastUpdateTimestamp != null && opluint.TECH_BOLastUpdateTimestamp != '')
                        {
                            polObj.TECH_BOLastUpdateTimestamp__c = opluint.TECH_BOLastUpdateTimestamp  ;
                        }
                        
                        if(opluint.BOMaterialReference != null && opluint.BOMaterialReference != '') //Yassine.B 09/04/2015
                        {
                            if(polObj.BOMaterialReference__c  == null)                                //Yassine.B 09/04/2015
                                polObj.BOMaterialReference__c = opluint.BOMaterialReference;             //Yassine.B 09/04/2015
                        } 
                        if(opluint.leadDate != null ) //BR-10076,BR-9601
                        {                                                      
                                polObj.Lead_Date__c = opluint.leadDate;             
                        }
                        if(opluint.vendor != null ) //BR-10077
                        {                                                      
                                polObj.Vendor__c = opluint.vendor;             
                        }
                    }
                }
                Database.SaveResult[] Pol_results  = CreateOrUpdateServices((List<Sobject>)porderLineList,'UPDATE');
                for(Integer k=0;k<Pol_results.size();k++ )
                {
                    Database.SaveResult sr = Pol_results[k];
                    PartsOrderLinesResult polr = new PartsOrderLinesResult();
                    //pr.type = 'UPDATE';
                    
                    
                    
                    polr.partOrderLinebFOID =porderLineList[k].id;
                    polr.partOrderLinebFONumber = porderLineList[k].name;
                    polr.partOrderLineBOReference = porderLineList[k].BackOfficeReference__c;
                    polr.TECH_BOPartsOrderLineRecordId = porderLineList[k].TECH_BOPartsOrderLineRecordId__c;
                    
                    if(!sr.isSuccess())
                    {
                        polr.success = false;
                        
                        String Message ='';
                        for(Database.Error err : sr.getErrors()) {
                            Message= ' '+err.getFields()+' Error : '+err.getMessage();                              
                        }                            
                        polr.errorMessage = Message;
                    }
                    else{
                        polr.success = true;                
                    }
                    
                    if(pidPlineResults.containskey(porderLineList[k].SVMXC__RMA_Shipment_Order__c))
                    {
                        pidPlineResults.get(porderLineList[k].SVMXC__RMA_Shipment_Order__c).add(polr);
                    }
                    else{
                        
                        pidPlineResults.put(porderLineList[k].SVMXC__RMA_Shipment_Order__c, new List<PartsOrderLinesResult>{polr});
                    }
                    
                    plineResultMap.put(polr.partOrderLinebFOID, polr);
                    /*
for(PartsOrderResult pr: PartsOrderUnitList){

if(pr.partOrderbFOID == porderLineList[k].SVMXC__RMA_Shipment_Order__c )
pr.PartsOrderLinesResults.add(polr);

}*/
                    
                    
                }
                
            }
            
        }
        
        if(PartsOrderUnitList!= null && PartsOrderUnitList.size()>0){
            
            for(PartsOrderResult pr: PartsOrderUnitList){ 
                
                if(pidPlineResults.containskey(pr.partOrderbFOID))
                {
                    
                    List<PartsOrderLinesResult> plineResultsList = pidPlineResults.get(pr.partOrderbFOID);
                    pr.PartsOrderLinesResults.addAll(plineResultsList);
                }                              
                
                
            }
            response.PartsOrderResults =PartsOrderUnitList;
        }
        else if(pidPlineResults != null && pidPlineResults.size()>0){
            List<SVMXC__RMA_Shipment_Order__c> poList =[ select id, name ,TECH_BOPartsOrderRecordId__c,TECH_BOLastUpdateTimestamp__c,SVMXC__Order_Status__c,Synchronization_log__c, BackOfficeReference__c FROM  SVMXC__RMA_Shipment_Order__c where id in :pidPlineResults.keySet()  ];
            
            for(SVMXC__RMA_Shipment_Order__c poobj: poList){
                PartsOrderResult pr = new PartsOrderResult();
                List<PartsOrderLinesResult> PartsOrderLinesResults= new List<PartsOrderLinesResult>();
                pr.PartsOrderLinesResults = pidPlineResults.get(poobj.id); 
                //pr.type = 'UPDATE';                    
                pr.partOrderbFOID =poobj.id;
                pr.partOrderbFONumber = poobj.name;
                pr.partOrderBOReference =poobj.BackOfficeReference__c;
                pr.TECH_BOPartsOrderRecordId = poobj.TECH_BOPartsOrderRecordId__c;
                PartsOrderUnitList.add(pr);
            }
            response.PartsOrderResults =PartsOrderUnitList;
        }
        
        
        
        
        return response;
    }
    public Static  List<SVMXC__Service_Order_Line__c>   GetWorkDetailsQuery(set<Id> WDIds, Set<String> BackOfficeWDRef){
        
        RecordType ServiceProductRt =woDetailsMap.get('Products_Serviced');  
        //ID serviceproduct = ServiceProductRt.id;  
        
        List<SVMXC__Service_Order_Line__c> solines = new List<SVMXC__Service_Order_Line__c>();
        /*solines = [select id, Name, RecordTypeId ,WDBackOfficeReference__c,RecordType.Name,SVMXC__Service_Order__c,SVMXC__Line_Type__c ,SVMXC__Activity_Type__c,HourType__c,SVMXC__Serial_Number__c,SVMXC__Group_Member__c,SVMXC__Expense_Type__c,SVMXC__Date_Received__c,IsBillable__c,SVMXC__Work_Description__c ,SVMXC__Start_Date_and_Time__c ,SVMXC__End_Date_and_Time__c ,TotalTime__c, SVMXC__Work_Detail__c, ExpenseQuantity__c, LinePricePerUnit__c, CurrencyIsoCode,PartsOrderLine__c,PartsOrderLine__r.TECH_BOPartsOrderLineRecordId__c,PartsOrderLine__r.SKU__c ,PartsOrderLine__r.BOMaterialReference__c,PartsOrderLine__r.SVMXC__Product__r.Name,PartsOrderLine__r.SVMXC__Expected_Quantity2__c,ShippedQuantity_del__c,InstalledQuantity__c,FailedQuantity__c,ReturnedQuantity__c, Level_Required__c,
Part_Order_Line_Type__c,PartsOrderLine__r.Generic_reference__c,PartsOrderLine__r.Free_text_reference__c,Left_Onsite_Qty__c,Not_Returned_Reason__c
from SVMXC__Service_Order_Line__c where Id IN :WDIds OR WDBackOfficeReference__c IN : BackOfficeWDRef  ];   */
        system.debug('++Work Details IDS in Get Query Function' +WDIds+ 'Back Office Number ' +BackOfficeWDRef);
        if ( WDIds.isEmpty() )
        {
            system.debug('Inside to query on Back office number');
            solines = [select id, Name,WDBackOfficeReference__c,SVMXC__Serial_Number__c,Shipped_Serial_Number__c,SVMXC__Service_Order__c,SVMXC__Product__c
                       from SVMXC__Service_Order_Line__c where WDBackOfficeReference__c IN : BackOfficeWDRef  ];
        }
        else if ( BackOfficeWDRef.isEmpty() )
        {
            system.debug('Inside to query on WD Ids');
            solines = [select id, Name,WDBackOfficeReference__c,SVMXC__Serial_Number__c,Shipped_Serial_Number__c,SVMXC__Service_Order__c,SVMXC__Product__c
                       from SVMXC__Service_Order_Line__c where Id IN :WDIds  ];  
        }
        else{
            system.debug('Inside to query on WD Ids and Back office Id');
            solines = [select id, Name,WDBackOfficeReference__c,SVMXC__Serial_Number__c,Shipped_Serial_Number__c,SVMXC__Service_Order__c,SVMXC__Product__c
                       from SVMXC__Service_Order_Line__c where Id IN :WDIds OR WDBackOfficeReference__c IN : BackOfficeWDRef  ];  
        }
        System.debug('++SO Lines' +solines);
        
        
        return  solines;     
    }
    
}