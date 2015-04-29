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

	<div id="barra-brasil"
		style="background: #7F7F7F; height: 20px; padding: 0 0 0 10px; display: block;">
		<ul id="menu-barra-temp" style="list-style: none;">
			<li
				style="display: inline; float: left; padding-right: 10px; margin-right: 10px; border-right: 1px solid #EDEDED"><a
				href="http://brasil.gov.br"
				style="font-family: sans, sans-serif; text-decoration: none; color: white;">Portal
					do Governo Brasileiro</a></li>
			<li><a
				style="font-family: sans, sans-serif; text-decoration: none; color: white;"
				href="http://epwg.governoeletronico.gov.br/barra/atualize.html">Atualize
					sua Barra de Governo</a></li>
		</ul>
	</div>
	<script defer="defer" src="//barra.brasil.gov.br/barra.js"
		type="text/javascript"></script>
	<script type="text/javascript">
		function portal() {
			window.open("http://reitoria.ifpr.edu.br/");
		}
	</script>
	<f:view>
		<rich:panel>
			<jsp:directive.include file="menu.jsp" />
			<center>
				<a4j:loadScript src="../js/script.js" />
			</center>
			<a4j:form id="form">

				<a4j:outputPanel style="text-align: right" layout="block">
					<h:outputText value="Usuário:" />
					<h:inputText value="" required="true"
						requiredMessage="Usuário é obrigatório!" />
					<h:outputText value="Senha:" />
					<h:inputSecret value="" required="true"
						requiredMessage="Senha é obrigatório!"></h:inputSecret>
					<a4j:commandButton value="Entrar" action="#"
						reRender="form, messages">
					</a4j:commandButton>

				</a4j:outputPanel>


				<rich:tabPanel switchType="client" width="100%" height="120"
					headerAlignment="left">
					<rich:tab label="Noticias"
						style="font-size: 13px; text-align: justify; font-family: verdana;">

						<h:outputText style="font-weight:bold;"
							value="IFPR e Universidade de Girona, da Espanha, reúnem-se para estabelecimento de parceria." />
						<br>
						<br>
						<h:outputText
							value=" Estiveram reunidos na manhã desta segunda-feira (6), por meio de videoconferência, representantes do Instituto Federal do Paraná, 
        especialmente do Câmpus Londrina, e da Universidade de Girona, da Espanha. Segundo Amir Limana, Diretor-Geral 
        do referido câmpus, o objetivo da reunião foi o de estabelecer um primeiro contato entre as equipes diretivas de ambas as instituições, 
        tendo em vista a existência de interesses mútuos para estabelecimento de convênio de intercâmbio entre elas." />
						<br>
						<br>
						<a4j:commandLink action="#" onclick="portal();"
							value="Leia mais no portal do Ifpr" />
					</rich:tab>
				</rich:tabPanel>
				<br>

				<rich:tabPanel switchType="client" width="100%" height="120"
					headerAlignment="left">
					<rich:tab label="Egressos"
						style="font-size: 13px; text-align: justify; font-family: verdana;">
						<h:outputText
							value="Seja bem-vindo, profissional, egresso da Instituto Federal do Paraná. É com satisfação que lançamos o Portal de Egressos da IFPR." />
						<br>
						<br>
						<h:outputText
							value="Queremos manter um vínculo contínuo com nossos ex-alunos, saber de seus sucessos e dificuldades, e acompanhar os profissionais que formamos
        em seu ingresso no mercado de trabalho. Assim, poderemos melhorar nossos cursos técnicos, de  graduação e pós-graduação a cada ano, 
        e direcionar nossos projetos de formação continuada às necessidades dos profissionais de cada área. " />
						<br>
						<br>
						<h:outputText
							value=" Manter aberto este canal de comunicação é uma forma de continuar esta relação que começou nas salas de aula, estimulando o convívio acadêmico
        e a troca permanente de informações entre egressos, alunos e o IFPR." />
						<br>
						<br>
						<h:outputText
							value="Cadastrar-se neste portal só lhe trará benefícios. A aprendizagem é um processo contínuo, que não acaba com o curso. O portal de egressos 
       IFPR é mais uma ferramenta para ajudar em sua caminhada. Participe, contribua com informações, e nos ajude a construir este espaço, que é seu. " />
						<br>
						<br>
						<h:outputText
							value="Observação: Se você não é cadastrado no Portal de Egressos, clique na opção 'Cadastrar-se'." />
					</rich:tab>
				</rich:tabPanel>
				<br>



				<center>
					<h:graphicImage value="../images/assinatura.png"></h:graphicImage>
				</center>

			</a4j:form>
		</rich:panel>
	</f:view>
</body>
</html>