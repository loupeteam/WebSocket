(*For each client lets instantiate an interface*)

TYPE
	WebSocStream_typ : 	STRUCT 
		in : WebSocStream_IN_typ;
		out : WebSocStream_OUT_typ;
		internal : WebSocStream_Internal_typ;
	END_STRUCT;
	WebSocStream_IN_typ : 	STRUCT 
		cmd : WebSocStream_IN_CMD_typ;
		par : WebSocStream_IN_PAR_typ;
		cfg : WebSocStream_IN_CFG_typ;
	END_STRUCT;
	WebSocStream_IN_CMD_typ : 	STRUCT 
		receive : BOOL;
		send : BOOL;
		close : BOOL;
		acknowledgeData : BOOL;
		acknowledgeError : BOOL;
	END_STRUCT;
	WebSocStream_IN_PAR_typ : 	STRUCT 
		connection : WebSocketConnection_Desc_typ;
		pReceiveData : UDINT;
		maxReceiveLength : UDINT;
		receiveFlags : UINT;
		allowContinuousReceive : BOOL;
		pSendData : UDINT;
		sendLength : UDINT;
		sendHeader : WebSocHeader_typ;
		sendFlags : UINT;
		allowContinuousSend : BOOL;
	END_STRUCT;
	WebSocStream_IN_CFG_typ : 	STRUCT 
		bufferSize : UDINT;
	END_STRUCT;
	WebSocStream_OUT_typ : 	STRUCT 
		connection : WebSocketConnection_Desc_typ;
		active : BOOL;
		connected : BOOL;
		receiving : BOOL;
		header : WebSocHeader_typ;
		partialDataRecieved : BOOL;
		dataReceived : BOOL;
		receivedDataLength : UDINT;
		sending : BOOL;
		dataSent : BOOL;
		sentDataLength : UDINT;
		error : BOOL;
		errorID : UINT;
		errorString : STRING[TCPCOMM_STRLEN_ERRORSTRING];
	END_STRUCT;
	WebSocStream_Internal_typ : 	STRUCT 
		debug : WebSocStream_Int_Debug_typ;
		fub : WebSocStream_Int_FUB_typ;
		connection : WebSocketConnection_Desc_typ;
		initialized : BOOL;
		connected : BOOL;
		connectionUpgraded : BOOL;
		connectionState : UINT;
		bufferSize : UDINT;
		sendBuffer : UDINT;
		recieveBuffer : UDINT;
	END_STRUCT;
	WebSocStream_Int_Debug_typ : 	STRUCT 
		New_Member : USINT;
	END_STRUCT;
	WebSocStream_Int_FUB_typ : 	STRUCT 
		tcpStream : TCPStream_typ;
		wsDecode : wsDecode;
		wsEncode : wsEncode;
		wsConnect : wsConnect;
		wsMask : wsMask;
	END_STRUCT;
END_TYPE
