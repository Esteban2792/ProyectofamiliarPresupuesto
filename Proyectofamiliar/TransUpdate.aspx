<%@ Page Title="" Language="C#" MasterPageFile="~/MenuPrincipal.Master" AutoEventWireup="true" CodeBehind="TransUpdate.aspx.cs" Inherits="Proyectofamiliar.WebForm3" %>
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
					<asp:SqlDataSource ID="SqlInicio1" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoProgra3ConnectionString2 %>" InsertCommandType="StoredProcedure" SelectCommand="codigo_trans" SelectCommandType="StoredProcedure" UpdateCommand="Update_NewTransaccion" UpdateCommandType="StoredProcedure">
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="Ddcategoria1" Name="Tipo" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="TxtCantidad" Name="Cantidad" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TxtDescripcion" Name="Descripcion" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Txtfecha" Name="Fecha" PropertyName="Text" Type="DateTime" />
                            <asp:ControlParameter ControlID="DUserU" Name="CodigoT" PropertyName="SelectedValue" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
						<div class="form-group">
							<label for="DUserU">Usuario y transacción: </label>
							<asp:DropDownList ID="DUserU" runat="server" DataSourceID="SqlInicio1" DataTextField="Transacción y Usuario" DataValueField="CodigoT"></asp:DropDownList>
						&nbsp;</div>
					
					<div class="form-group">
							<label for="Txtfecha">Fecha de la transacción:</label>
							<asp:TextBox ID="Txtfecha" class="form-control" runat="server" Width="879px" TextMode="DateTime" placeholder="Día-Mes-Año"></asp:TextBox>
						    <asp:RequiredFieldValidator ID="FechaRV" runat="server" ControlToValidate="Txtfecha" ErrorMessage="Espacio vacio"></asp:RequiredFieldValidator>
						<asp:RegularExpressionValidator ID="ValidarFecha" runat="server" ErrorMessage="No es una fecha valida, por favor digite una fecha correcta" ControlToValidate="Txtfecha" ValidationExpression="^(?:3[01]|[12][0-9]|0?[1-9])([\-/.])(0?[1-9]|1[1-2])\1\d{4}$"></asp:RegularExpressionValidator>
					</div>
					<div class="form-group">
							<label for="Ddcategoria1">Tipo de categoria:</label>
							<asp:DropDownList ID="Ddcategoria1" class="form-control" runat="server" AutoPostBack="True">
                                <asp:ListItem>Gasto</asp:ListItem>
                                <asp:ListItem>Ingreso</asp:ListItem>
                            </asp:DropDownList>
								
						</div>
						<div class="form-group">
							<label for="TxtCantidad">Cantidad:</label>
							<asp:TextBox ID="TxtCantidad" class="form-control" placeholder="0" runat="server" TextMode="Number"></asp:TextBox>
							<asp:RequiredFieldValidator ID="CantidadRV" runat="server" ErrorMessage="Espacio vacio" ControlToValidate="TxtCantidad"></asp:RequiredFieldValidator>
						</div>
						<div class="form-group">
							<label for="TxtDescripcion">Descripción:</label>
							<asp:TextBox ID="TxtDescripcion" class="form-control" placeholder="Descripción" runat="server"></asp:TextBox>
							<asp:RequiredFieldValidator ID="DescripcionRV" runat="server" ErrorMessage="Espacio vacio" ControlToValidate="TxtDescripcion"></asp:RequiredFieldValidator>
						</div>
					<asp:Button ID="BtnAgregar" class="btn btn-primary btn-block" runat="server" Text="Actualizar" OnClick="BtnAgregar_Click" />
					
				</div>
			</div>
		</div>
		<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/momentjs/2.12.0/moment.min.js"></script>
	<script type="text/javascript" src="JS/Inicio.js"></script>
</asp:Content>
