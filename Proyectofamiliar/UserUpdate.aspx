<%@ Page Title="" Language="C#" MasterPageFile="~/MenuPrincipal.Master" AutoEventWireup="true" CodeBehind="UserUpdate.aspx.cs" Inherits="Proyectofamiliar.UserUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <link rel="stylesheet" href="/CSS/Inicio.css" type="text/css" media="screen" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
		<div class="clearfix header">
			<h1>Actualizar Transacciones</h1>
			<!-- toggles 'add new budget item' form on click -->
		</div>

		<!-- 'add new budget item' form -->
		<div class="addItemForm">
			<div class="card">
				<div class="card-body">
					<asp:SqlDataSource ID="SqlInicio3" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoProgra3ConnectionString2 %>" SelectCommand="SELECT Usuario FROM Login WHERE (Usuario &lt;&gt; 'Admin')" UpdateCommand="UP_USER" UpdateCommandType="StoredProcedure">
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="DUserU" Name="User" PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="TxtEmail" Name="Correo" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="Txtclave" Name="Contrasena" PropertyName="Text" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
						<div class="form-group">
							<label for="DUserU">Usuario: </label>
							<asp:DropDownList ID="DUserU" runat="server" DataSourceID="SqlInicio3" DataTextField="Usuario" DataValueField="Usuario"></asp:DropDownList>
						&nbsp;</div>
					
					<div class="form-group">
							<label for="Txtfecha">Nueva Contraseña:</label>
							<asp:TextBox ID="Txtclave" class="form-control" runat="server" Width="879px" TextMode="Password" placeholder="Nueva contraseña"></asp:TextBox>
						    <asp:RequiredFieldValidator ID="FechaRV" runat="server" ControlToValidate="Txtclave" ErrorMessage="Espacio vacio"></asp:RequiredFieldValidator>
					</div>
						<div class="form-group">
							<label for="TxtDescripcion">Nuevo Correo:</label>
							<asp:TextBox ID="TxtEmail" class="form-control" placeholder="Nuevo correo" runat="server" TextMode="Email"></asp:TextBox>
							<asp:RequiredFieldValidator ID="DescripcionRV" runat="server" ErrorMessage="Espacio vacio" ControlToValidate="TxtEmail"></asp:RequiredFieldValidator>
						</div>
					<asp:Button ID="BtnAgregar" class="btn btn-primary btn-block" runat="server" Text="Actualizar" OnClick="BtnAgregar_Click" />
					
				</div>
			</div>
		</div>
		<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/momentjs/2.12.0/moment.min.js"></script>
	<script type="text/javascript" src="JS/Inicio.js"></script>
</asp:Content>
