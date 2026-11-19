<?xml version="1.0" encoding="UTF-8"?>
<AdapterType Name="TestAdapter" Comment="Adapter Interface">
	<Identification Standard="61499-1" Description="Copyright (c) 2019 Jan Holzweber&#10; &#10;This program and the accompanying materials are made&#10;available under the terms of the Eclipse Public License 2.0&#10;which is available at https://www.eclipse.org/legal/epl-2.0/&#10;SPDX-License-Identifier: EPL-2.0">
	</Identification>
	<VersionInfo Organization="4DIAC-Consortium" Version="0.0" Author="GE" Date="2008-04-22">
	</VersionInfo>
	<CompilerInfo packageName="testfbforcodegenerator::Adapters">
	</CompilerInfo>
	<InterfaceList>
		<EventInputs>
			<Event Name="EI" Type="Event" Comment="Request from Socket">
				<With Var="DI"/>
			</Event>
		</EventInputs>
		<EventOutputs>
			<Event Name="EO" Type="Event" Comment="Confirmation from Plug">
				<With Var="D0"/>
			</Event>
		</EventOutputs>
		<InputVars>
			<VarDeclaration Name="DI" Type="INT" Comment="Request Data from Socket"/>
		</InputVars>
		<OutputVars>
			<VarDeclaration Name="D0" Type="INT" Comment="Confirmation Data from Plug"/>
		</OutputVars>
	</InterfaceList>
	<Service RightInterface="PLUG" LeftInterface="SOCKET">
		<ServiceSequence Name="request_confirm">
			<ServiceTransaction>
				<InputPrimitive Interface="SOCKET" Event="REQ" Parameters="REQD"/>
				<OutputPrimitive Interface="PLUG" Event="REQ" Parameters="REQD"/>
			</ServiceTransaction>
			<ServiceTransaction>
				<InputPrimitive Interface="PLUG" Event="CNF" Parameters="CNFD"/>
				<OutputPrimitive Interface="SOCKET" Event="CNF" Parameters="CNFD"/>
			</ServiceTransaction>
		</ServiceSequence>
		<ServiceSequence Name="indication_response">
			<ServiceTransaction>
				<InputPrimitive Interface="PLUG" Event="IND" Parameters="INDD"/>
				<OutputPrimitive Interface="SOCKET" Event="IND" Parameters="INDD"/>
			</ServiceTransaction>
			<ServiceTransaction>
				<InputPrimitive Interface="SOCKET" Event="RSP" Parameters="RSPD"/>
				<OutputPrimitive Interface="PLUG" Event="RSP" Parameters="RSPD"/>
			</ServiceTransaction>
		</ServiceSequence>
	</Service>
</AdapterType>
