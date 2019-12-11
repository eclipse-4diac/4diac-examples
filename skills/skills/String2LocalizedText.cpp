/*************************************************************************
 *** FORTE Library Element
 ***
 *** This file was generated using the 4DIAC FORTE Export Filter V1.0.x!
 ***
 *** Name: String2LocalizedText
 *** Description: Service Interface Function Block Type
 *** Version: 
 ***     1.0: 2019-08-20/dorofeev - null - null
 *************************************************************************/

#include "String2LocalizedText.h"
#ifdef FORTE_ENABLE_GENERATED_SOURCE_CPP
#include "String2LocalizedText_gen.cpp"
#endif
#include "open62541.h"

DEFINE_FIRMWARE_FB(FORTE_String2LocalizedText, g_nStringIdString2LocalizedText)

const CStringDictionary::TStringId FORTE_String2LocalizedText::scm_anDataInputNames[] = {g_nStringIdlocale, g_nStringIdtext};

const CStringDictionary::TStringId FORTE_String2LocalizedText::scm_anDataInputTypeIds[] = {g_nStringIdSTRING, g_nStringIdSTRING};

const CStringDictionary::TStringId FORTE_String2LocalizedText::scm_anDataOutputNames[] = {g_nStringIdRD};

const CStringDictionary::TStringId FORTE_String2LocalizedText::scm_anDataOutputTypeIds[] = {g_nStringIdLocalizedText};

const TForteInt16 FORTE_String2LocalizedText::scm_anEIWithIndexes[] = {0};
const TDataIOID FORTE_String2LocalizedText::scm_anEIWith[] = {0, 1, 255};
const CStringDictionary::TStringId FORTE_String2LocalizedText::scm_anEventInputNames[] = {g_nStringIdREQ};

const TDataIOID FORTE_String2LocalizedText::scm_anEOWith[] = {0, 255};
const TForteInt16 FORTE_String2LocalizedText::scm_anEOWithIndexes[] = {0, -1};
const CStringDictionary::TStringId FORTE_String2LocalizedText::scm_anEventOutputNames[] = {g_nStringIdCNF};

const SFBInterfaceSpec FORTE_String2LocalizedText::scm_stFBInterfaceSpec = {
  1,  scm_anEventInputNames,  scm_anEIWith,  scm_anEIWithIndexes,
  1,  scm_anEventOutputNames,  scm_anEOWith, scm_anEOWithIndexes,  2,  scm_anDataInputNames, scm_anDataInputTypeIds,
  1,  scm_anDataOutputNames, scm_anDataOutputTypeIds,
  0, 0
};


void FORTE_String2LocalizedText::executeEvent(int pa_nEIID){
  switch(pa_nEIID){
    case scm_nEventREQID:
      UA_LocalizedText out;
      UA_LocalizedText_init(&out);
      RD().text() = text().getValue();
	  RD().locale() = locale().getValue();
      sendOutputEvent(scm_nEventCNFID);
      break;

  }
}



