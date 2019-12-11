<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<!DOCTYPE AdapterType SYSTEM "http://www.holobloc.com/xml/LibraryElement.dtd">
<AdapterType Comment="" Name="IAS_Skill">
  <Identification Standard="61499-1"/>
  <VersionInfo Author="GE" Date="2008-04-22" Organization="4DIAC-Consortium" Version="0.0"/>
  <InterfaceList>
    <EventInputs>
      <Event Comment="" Name="RSP" Type="Event">
        <With Var="currentState"/>
        <With Var="lastTransition"/>
      </Event>
    </EventInputs>
    <EventOutputs>
      <Event Comment="" Name="cleanUp" Type="Event"/>
      <Event Comment="" Name="lock" Type="Event"/>
      <Event Comment="" Name="reset" Type="Event"/>
      <Event Comment="" Name="start" Type="Event"/>
      <Event Comment="" Name="stop" Type="Event"/>
      <Event Comment="" Name="suspend" Type="Event"/>
      <Event Comment="" Name="unsuspend" Type="Event"/>
    </EventOutputs>
    <InputVars>
      <VarDeclaration Comment="" Name="currentState" Type="STRING"/>
      <VarDeclaration Comment="" Name="lastTransition" Type="STRING"/>
    </InputVars>
    <OutputVars/>
  </InterfaceList>
  <Service Comment="" LeftInterface="SOCKET" RightInterface="PLUG">
    <ServiceSequence Comment="" Name="request_confirm">
      <ServiceTransaction>
        <InputPrimitive Event="REQ" Interface="SOCKET" Parameters="REQD"/>
        <OutputPrimitive Event="REQ" Interface="PLUG" Parameters="REQD"/>
      </ServiceTransaction>
      <ServiceTransaction>
        <InputPrimitive Event="CNF" Interface="PLUG" Parameters="CNFD"/>
        <OutputPrimitive Event="CNF" Interface="SOCKET" Parameters="CNFD"/>
      </ServiceTransaction>
    </ServiceSequence>
    <ServiceSequence Comment="" Name="indication_response">
      <ServiceTransaction>
        <InputPrimitive Event="IND" Interface="PLUG" Parameters="INDD"/>
        <OutputPrimitive Event="IND" Interface="SOCKET" Parameters="INDD"/>
      </ServiceTransaction>
      <ServiceTransaction>
        <InputPrimitive Event="RSP" Interface="SOCKET" Parameters="RSPD"/>
        <OutputPrimitive Event="RSP" Interface="PLUG" Parameters="RSPD"/>
      </ServiceTransaction>
    </ServiceSequence>
  </Service>
</AdapterType>
