/*************************************************************************
* ADOBE CONFIDENTIAL
* ___________________
*
*  Copyright 2015 Adobe Systems Incorporated
*  All Rights Reserved.
*
* NOTICE:  All information contained herein is, and remains
* the property of Adobe Systems Incorporated and its suppliers,
* if any.  The intellectual and technical concepts contained
* herein are proprietary to Adobe Systems Incorporated and its
* suppliers and are protected by all applicable intellectual property laws,
* including trade secret and or copyright laws.
* Dissemination of this information or reproduction of this material
* is strictly forbidden unless prior written permission is obtained
* from Adobe Systems Incorporated.
**************************************************************************/
const PDF_MIME_TYPE="application/pdf",FILE_ROW_SELECTOR='.O5x1db.ACGwFc:not([data-double-click-handler-added="true"])',CUSTOM_ATTRIBUTE_NAME="data-double-click-handler-added",PROMPT_DIV_ID="edit-with-acrobat";let addOnHost,editWithAcrobatText,selectors,addOnId,tabId,userIdGlobal,addedInstallationPageIFrame,enableFramingToGetAddOnInstallStatus,addOnInstallStatusPromiseResolve,addOnInstallStatusPromise,isEditWithAcrobatVisible=!1;const getVisibleLightBoxViewerElement=()=>{let e;for(let t=0;t<selectors?.visibleLightBoxViewer.length&&(e=document.querySelector(selectors?.visibleLightBoxViewer[t]),!e);t++);return e},getExtendedNameOfLoggedInUser=()=>{for(let e=0;e<selectors?.loggedInUserExtendedName.length;e++){const{element:t,attribute:{name:n}}=selectors?.loggedInUserExtendedName[e],i=document.querySelector(t);if(i){const e=i.getAttribute(n);if(e)return e}}return null},getUserId=()=>{if(userIdGlobal)return userIdGlobal;const e=getExtendedNameOfLoggedInUser();if(!e)return null;for(let t=0;t<selectors?.assetOwnerIdName.length;t++){const{element:n,attribute:{id:i,name:o}}=selectors?.assetOwnerIdName[t],a=document.querySelectorAll(n);if(a&&a.length>0)for(let t=0;t<a.length;t++){const n=a[t].getAttribute(o);if(e?.includes(n)){const e=a[t].getAttribute(i);if(e)return userIdGlobal=e,userIdGlobal}}}return userIdGlobal},addInstallationPageAsInvisibleIframeAndAcrobatPromptIfPDF=e=>{try{if(addedInstallationPageIFrame)return;let t=JSON.parse(e.querySelector("#drive-active-item-info")?.textContent);if(!t||t?.mimeType!==PDF_MIME_TYPE)return void hideInvisibleAcrobatInstallationPage();const n=document.createElement("iframe"),i=window?.document?.location?.pathname.includes("/u/")?window.document.location.pathname.split("/")[3]:0;n.setAttribute("src",`https://workspace.google.com/u/${i}/marketplace/appfinder/app/${addOnId}?tabId=${tabId}&contentScriptIframe=true&origin=https%3A%2F%2Fdrive.google.com&extension_type=drive_app&pann=drive_app_widget&app_capability=1&hl=en&pre_installed_app_ids=${addOnId}`),n.setAttribute("id","acrobat-addon-installation-page"),n.style.cssText="position:absolute; top:100px; height:500px; width:800px; visibility: hidden",document.body.append(n),addedInstallationPageIFrame=!0,addOnInstallStatusPromise=new Promise((e=>{addOnInstallStatusPromiseResolve=e})),addOnInstallStatusPromise?.then((({lightBoxViewer:e,installStatus:t})=>addEditWithAcrobat(e,t)))}catch(e){}},fileRowDoubleClickCallback=()=>{setTimeout((()=>{try{const e=getVisibleLightBoxViewerElement();e&&sendAnalyticsIfPDF(e)}catch(e){}}),1e3)},sendAnalyticsIfPDF=e=>{try{const t=JSON.parse(e.querySelector("#drive-active-item-info")?.textContent);t&&t?.mimeType===PDF_MIME_TYPE&&chrome.runtime.sendMessage({main_op:"analytics",analytics:[["DCBrowserExt:Gdrive:PDF:Viewer"]]})}catch(e){}},addDoubleClickListenerToFileRow=e=>{try{e.addEventListener("dblclick",fileRowDoubleClickCallback)}catch(e){}},addDoubleClickEventListenerToAllFileRows=()=>{try{const e=document.querySelectorAll(FILE_ROW_SELECTOR);for(let t of e){const e=t.closest("[role='row']");t.getAttribute(CUSTOM_ATTRIBUTE_NAME)||(t.setAttribute(CUSTOM_ATTRIBUTE_NAME,"true"),addDoubleClickListenerToFileRow(e))}}catch(e){}},hideEditWithAcrobat=()=>{if(!isEditWithAcrobatVisible)return;const e=document.getElementById(PROMPT_DIV_ID);e&&e.parentElement.removeChild(e),isEditWithAcrobatVisible=!1},editWithAcrobatClickHandler=e=>{chrome.runtime.sendMessage({main_op:"analytics",analytics:[[`DCBrowserExt:Gdrive_EditWithAcrobat:Clicked: ${e}`]]});const t=getVisibleLightBoxViewerElement(),n=JSON.parse(t.querySelector("#drive-active-item-info")?.textContent),i=getUserId(),o=JSON.stringify({ids:[n.id],action:"open",userId:i,resourceKeys:{}}),a=`${addOnHost}?state=${o}&origin=browser_extension${e?`&installStatus=${e}`:""}`;window.open(a,"_blank")},createAcrobatIconElement=()=>{const e=document.createElement("img");return e.setAttribute("src",chrome.runtime.getURL("browser/images/acrobat_dc_appicon_128.png")),e.setAttribute("id","acrobat-icon"),e},createEditWithAcrobatTextElement=()=>{const e=document.createElement("span");return e.setAttribute("id","edit-with-acrobat-text"),e.textContent=editWithAcrobatText||"Edit with Acrobat",e},createEditWithAcrobatPrompt=e=>{const t=document.createElement("div"),n=createAcrobatIconElement(),i=createEditWithAcrobatTextElement();return t.setAttribute("id",PROMPT_DIV_ID),t.appendChild(n),t.appendChild(i),t.addEventListener("click",(()=>editWithAcrobatClickHandler(e))),t},getParentElementForAcrobatPrompt=()=>{let e;for(let t=0;t<selectors?.promptParentElement.length&&(e=document.querySelector(selectors?.promptParentElement[t]),!e);t++);return e},addEditWithAcrobat=(e,t)=>{try{let n=JSON.parse(e.querySelector("#drive-active-item-info")?.textContent);if(!n)return chrome.runtime.sendMessage({main_op:"analytics",analytics:[["DCBrowserExt:Gdrive:FileId:NotFound"]]}),void hideEditWithAcrobat();if(n?.mimeType!==PDF_MIME_TYPE)return void hideEditWithAcrobat();if(!getUserId())return chrome.runtime.sendMessage({main_op:"analytics",analytics:[["DCBrowserExt:Gdrive:UserId:NotFound"]]}),void hideEditWithAcrobat();if(isEditWithAcrobatVisible)return;const i=createEditWithAcrobatPrompt(t),o=getParentElementForAcrobatPrompt();o?(o.appendChild(i),isEditWithAcrobatVisible=!0,chrome.runtime.sendMessage({main_op:"analytics",analytics:[[`DCBrowserExt:Gdrive_EditWithAcrobat:Shown:${t}`]]})):hideEditWithAcrobat()}catch(e){hideEditWithAcrobat()}};function addBodyObserver(){try{const e={childList:!0,subtree:!0};new MutationObserver((function(e){for(let t of e)if(t.addedNodes&&document.querySelector(FILE_ROW_SELECTOR)){addDoubleClickEventListenerToAllFileRows();break}const t=getVisibleLightBoxViewerElement();t?enableFramingToGetAddOnInstallStatus?addInstallationPageAsInvisibleIframeAndAcrobatPromptIfPDF(t):addEditWithAcrobat(t):(hideEditWithAcrobat(),hideInvisibleAcrobatInstallationPage())})).observe(document.body,e)}catch(e){}}const hideInvisibleAcrobatInstallationPage=()=>{const e=document.getElementById("acrobat-addon-installation-page");e&&e.parentElement.removeChild(e),addedInstallationPageIFrame=!1,addOnInstallStatusPromise=null,addOnInstallStatusPromiseResolve=null};function handler(e,t,n){if("add-on-install-status"===e.content_op){const t=getVisibleLightBoxViewerElement();t?addOnInstallStatusPromiseResolve({lightBoxViewer:t,installStatus:e.installStatus}):(hideInvisibleAcrobatInstallationPage(),hideEditWithAcrobat())}}const isStoreURLLaunchedInIframe=()=>"workspace.google.com"===window?.document?.location?.host&&window?.document?.location?.ancestorOrigins.length>0&&"https://drive.google.com"===window?.document?.location?.ancestorOrigins[0],isAcrobatAddOnStorePage=()=>window.document.location.pathname.includes("359458075047")||window.document.location.pathname.includes("80763634447")||window.document.location.pathname.includes("391079731570"),isDriveLaunchedInTopWindow=()=>"drive.google.com"===window?.document?.location?.host&&window.top===window.self&&0===window?.document?.location?.ancestorOrigins.length;if("workspace.google.com"===window?.document?.location?.host&&window?.document?.location?.ancestorOrigins.length>0&&"https://drive.google.com"===window?.document?.location?.ancestorOrigins[0]&&(window.document.location.pathname.includes("359458075047")||window.document.location.pathname.includes("80763634447")||window.document.location.pathname.includes("391079731570"))){let e=new URLSearchParams(window.document.location.search);if(e.get("contentScriptIframe")){const t=document.querySelectorAll("#yDmH0d > c-wiz > div > c-wiz > div > c-wiz > div > div.YKOwYb > div > div > div.pANFDd > div > button:not([style*= 'display: none']) > span");let n;if(t.length>0)if(t?.length>1){n="Uninstalled";for(let e of t)if("Uninstall"===e?.textContent?.trim()){n="Installed";break}}else n="Uninstall"===t[0]?.textContent?.trim()?"Installed":"Uninstalled";else n="Unknown";chrome.runtime.sendMessage({main_op:"add-on-install-status",tabId:e.get("tabId"),installStatus:n})}}else"drive.google.com"===window?.document?.location?.host&&window.top===window.self&&0===window?.document?.location?.ancestorOrigins.length&&(chrome.runtime.sendMessage({main_op:"gdrive-init"},(e=>{e.enableAcrobatPromptInGSuite&&(addOnHost=e.addOnHost,editWithAcrobatText=e.editWithAcrobatTextBasedOnLocale,selectors=e.selectors,addOnId=e.addOnId,tabId=e.tabId,enableFramingToGetAddOnInstallStatus=e.enableFramingToGetAddOnInstallStatus,addBodyObserver())})),chrome.runtime.onMessage.addListener(handler));