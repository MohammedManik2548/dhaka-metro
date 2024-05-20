
class Api{
  //static const String baseUrl='http://10.71.11.238:8000/api/';//remote
    //static const String baseUrl='http://10.200.2.164:8000/api/';//Emran


    // static const String baseUrl='https://backoffice.aims-bangladesh.com:8080/api/';//UAT
    static const String baseUrl='https://backoffice.aims-bangladesh.com:8001/api/';//Live

  ///Login Api
  static const String loginUrl = baseUrl+'login';

  ///OTP Apis
  static const String sendOTP = baseUrl+'send-otp';
  static const String verifyotpUrl = baseUrl+'verifyotp';
  static const String registerUrl = baseUrl+'register';

  /// Dashboard Apis
  static const String getDashboardInvestmentSummaryData=baseUrl+'investor/dashboard'; //Post Method
  static const String getDashboardInvestmentSummaryDetailsByID=baseUrl+'investor/account/details';//Post Mehtod
  static const String getTutorialData=baseUrl+'tutorial';//Get Method
  static const String getProfileData=baseUrl+'investor/profile';//Post Method
  static const String postFundUrl=baseUrl+'fund-type';//Post Method
  static const String postBoAccountUrl=baseUrl+'bo-account';//Post Method
  static const String postPaymentTypeUrl=baseUrl+'payment-type';//Post Method
  static const String postInverstorPurchaseUrl=baseUrl+'investor-purchase';//Post Method
  static const String bkashPayment=baseUrl+'payment-gateway';//Post Method
  static const String getStepCheck=baseUrl+'get-step-check';//Post Method
  static const String postFileUpload=baseUrl+'investor/surrender/dp/upload';//Post Method
  static const String updateProfile=baseUrl+'change-profile';//Post Method
  static const String getPrice=baseUrl+'get-current-nav';//Post Method
  static const String getUser=baseUrl+'get-user';//Post Method
  static const String sendOtp =baseUrl+'send-otp';//Get Method
  /// Portfolio Apis
  static const String getPortfolioData=baseUrl+'get-accountlist';//Post Method
  static const String getPortfolioDataAfterSelection=baseUrl+'get-accountlist';//Post Method
  static const String postPortfolioHistorySubmit=baseUrl+'investor/report/portfolio/search';//Post Method
  static const String getPortfolioReportUrl=baseUrl+'portfolio-report';
  static const String downloadPortfolioUrl=baseUrl+'portfolio-report';
  static const String getGainLossReportReportUrl=baseUrl+'gainloss-report';
  static const String getPortfolioStatementDownload=baseUrl+'investor/report/portfoliodownload';//Post Method

  ///report apis
  static const String reportTransaction=baseUrl+'transaction-report';
  static const String reportPortfolioStatement=baseUrl+'portfolio-report';//Get Method
  static const String reportSurrenderForm=baseUrl+'surrender-report';//Get Method
  static const String reportAllocation=baseUrl+'unit-allocation-report';//Get Method
  static const String reportNavHistory=baseUrl+'nav-history-report';//Get Method
  static const String surrenderDownloadAck=baseUrl+'surrender-download';//Get Method
  static const String surrenderDownloadCBL=baseUrl+'cdblsur-transfer-form';//Get Method
  static const String reportGainLoss=baseUrl+'gainloss-report';
  static const String reportTaxCertificate=baseUrl+'';



  ///Transaction History

  static const String getTransactionHistoryData=baseUrl+'gainloss-report';//Post Method
  static const String getTransactionHistoryByIdSelected=baseUrl+'investor/account/list/report';//Post Method
  static const String postTransactionHistorySubmit=baseUrl+'tax-certificate-report';//Post Method
  static const String transactionHistoryDownload=baseUrl+'transaction-report';//Post Method
  static const String submitPurchaseSip=baseUrl+'investor-purchase';//Post Meth

  ///Purchase Apis
  static const String getBasicPurchaseData=baseUrl+'investor/purchase/create';//Post Method
  static const String getPurchaseAccountSelected=baseUrl+'investor/account/list/purchase';//Post Method
  static const String getPriceDataRegistrationWise=baseUrl+'investor/account/price';//Post Method
  static const String getBranchData=baseUrl+'branch/by/bank/55';//Post Method
  static const String purchaseSubmit=baseUrl+'investor/purchase/submit';//Post Method
  static const String purchaseSendOtp=baseUrl+'send-otp';//Get Method
  static const String purchaseVerifyOtp=baseUrl+'verifyotp';//Post Method
  static const String ackDownload=baseUrl+'purchase-download';//Get Method
  static const String cdblDownload=baseUrl+'cdbl-transfer-form';//Get Method



  ///Surrender Apis
  static const String getBasicSurrenderData=baseUrl+'investor/surrender/create';//Post Method
  static const String documentUrl=baseUrl+'document-form';//Post Method
  static const String getSurrenderRegistration=baseUrl+'investor/account/list/surrender';//Post Method
  static const String getSurrenderPriceData=baseUrl+'investor/account/surrender/price';//Post Method
  static const String getSurrenderCalculateData=baseUrl+'investor/surrender/getamount';//Post Method
  static const String surrenderSubmit=baseUrl+'investor/surrender/submit';//Post Method
  static const String getInvestorValue=baseUrl+'investor-surrender';//Post Method
  static const String submitSurrender=baseUrl+'investor-surrender';//Post Method
  static const String surrenderSendOtp=baseUrl+'send-otp';//Get Method

  /// Nav History Apis
  static const String getGetNavHistoryFindedData=baseUrl+'investor/report/navhistoryajax';//Post Method
  static const String getBasicNavHistoryData=baseUrl+'investor/report/navhistory';//Post Method
  static const String getFiscalYear=baseUrl+'get-fiscal-year';//Post Method

  ///Forgot Password
  static const String forgotPassword=baseUrl+'forgot-password';//Post Method

  ///Update Profile
  static const String getUpdateProfileBasicData=baseUrl+'get-portfolio';//Post Method
  static const String getAccountDetailsUrl=baseUrl+'get-accountdetails?fund=';//Post Method
  static const String getNavUrl=baseUrl+'get-current-nav?fund=';//Post Method
  static const String getBankName=baseUrl+'get-bank';//Post Method
  static const String getBankBranchName=baseUrl+'get-branch';//Post Method
  static const String profileUpdateSubmit=baseUrl+'investor/profile/update';//Post Method
  static const String getProfile=baseUrl+'investor/profile';//Post Method

  ///Change Password
  static const String changePassword=baseUrl+'change-password';//Post Method


  ///Change Password
  static const String basicInfoSubmitBOAPI=baseUrl+'investor/account/changepass';//Post Method

///Applicant's Form
  static const String submitApplicant = baseUrl+'';
  static const String getOccupation = baseUrl+'get-ocupation';
  static const String getCountry = baseUrl+'get-nationality';
  static const String submitApplicantForm = baseUrl+'applicant-form';
  static const String submitNomineeForm = baseUrl+'nominee-form';
  static const String submitPayment = baseUrl+'payment-instruction';


  ///Get nav price
 static const String getNabPrice = baseUrl+'get-current-nav';
 ///Non Sip Fund Submit
 static const String submitNoNSip = baseUrl+'fund-type';
 static const String sipSubmit = baseUrl+'create-new-account';
}

/*
/api/investor-purchase
api/payment-gateway
 */