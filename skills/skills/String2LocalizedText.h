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

#ifndef _STRING2LOCALIZEDTEXT_H_
#define _STRING2LOCALIZEDTEXT_H_

#include <funcbloc.h>
#include <forte_string.h>
#include <forte_localizedtext.h>

class FORTE_String2LocalizedText: public CFunctionBlock{
  DECLARE_FIRMWARE_FB(FORTE_String2LocalizedText)

private:
  static const CStringDictionary::TStringId scm_anDataInputNames[];
  static const CStringDictionary::TStringId scm_anDataInputTypeIds[];
  CIEC_STRING &locale() {
    return *static_cast<CIEC_STRING*>(getDI(0));
  };

  CIEC_STRING &text() {
    return *static_cast<CIEC_STRING*>(getDI(1));
  };

  static const CStringDictionary::TStringId scm_anDataOutputNames[];
  static const CStringDictionary::TStringId scm_anDataOutputTypeIds[];
  CIEC_LocalizedText &RD() {
    return *static_cast<CIEC_LocalizedText*>(getDO(0));
  };

  static const TEventID scm_nEventREQID = 0;
  static const TForteInt16 scm_anEIWithIndexes[];
  static const TDataIOID scm_anEIWith[];
  static const CStringDictionary::TStringId scm_anEventInputNames[];

  static const TEventID scm_nEventCNFID = 0;
  static const TForteInt16 scm_anEOWithIndexes[];
  static const TDataIOID scm_anEOWith[];
  static const CStringDictionary::TStringId scm_anEventOutputNames[];

  static const SFBInterfaceSpec scm_stFBInterfaceSpec;

   FORTE_FB_DATA_ARRAY(1, 2, 1, 0);

  void executeEvent(int pa_nEIID);

public:
  FUNCTION_BLOCK_CTOR(FORTE_String2LocalizedText){
  };

  virtual ~FORTE_String2LocalizedText(){};

};

#endif //close the ifdef sequence from the beginning of the file

