<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<!DOCTYPE AdapterType SYSTEM "http://www.holobloc.com/xml/LibraryElement.dtd">
<AdapterType Name="EBBusAdapter">
  <Identification Standard="61499-1"/>
  <VersionInfo Author="GE" Date="2008-04-22" Organization="4DIAC-Consortium" Version="0.0"/>
  <InterfaceList>
    <EventInputs>
      <Event Comment="Initialization Confirm" Name="INITO" Type="Event">
        <With Var="QO"/>
      </Event>
    </EventInputs>
    <EventOutputs>
      <Event Comment="Service Initialization" Name="INIT" Type="Event">
        <With Var="Index"/>
        <With Var="UpdateInterval"/>
        <With Var="MasterId"/>
        <With Var="QI"/>
      </Event>
    </EventOutputs>
    <InputVars>
      <VarDeclaration Name="QO" Type="BOOL"/>
    </InputVars>
    <OutputVars>
      <VarDeclaration Name="QI" Type="BOOL"/>
      <VarDeclaration Name="MasterId" Type="UINT"/>
      <VarDeclaration Name="Index" Type="UINT"/>
      <VarDeclaration Comment="Global update interval of slave modules in Hz" Name="UpdateInterval" Type="UINT"/>
    </OutputVars>
  </InterfaceList>
  <Service LeftInterface="SOCKET" RightInterface="PLUG">
    <ServiceSequence Name="request_confirm">
      <ServiceTransaction>
        <InputPrimitive Event="REQ" Interface="SOCKET" Parameters="REQD"/>
        <OutputPrimitive Event="REQ" Interface="PLUG" Parameters="REQD"/>
      </ServiceTransaction>
      <ServiceTransaction>
        <InputPrimitive Event="CNF" Interface="PLUG" Parameters="CNFD"/>
        <OutputPrimitive Event="CNF" Interface="SOCKET" Parameters="CNFD"/>
      </ServiceTransaction>
    </ServiceSequence>
    <ServiceSequence Name="indication_response">
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
