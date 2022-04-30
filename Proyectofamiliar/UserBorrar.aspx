<%@ Page Title="" Language="C#" MasterPageFile="~/MenuPrincipal.Master" AutoEventWireup="true" CodeBehind="UserBorrar.aspx.cs" Inherits="Proyectofamiliar.UserBorrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <link rel="stylesheet" href="/CSS/Inicio.css" type="text/css" media="screen" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
		<div class="clearfix header">
			<h1>Borrar Usuarios</h1>
			<!-- toggles 'add new budget item' form on click -->
		</div>

		<!-- 'add new budget item' form -->
		<div class="addItemForm">
			<div class="card">
				<div class="card-body">
					<asp:SqlDataSource ID="SqlInicio7" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoProgra3ConnectionString2 %>" SelectCommand="newListUser_Erase" UpdateCommand="FalseErase_Proc" UpdateCommandType="StoredProcedure" SelectCommandType="StoredProcedure">
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="DUserU" Name="Codigo" PropertyName="SelectedValue" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
						<div class="form-group">
							<label for="DUserU">Usuario: </label>
							<asp:DropDownList ID="DUserU" runat="server" DataSourceID="SqlInicio7" DataTextField="Usuarios" DataValueField="Codigo de usuario"></asp:DropDownList>
						&nbsp;</div>
					
					
					<asp:Button ID="BtnBorrar" class="btn btn-primary btn-block" runat="server" Text="Eliminar" OnClick="BtnBorrar_Click"/>
					
				</div>
			</div>
		</div>
		<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/momentjs/2.12.0/moment.min.js"></script>
	<script type="text/javascript" src="JS/Inicio.js"></script>
</asp:Content>
