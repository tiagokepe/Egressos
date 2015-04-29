<%@page import="javax.faces.context.FacesContext"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib uri="http://richfaces.org/a4j" prefix="a4j"%>
<%@ taglib uri="http://richfaces.org/rich" prefix="rich"%>

<a4j:form style="margin-top:0px;">
	<h:panelGrid columns="1">
		<h:graphicImage width="100%" height="100" value="../images/topo.jpg" />
		<h:outputText value="Bem vindo ao Portal de Egresso do IFPR"
			style="font-size: 13px; font-weight:bold;" />
	</h:panelGrid>
	<rich:toolBar>
		<rich:dropDownMenu>
			<f:facet name="label">
				<h:panelGroup>
					<h:outputText value="Página Inicial" />
				</h:panelGroup>
			</f:facet>
		</rich:dropDownMenu>

		<rich:dropDownMenu>
			<f:facet name="label">
				<h:panelGroup>
					<h:outputText value="Cadastre-se" />
				</h:panelGroup>
			</f:facet>
		</rich:dropDownMenu>

		<rich:dropDownMenu>
			<f:facet name="label">
				<h:panelGroup>
					<h:outputText value="Depoimentos" />
				</h:panelGroup>
			</f:facet>
		</rich:dropDownMenu>

		<rich:dropDownMenu>
			<f:facet name="label">
				<h:panelGroup>
					<h:outputText value="Todos os Egressos" />
				</h:panelGroup>
			</f:facet>
		</rich:dropDownMenu>

		<rich:dropDownMenu>
			<f:facet name="label">
				<h:panelGroup>
					<h:outputText value="Egressos em Destaque" />
				</h:panelGroup>
			</f:facet>
		</rich:dropDownMenu>
	</rich:toolBar>
</a4j:form>