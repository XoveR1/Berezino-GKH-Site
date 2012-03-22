<?php
// config.sef.php : configuration file for sh404SEF for Joomla 1.5.x
// 3.4.5.1255
// saved at: 2012-03-22 23:11:14
// by: admin (id: 42 )
// domain: http://berezinogkh

if (!defined('_JEXEC')) die('Direct Access to this location is not allowed.');

$version = '3.4.5.1255';
$Enabled = '1';
$replacement = '-';
$pagerep = '-';
$stripthese = '.,|~|!|@|%|^|(|)|<|>|:|;|{|}|[|]|&|`|„|‹|’|‘|“|”|•|›|«|´|»|°';
$shReplacements = 'А|A, Б|B, В|V, Г|G, Д|D, Е|E, Ё|E, Ж|J, З|Z, И|I, Й|ie, К|K, Л|L, М|M, Н|N, О|O, П|P, Р|R, С|S, Т|T, У|U, Ф|F, Х|X, Ц|C, Ч|CH, Ш|SH, Щ|SH, Ъ|`, Ы|I, Ь|`, Э|E, Ю|YU, Я|YA, а|a, б|b, в|v, г|g, д|d, е|e, ё|e, ж|j, з|z, и|i, й|ie, к|k, л|l, м|m, н|n, о|o, п|p, р|r, с|s, т|t, у|u, ф|f, х|x, ц|c, ч|ch, ш|sh, щ|sh, ъ|`, ы|i, ь|`, э|e, ю|yu, я|ya';
$suffix = '';
$addFile = '';
$friendlytrim = '-|.';
$LowerCase = '1';
$ShowSection = false;
$ShowCat = true;
$UseAlias = '0';
$page404 = 0;
$predefined = array();
$skip = array();
$nocache = array();
$shDoNotOverrideOwnSef = array();
$shLog404Errors = '1';
$shUseURLCache = '0';
$shMaxURLInCache = '10000';
$shTranslateURL = '1';
$shInsertLanguageCode = '0';
$notTranslateURLList = array();
$notInsertIsoCodeList = array();
$shInsertGlobalItemidIfNone = '0';
$shInsertTitleIfNoItemid = '0';
$shAlwaysInsertMenuTitle = '0';
$shAlwaysInsertItemid = '0';
$shDefaultMenuItemName = '';
$shAppendRemainingGETVars = true;
$shVmInsertShopName = '0';
$shInsertProductId = '0';
$shVmUseProductSKU = '0';
$shVmInsertManufacturerName = '0';
$shInsertManufacturerId = '0';
$shVMInsertCategories = '1';
$shVmAdditionalText = '1';
$shVmInsertFlypage = '1';
$shInsertCategoryId = '0';
$shInsertNumericalId = '0';
$shInsertNumericalIdCatList = array("");
$shRedirectNonSefToSef = '1';
$shRedirectJoomlaSefToSef = false;
$shConfig_live_secure_site = '';
$shActivateIJoomlaMagInContent = true;
$shInsertIJoomlaMagIssueId = false;
$shInsertIJoomlaMagName = false;
$shInsertIJoomlaMagMagazineId = false;
$shInsertIJoomlaMagArticleId = false;
$shInsertCBName = '0';
$shCBInsertUserName = '0';
$shCBInsertUserId = '1';
$shCBUseUserPseudo = '1';
$shLMDefaultItemid = 0;
$shInsertFireboardName = '0';
$shFbInsertCategoryName = '1';
$shFbInsertCategoryId = '0';
$shFbInsertMessageSubject = '1';
$shFbInsertMessageId = '1';
$shInsertMyBlogName = '0';
$shMyBlogInsertPostId = '1';
$shMyBlogInsertTagId = '0';
$shMyBlogInsertBloggerId = '1';
$shInsertDocmanName = '0';
$shDocmanInsertDocId = '1';
$shDocmanInsertDocName = '1';
$shDMInsertCategories = '1';
$shDMInsertCategoryId = '0';
$shEncodeUrl = false;
$guessItemidOnHomepage = '0';
$shForceNonSefIfHttps = '0';
$shRewriteMode = '0';
$shRewriteStrings = array("/","/index.php/","/index.php?/");
$shRecordDuplicates = true;
$shRemoveGeneratorTag = '1';
$shPutH1Tags = false;
$shMetaManagementActivated = '1';
$shInsertContentTableName = '1';
$shContentTableName = 'Table';
$shAutoRedirectWww = '0';
$shVmInsertProductName = '1';
$shForcedHomePage = '';
$shInsertContentBlogName = '0';
$shContentBlogName = '';
$shInsertMTreeName = '0';
$shMTreeInsertListingName = '1';
$shMTreeInsertListingId = '1';
$shMTreePrependListingId = '1';
$shMTreeInsertCategories = '1';
$shMTreeInsertCategoryId = '0';
$shMTreeInsertUserName = '1';
$shMTreeInsertUserId = '1';
$shInsertNewsPName = false;
$shNewsPInsertCatId = false;
$shNewsPInsertSecId = false;
$shInsertRemoName = false;
$shRemoInsertDocId = true;
$shRemoInsertDocName = true;
$shRemoInsertCategories = 1;
$shRemoInsertCategoryId = false;
$shCBShortUserURL = '0';
$shKeepStandardURLOnUpgrade = '1';
$shKeepCustomURLOnUpgrade = '1';
$shKeepMetaDataOnUpgrade = '1';
$shKeepModulesSettingsOnUpgrade = true;
$shMultipagesTitle = '1';
$encode_page_suffix = '';
$encode_space_char = '-';
$encode_lowercase = '1';
$encode_strip_chars = '.,|~|!|@|%|^|(|)|<|>|:|;|{|}|[|]|&|`|„|‹|’|‘|“|”|•|›|«|´|»|°';
$spec_chars_d = 'А,Б,В,Г,Д,Е,Ё,Ж,З,И,Й,К,Л,М,Н,О,П,Р,С,Т,У,Ф,Х,Ц,Ч,Ш,Щ,Ъ,Ы,Ь,Э,Ю,Я,а,б,в,г,д,е,ё,ж,з,и,й,к,л,м,н,о,п,р,с,т,у,ф,х,ц,ч,ш,щ,ъ,ы,ь,э,ю,я,';
$spec_chars = 'A,B,V,G,D,E,E,J,Z,I,ie,K,L,M,N,O,P,R,S,T,U,F,X,C,CH,SH,SH,`,I,`,E,YU,YA,a,b,v,g,d,e,e,j,z,i,ie,k,l,m,n,o,p,r,s,t,u,f,x,c,ch,sh,sh,`,i,`,e,yu,ya,';
$content_page_format = '%s-%d';
$content_page_name = '';
$shKeepConfigOnUpgrade = '1';
$shSecEnableSecurity = '1';
$shSecLogAttacks = true;
$shSecOnlyNumVars = array("itemid","limit","limitstart");
$shSecAlphaNumVars = array();
$shSecNoProtocolVars = array("task","option","no_html","mosmsg","lang");
$shSecCheckHoneyPot = false;
$shSecHoneyPotKey = '';
$shSecEntranceText = '<p>Sorry. You are visiting this site from a suspicious IP address, which triggered our protection system.</p>
    <p>If you <strong>ARE NOT</strong> a malware robot of any kind, please accept our apologies for the inconvenience. You can access the page by clicking here : ';
$shSecSmellyPotText = 'The following link is here to further trap malicious internet robots, so please don\'t click on it : ';
$monthsToKeepLogs = 1;
$shSecActivateAntiFlood = true;
$shSecAntiFloodOnlyOnPOST = false;
$shSecAntiFloodPeriod = 10;
$shSecAntiFloodCount = 10;
$shLangTranslateList = array("en-GB"=>"0");
$shLangInsertCodeList = array("en-GB"=>"0");
$defaultComponentStringList = array("banners"=>"","contact"=>"","content"=>"","feedback"=>"","finder"=>"","login"=>"","mailto"=>"","newsfeeds"=>"","phocagallery"=>"","search"=>"","weblinks"=>"","wrapper"=>"");
$pageTexts = array("en-GB"=>"Page-%s");
$shAdminInterfaceType = 1;
$shInsertNoFollowPDFPrint = true;
$shInsertReadMorePageTitle = false;
$shMultipleH1ToH2 = '0';
$shVmUsingItemsPerPage = '1';
$shSecCheckPOSTData = true;
$shSecCurMonth = 0;
$shSecLastUpdated = 0;
$shSecTotalAttacks = 0;
$shSecTotalConfigVars = 0;
$shSecTotalBase64 = 0;
$shSecTotalScripts = 0;
$shSecTotalStandardVars = 0;
$shSecTotalImgTxtCmd = 0;
$shSecTotalIPDenied = 0;
$shSecTotalUserAgentDenied = 0;
$shSecTotalFlooding = 0;
$shSecTotalPHP = 0;
$shSecTotalPHPUserClicked = 0;
$shInsertSMFName = true;
$shSMFItemsPerPage = 20;
$shInsertSMFBoardId = true;
$shInsertSMFTopicId = true;
$shinsertSMFUserName = false;
$shInsertSMFUserId = true;
$appendToPageTitle = '';
$prependToPageTitle = '';
$debugToLogFile = '0';
$debugStartedAt = 0;
$debugDuration = 3600;
$shInsertOutboundLinksImage = '0';
$shImageForOutboundLinks = 'external-black.png';
$useCatAlias = '0';
$useSecAlias = false;
$useMenuAlias = '1';
$alwaysAppendItemsPerPage = '0';
$redirectToCorrectCaseUrl = '1';
$jclInsertEventId = false;
$jclInsertCategoryId = false;
$jclInsertCalendarId = false;
$jclInsertCalendarName = false;
$jclInsertDate = false;
$jclInsertDateInEventView = true;
$ContentTitleShowSection = false;
$ContentTitleShowCat = true;
$ContentTitleUseAlias = '0';
$ContentTitleUseCatAlias = '0';
$ContentTitleUseSecAlias = false;
$pageTitleSeparator = ' / ';
$ContentTitleInsertArticleId = '0';
$shInsertContentArticleIdCatList = array("");
$shJSInsertJSName = '1';
$shJSShortURLToUserProfile = '1';
$shJSInsertUsername = '1';
$shJSInsertUserFullName = '0';
$shJSInsertUserId = '0';
$shJSInsertGroupCategory = '1';
$shJSInsertGroupCategoryId = '0';
$shJSInsertGroupId = '0';
$shJSInsertGroupBulletinId = '0';
$shJSInsertDiscussionId = '1';
$shJSInsertMessageId = '1';
$shJSInsertPhotoAlbum = '1';
$shJSInsertPhotoAlbumId = '0';
$shJSInsertPhotoId = '1';
$shJSInsertVideoCat = '1';
$shJSInsertVideoCatId = '0';
$shJSInsertVideoId = '1';
$shFbInsertUserName = '1';
$shFbInsertUserId = '1';
$shFbShortUrlToProfile = '1';
$shPageNotFoundItemid = 0;
$autoCheckNewVersion = '1';
$error404SubTemplate = 'index';
$enablePageId = '1';
$compEnablePageId = array("contact","content","newsfeeds","weblinks");
$analyticsEnabled = false;
$analyticsReportsEnabled = true;
$analyticsType = 'ga';
$analyticsId = '';
$analyticsExcludeIP = array();
$analyticsMaxUserLevel = '';
$analyticsUser = '';
$analyticsPassword = '';
$analyticsAccount = '';
$analyticsProfile = '';
$autoCheckNewAnalytics = true;
$analyticsDashboardDateRange = 'week';
$analyticsEnableTimeCollection = true;
$analyticsEnableUserCollection = true;
$analyticsDashboardDataType = 'pageviews';
$slowServer = '0';
$useJoomsefRouter = array();
$useAcesefRouter = array();
$insertShortlinkTag = '1';
$insertRevCanTag = '0';
$insertAltShorterTag = '0';
$canReadRemoteConfig = '0';
$stopCreatingShurls = '0';
$shurlBlackList = '';
$shurlNonSefBlackList = '';
$includeContentCat = '0';
$includeContentCatCategories = '4';
$contentCategoriesSuffix = 'all';
$contentTitleIncludeCat = '2';
$useContactCatAlias = '0';
$contactCategoriesSuffix = 'all';
$includeContactCat = '5';
$includeContactCatCategories = '2';
$useWeblinksCatAlias = '0';
$weblinksCategoriesSuffix = 'all';
$includeWeblinksCat = '2';
$includeWeblinksCatCategories = '2';
$liveSites = array("en-GB"=>"");
$alternateTemplate = '';
$useJoomlaRouter = array();
$slugForUncategorizedContent = '0';
$slugForUncategorizedContact = '0';
$slugForUncategorizedWeblinks = '0';
$enableMultiLingualSupport = '0';
$enableOpenGraphData = false;
$ogEnableDescription = true;
$ogType = 'article';
$ogImage = '';
$ogEnableSiteName = true;
$ogSiteName = '';
$ogEnableLocation = false;
$ogLatitude = '';
$ogLongitude = '';
$ogStreetAddress = '';
$ogLocality = '';
$ogPostalCode = '';
$ogRegion = '';
$ogCountryName = '';
$ogEnableContact = false;
$ogEmail = '';
$ogPhoneNumber = '';
$ogFaxNumber = '';
$fbAdminIds = '';
$socialButtonType = 'facebook';
$fileAccessStatus = array("COM_SH404SEF_WRITEABLE","COM_SH404SEF_WRITEABLE","COM_SH404SEF_WRITEABLE","COM_SH404SEF_WRITEABLE","COM_SH404SEF_WRITEABLE","COM_SH404SEF_WRITEABLE","COM_SH404SEF_WRITEABLE");
?>