<?xml version="1.0" encoding="utf-8"?>
<definitions xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:s0="http://www.serviceobjects.com/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" targetNamespace="http://www.serviceobjects.com/" xmlns="http://schemas.xmlsoap.org/wsdl/">
  <types>
    <s:schema elementFormDefault="qualified" targetNamespace="http://www.serviceobjects.com/">
      <s:element name="GetPatentInfoTESS">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="strInput" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="strLicenseKey" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetPatentInfoTESSResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetPatentInfoTESSResult" type="s0:PatentInfoTess" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="PatentInfoTess">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="TradeMark" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="TradeMarkImage" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Translations" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="GoodsAndServices" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="MarkDrawingCode" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="DesignSearchCode" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="SerialNumber" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="FilingDate" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="FiledITU" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="PublishedForOpposition" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="RegistrationNumber" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="RegistrationDate" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Owner" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="AssignmentRecorded" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="AttorneyOfRecord" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Section44Indicator" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="PriorRegistrations" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Disclaimer" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="DescriptionOfMark" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="TypeOfMark" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Register" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="AffidavitText" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="LiveDeadIndicator" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="DistinctivenessLimitationStatement" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="AbandonmentDate" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="CancellationDate" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Error" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="GetPatentInfoTARR">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="strInput" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="strLicenseKey" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetPatentInfoTARRResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetPatentInfoTARRResult" type="s0:PatentInfoTarr" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="PatentInfoTarr">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="Contacts" type="s0:Contacts" />
          <s:element minOccurs="0" maxOccurs="1" name="GoodsAndServices" type="s0:GoodsAndServices" />
          <s:element minOccurs="0" maxOccurs="1" name="GenerationDate" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="SerialNumber" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="RegistrationNumber" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Mark" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Status" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="StatusDate" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="FilingDate" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="RegistrationDate" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="LawOffice" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Error" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="Contacts">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="Contact" type="s0:Contact" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="Contact">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="Owner" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="StateOrCountryOfIncorporation" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="LegalEntityType" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="GoodsAndServices">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="GoodOrService" type="s0:GoodOrService" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="GoodOrService">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="GoodsServices" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="InternationalClass" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="FirstUseDate" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Basis" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="PatentInfoTess" nillable="true" type="s0:PatentInfoTess" />
      <s:element name="PatentInfoTarr" nillable="true" type="s0:PatentInfoTarr" />
    </s:schema>
  </types>
  <message name="GetPatentInfoTESSSoapIn">
    <part name="parameters" element="s0:GetPatentInfoTESS" />
  </message>
  <message name="GetPatentInfoTESSSoapOut">
    <part name="parameters" element="s0:GetPatentInfoTESSResponse" />
  </message>
  <message name="GetPatentInfoTARRSoapIn">
    <part name="parameters" element="s0:GetPatentInfoTARR" />
  </message>
  <message name="GetPatentInfoTARRSoapOut">
    <part name="parameters" element="s0:GetPatentInfoTARRResponse" />
  </message>
  <message name="GetPatentInfoTESSHttpGetIn">
    <part name="strInput" type="s:string" />
    <part name="strLicenseKey" type="s:string" />
  </message>
  <message name="GetPatentInfoTESSHttpGetOut">
    <part name="Body" element="s0:PatentInfoTess" />
  </message>
  <message name="GetPatentInfoTARRHttpGetIn">
    <part name="strInput" type="s:string" />
    <part name="strLicenseKey" type="s:string" />
  </message>
  <message name="GetPatentInfoTARRHttpGetOut">
    <part name="Body" element="s0:PatentInfoTarr" />
  </message>
  <message name="GetPatentInfoTESSHttpPostIn">
    <part name="strInput" type="s:string" />
    <part name="strLicenseKey" type="s:string" />
  </message>
  <message name="GetPatentInfoTESSHttpPostOut">
    <part name="Body" element="s0:PatentInfoTess" />
  </message>
  <message name="GetPatentInfoTARRHttpPostIn">
    <part name="strInput" type="s:string" />
    <part name="strLicenseKey" type="s:string" />
  </message>
  <message name="GetPatentInfoTARRHttpPostOut">
    <part name="Body" element="s0:PatentInfoTarr" />
  </message>
  <portType name="USPatentOfficeSoap">
    <operation name="GetPatentInfoTESS">
      <documentation>Returns US patent information from the TESS database for a given 7- or 8-digit serial or registration number.</documentation>
      <input message="s0:GetPatentInfoTESSSoapIn" />
      <output message="s0:GetPatentInfoTESSSoapOut" />
    </operation>
    <operation name="GetPatentInfoTARR">
      <documentation>Returns US patent information from the TARR database for a given 7- or 8-digit serial or registration number.</documentation>
      <input message="s0:GetPatentInfoTARRSoapIn" />
      <output message="s0:GetPatentInfoTARRSoapOut" />
    </operation>
  </portType>
  <portType name="USPatentOfficeHttpGet">
    <operation name="GetPatentInfoTESS">
      <documentation>Returns US patent information from the TESS database for a given 7- or 8-digit serial or registration number.</documentation>
      <input message="s0:GetPatentInfoTESSHttpGetIn" />
      <output message="s0:GetPatentInfoTESSHttpGetOut" />
    </operation>
    <operation name="GetPatentInfoTARR">
      <documentation>Returns US patent information from the TARR database for a given 7- or 8-digit serial or registration number.</documentation>
      <input message="s0:GetPatentInfoTARRHttpGetIn" />
      <output message="s0:GetPatentInfoTARRHttpGetOut" />
    </operation>
  </portType>
  <portType name="USPatentOfficeHttpPost">
    <operation name="GetPatentInfoTESS">
      <documentation>Returns US patent information from the TESS database for a given 7- or 8-digit serial or registration number.</documentation>
      <input message="s0:GetPatentInfoTESSHttpPostIn" />
      <output message="s0:GetPatentInfoTESSHttpPostOut" />
    </operation>
    <operation name="GetPatentInfoTARR">
      <documentation>Returns US patent information from the TARR database for a given 7- or 8-digit serial or registration number.</documentation>
      <input message="s0:GetPatentInfoTARRHttpPostIn" />
      <output message="s0:GetPatentInfoTARRHttpPostOut" />
    </operation>
  </portType>
  <binding name="USPatentOfficeSoap" type="s0:USPatentOfficeSoap">
    <soap:binding transport="http://schemas.xmlsoap.org/soap/http" style="document" />
    <operation name="GetPatentInfoTESS">
      <soap:operation soapAction="http://www.serviceobjects.com/GetPatentInfoTESS" style="document" />
      <input>
        <soap:body use="literal" />
      </input>
      <output>
        <soap:body use="literal" />
      </output>
    </operation>
    <operation name="GetPatentInfoTARR">
      <soap:operation soapAction="http://www.serviceobjects.com/GetPatentInfoTARR" style="document" />
      <input>
        <soap:body use="literal" />
      </input>
      <output>
        <soap:body use="literal" />
      </output>
    </operation>
  </binding>
  <binding name="USPatentOfficeHttpGet" type="s0:USPatentOfficeHttpGet">
    <http:binding verb="GET" />
    <operation name="GetPatentInfoTESS">
      <http:operation location="/GetPatentInfoTESS" />
      <input>
        <http:urlEncoded />
      </input>
      <output>
        <mime:mimeXml part="Body" />
      </output>
    </operation>
    <operation name="GetPatentInfoTARR">
      <http:operation location="/GetPatentInfoTARR" />
      <input>
        <http:urlEncoded />
      </input>
      <output>
        <mime:mimeXml part="Body" />
      </output>
    </operation>
  </binding>
  <binding name="USPatentOfficeHttpPost" type="s0:USPatentOfficeHttpPost">
    <http:binding verb="POST" />
    <operation name="GetPatentInfoTESS">
      <http:operation location="/GetPatentInfoTESS" />
      <input>
        <mime:content type="application/x-www-form-urlencoded" />
      </input>
      <output>
        <mime:mimeXml part="Body" />
      </output>
    </operation>
    <operation name="GetPatentInfoTARR">
      <http:operation location="/GetPatentInfoTARR" />
      <input>
        <mime:content type="application/x-www-form-urlencoded" />
      </input>
      <output>
        <mime:mimeXml part="Body" />
      </output>
    </operation>
  </binding>
  <service name="USPatentOffice">
    <port name="USPatentOfficeSoap" binding="s0:USPatentOfficeSoap">
      <soap:address location="http://ws.serviceobjects.net/uspo/USPatentOffice.asmx" />
    </port>
    <port name="USPatentOfficeHttpGet" binding="s0:USPatentOfficeHttpGet">
      <http:address location="http://ws.serviceobjects.net/uspo/USPatentOffice.asmx" />
    </port>
    <port name="USPatentOfficeHttpPost" binding="s0:USPatentOfficeHttpPost">
      <http:address location="http://ws.serviceobjects.net/uspo/USPatentOffice.asmx" />
    </port>
  </service>
</definitions>