<%@page import="javax.faces.context.FacesContext"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib uri="http://richfaces.org/a4j" prefix="a4j"%>
<%@ taglib uri="http://richfaces.org/rich" prefix="rich"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Instituto Federal do Paraná</title>
<link rel="StyleSheet" type="text/css" href="../css/messages-style.css"
	media="screen" />
</head>

<body>
	<f:view>
		<rich:panel>
			<h:form>
			    <h:panelGrid columns="2">
	                <h:outputText value="Name:" />
	                <h:inputText label="Name" id="name" required="true" value="#{testController.name}">
	                    <f:validateLength minimum="3" maximum="20" />
	                </h:inputText>
	                <f:facet name="footer">
						<a4j:commandButton value="Salvar"
							action="#{testController.salvar}" reRender="panel, form, messages">
						</a4j:commandButton>
					</f:facet>
				</h:panelGrid>
			</h:form>
		</rich:panel>
	</f:view>
</body>
</html>