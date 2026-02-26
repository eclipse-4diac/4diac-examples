Open and start the PubSubTest with 4diac on a Forte with OPCUA enabled

Install Node-RED : see https://nodered.org/
Once in the Node-RED interface (http://127.0.0.1:1880 if it's running on your computer), install these palettes :
- node-red-contrib-opcua 
- @Flowfuse/node-red-dashboard
Import the flow.json and deploy

The identifiers of the tags have to be updated.
You can use your favorite client or the OPC UA Browser to find the identifier of the 3 tags (ns=1;i=number). Update the 3 OPC UA Item according to these identifiers and deploy again.

To access the Dashboard : http://127.0.0.1:1880/dashboard
Start / Stop should start or stop the counter increasing to 100 (it returns to 0 after that)
 


