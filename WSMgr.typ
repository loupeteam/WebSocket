
TYPE
	WebSocketConnection_typ : 	STRUCT 
		in : WebSocketConnectionIn_typ;
		out : WebSocketConnectionOut_typ;
		internal : WebSocketConnectionInternal_typ;
	END_STRUCT;
	WebSocketConnectionIn_typ : 	STRUCT 
		cmd : WebSocketConnectionInCmd_typ;
		cfg : WebSocketConnectionInCfg_typ;
	END_STRUCT;
	WebSocketConnectionInCfg_typ : 	STRUCT 
		mode : WebSocketMode_enum;
		localIPAddress : STRING[TCPCOMM_STRLEN_IPADDRESS];
		localPort : UDINT;
		remoteIPAddress : STRING[TCPCOMM_STRLEN_IPADDRESS];
		remotePort : UDINT;
		sendBufferSize : UDINT;
		useSSL : BOOL;
		sslCertificate : UDINT;
	END_STRUCT;
	WebSocketConnectionInCmd_typ : 	STRUCT 
		enable : BOOL;
		acknowledgeConnection : BOOL;
		acknowledgeError : BOOL;
	END_STRUCT;
	WebSocketConnectionOut_typ : 	STRUCT 
		newConnectionAvailable : BOOL;
		connection : WebSocketConnection_Desc_typ;
		error : BOOL;
		errorID : UINT;
		errorString : STRING[WS_STRLEN_ERRORSTRING];
	END_STRUCT;
	WebSocketConnection_Desc_typ : 	STRUCT 
		parameters : TCPConnection_Desc_typ;
		mode : WebSocketMode_enum;
	END_STRUCT;
	WebSocketConnectionInternal_typ : 	STRUCT 
		tcpConnection : TCPConnectionMgr_typ;
	END_STRUCT;
END_TYPE
