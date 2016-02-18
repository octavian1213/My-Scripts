net start "epag"
net start "EndpointService"
net start "EndpointIntegration"
net start "UpdateService"

sc config "epag" start= delayed-auto
sc config "EndpointService" start= delayed-auto
sc config "EndpointIntegration" start= delayed-auto
sc config "UpdateService" start= delayed-auto
