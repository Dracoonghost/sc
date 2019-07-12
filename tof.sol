pragma solidity ^0.5.1;

contract artContract{
      address artist;
      address buyer;
      address owner;

      uint size;
      uint price;
      string requestType;
      uint creativeFreedom ;
      uint bookingFor;
      string bookingPeriod;
      string rushRequests;
      string referenceOtherArt;
      uint visualReferences;
      string draftReviews;
      // other/s
      uint finalInvoiceVariation;
      uint revisionsOfWork;
      uint chargersForEdit;
      uint billing;
      uint cancellationCharges;
      uint cancellationCharges48hr;

      string freeText;

      constructor (address _artist, address _buyer, address _owner) public{
          artist = _artist;
          buyer = _buyer;
          owner = _owner;
      }



  //----------------------------------------------------------------------
   //                Setters
   //----------------------------------------------------------------------
   function setSize(uint _size) public{
       require(msg.sender == owner);
       size = _size;
       emit SIZE(msg.sender, _size);
   }
   function setPrice(uint _price) public{
       require(msg.sender == owner);
       price = _price;
       emit PRICE(msg.sender, _price);
   }
   function setRequestType(string memory _requestType) public{
       require(msg.sender == owner);
       requestType = _requestType;
       emit REQUEST_TYPE(msg.sender, _requestType);
   }
   function setCreativeFreedom(uint _creativeFreedom) public{
       require(msg.sender == owner);
       creativeFreedom = _creativeFreedom;
       emit CREATIVE_FREEDOM(msg.sender, _creativeFreedom);
   }
   function setBookingFor(uint _bookingFor) public{
       require(msg.sender == owner);
       bookingFor = _bookingFor;
       emit BOOKING_FOR(msg.sender, _bookingFor);
   }
   function setBookingPeriod(string memory _bookingPeriod) public{
       require(msg.sender == owner);
       bookingPeriod = _bookingPeriod;
       emit BOOKING_PERIOD(msg.sender, _bookingPeriod);
   }
   function setRushRequests(string memory _rushRequests) public{
       require(msg.sender == owner);
       rushRequests = _rushRequests;
       emit RUSH_REQUESTS(msg.sender, _rushRequests);
   }
   function setReferenceOtherArt(string memory _referenceOtherArt) public{
       require(msg.sender == owner);
       referenceOtherArt = _referenceOtherArt;
       emit REFERENCE_OTHER_ART(msg.sender, _referenceOtherArt);
   }
   function setVisualReferences(uint _visualReferences) public{
       require(msg.sender == owner);
       visualReferences = _visualReferences;
       emit VISUAL_REFERENCES(msg.sender, _visualReferences);
   }
   function setDraftReviews(string memory _draftReviews) public{
       require(msg.sender == owner);
       draftReviews = _draftReviews;
       emit DRAFT_REVIEWS(msg.sender, _draftReviews);
   }
   function setFinalInvoiceVariation(uint _finalInvoiceVariation) public{
       require(msg.sender == owner);
       finalInvoiceVariation = _finalInvoiceVariation;
       emit FINAL_INVOICE_VARIATION(msg.sender, _finalInvoiceVariation);
   }
   function setRevisionOfWork(uint _revisionsOfWork) public{
       require(msg.sender == owner);
       revisionsOfWork = _revisionsOfWork;
       emit REVISION_OF_WORK(msg.sender, _revisionsOfWork);
   }
   function setChargersForEdit(uint _chargersForEdit) public{
       require(msg.sender == owner);
       chargersForEdit = _chargersForEdit;
       emit CHARGES_FOR_EDIT(msg.sender, _chargersForEdit);
   }
   function setBilling(uint _billing) public{
       require(msg.sender == owner);
       billing = _billing;
       emit BILLING(msg.sender, _billing);
   }
   function setCancellationCharges(uint _cancellationCharges) public{
       require(msg.sender == owner);
       cancellationCharges = _cancellationCharges;
       emit CANCELLATION_CHARGES(msg.sender, _cancellationCharges);
   }
   function setCancellationCharges48hr(uint _cancellationCharges48hr) public{
       require(msg.sender == owner);
       cancellationCharges48hr = _cancellationCharges48hr;
       emit CANCELLATION_CHARGES48hr(msg.sender, _cancellationCharges48hr);
   }
   function setFreeText(string memory _freeText) public{
       require(msg.sender == owner);
       freeText = _freeText;
       emit FREE_TEXT(msg.sender, _freeText);
   }

   //----------------------------------------------------------------------
   //                Getters
   //----------------------------------------------------------------------

   function getSize() public view returns(uint){
      return size;
   }
   function getPrice() public view returns(uint){
      return price;
   }
   function getRequestType() public view returns(string memory){
      return requestType;
   }
   function getCreativeFreedom() public view returns(uint){
       return creativeFreedom;
   }
   function getBookingFor() public view returns(uint){
      return bookingFor;
   }
   function getBookingPeriod() public view returns(string memory){
       return bookingPeriod;
   }
   function getRushRequests() public view returns(string memory){
      return rushRequests;
   }
   function setReferenceOtherArt() public view returns(string memory){
       return referenceOtherArt;
   }
   function  getVisualReferences() public view returns(uint){
        return visualReferences;
   }

   function  getDraftReviews() public view returns(string memory){
       return draftReviews;
   }
   function  getFinalInvoiceVariation() public view returns(uint){
       return finalInvoiceVariation;
   }
   function  getRevisionOfWork() public view returns(uint){
       return revisionsOfWork;
   }
   function getChargersForEdit() public  view returns(uint){
      return chargersForEdit;
   }
   function  getBilling()  public view returns(uint){
       return billing;
   }
   function  getCancellationCharges() public view returns(uint){
      return cancellationCharges;
   }
   function  getCancellationCharges48hr() public view returns(uint){
      return cancellationCharges48hr;
   }
   function  getFreeText() public view returns(string memory){
      return freeText;
   }


   //----------------------------------------------------------------------
   //                EVENTS
   //----------------------------------------------------------------------

   event ART_DETAILS(address indexed _from, uint _size, uint _price, string  _requestType, uint _creativeFreedom, uint _bookingFor, string  _bookingPeriod, string  _rushRequests, string  _referenceOtherArt,  uint _visualReferences, string   _draftReviews);
   event OTHER_DETAILS(address indexed _from, uint _finalInvoiceVariation, uint _revisionsOfWork, uint _chargersForEdit, uint _billing, uint _cancellationCharges, uint _cancellationCharges48hr, string _freeText);
   event SIZE(address indexed _from, uint _size);
   event PRICE(address indexed _from, uint _price);
   event REQUEST_TYPE(address indexed _from, string _requestType);
   event CREATIVE_FREEDOM(address indexed _from, uint _creativeFreedom);
   event BOOKING_FOR(address indexed _from, uint _bookingFor);
   event BOOKING_PERIOD(address indexed _from, string _bookingPeriod );
   event RUSH_REQUESTS(address indexed _from, string _rushRequests);
   event REFERENCE_OTHER_ART(address indexed _from, string _referenceOtherArt);
   event VISUAL_REFERENCES(address indexed _from, uint _visualReferences);
   event DRAFT_REVIEWS(address indexed _from, string _draftReviews);
   event FINAL_INVOICE_VARIATION(address indexed _from, uint _finalInvoiceVariation);
   event REVISION_OF_WORK(address indexed _from, uint _revisionsOfWork);
   event CHARGES_FOR_EDIT(address indexed _from, uint _chargersForEdit);
   event BILLING(address indexed _from, uint _billing);
   event CANCELLATION_CHARGES(address indexed _from, uint _cancellationCharges);
   event CANCELLATION_CHARGES48hr(address indexed _from, uint _cancellationCharges48hr);
   event FREE_TEXT(address indexed _from, string _freeText);


}
    contract deployArt{

        function createContract(address artist, address buyer) public returns(address){
            artContract art = new artContract(artist, buyer, msg.sender);
            return address(art);

        }

    }






    
