<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Proyectofamiliar.Pruebas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <link rel="stylesheet" href="/CSS/Inicio.css" type="text/css" media="screen" />
       
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1"  runat="server">    
    <div class="container">
		<div class="clearfix header">
			<h1>Presupuesto familiar 2022</h1>
			<!-- toggles 'add new budget item' form on click -->
		</div>

		<!-- 'add new budget item' form -->
		<div class="addItemForm">
			<h2>Nuevo elemento</h2>
			<div class="card">
				<div class="card-body">
					<asp:SqlDataSource ID="SqlInicio" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoProgra3ConnectionString2 %>" InsertCommand="Insertar_NewTransaccion" InsertCommandType="StoredProcedure" SelectCommand="Filtro_Transacciones" SelectCommandType="StoredProcedure">
                        <InsertParameters>
                            <asp:ControlParameter ControlID="Ddcategoria" Name="Tipo" PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="TxtCantidad" Name="Cantidad" PropertyName="Text" Type="Decimal" />
                            <asp:ControlParameter ControlID="TxtDescripcion" Name="Descripcion" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="Txtfecha" Name="Fecha" PropertyName="Text" Type="DateTime" />
                            <asp:ControlParameter ControlID="TxtnombreU" Name="NombreUsuario" PropertyName="Text" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="Ddfiltro" Name="Tipo" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
						<div class="form-group">
							<label for="TxtnombreU">Nombre:</label>
							<asp:TextBox ID="TxtnombreU" class="form-control" placeholder="Nombre" runat="server" Enabled="False"></asp:TextBox>
						</div>
					<div class="form-group">
							<label for="Txtfecha">Fecha de la transacción:</label>
							<asp:TextBox ID="Txtfecha" class="form-control" runat="server" Width="879px" TextMode="DateTime" placeholder="Día-Mes-Año"></asp:TextBox>
						    <asp:RequiredFieldValidator ID="FechaRV" runat="server" ControlToValidate="Txtfecha" ErrorMessage="Espacio vacio"></asp:RequiredFieldValidator>
						<asp:RegularExpressionValidator ID="ValidarFecha" runat="server" ErrorMessage="No es una fecha valida, por favor digite una fecha correcta" ControlToValidate="Txtfecha" ValidationExpression="^(?:3[01]|[12][0-9]|0?[1-9])([\-/.])(0?[1-9]|1[1-2])\1\d{4}$"></asp:RegularExpressionValidator>
					</div>
						<div class="form-group">
							<label for="Ddcategoria">Tipo de categoria:</label>
							<asp:DropDownList ID="Ddcategoria" class="form-control" runat="server">
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
					<asp:Button ID="BtnAgregar" class="btn btn-primary btn-block" runat="server" Text="Ingresar" OnClick="BtnAgregar_Click" />
					
				</div>
			</div>
		</div>

		<h2>Visualizar tabla:</h2>
		<p>
            <!-- filter items by category -->
			<asp:DropDownList ID="Ddfiltro" class="form-control" runat="server" AutoPostBack="True">
                <asp:ListItem>Gasto</asp:ListItem>
                <asp:ListItem>Ingreso</asp:ListItem>
            </asp:DropDownList>			
		</p>

		<!-- budget items table -->
	   <asp:GridView ID="Tabla1" class="table table-striped" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
           <AlternatingRowStyle BackColor="White" />
           <Columns>
               <asp:BoundField DataField="Nombre del Familiar" HeaderText="Nombre del Familiar" SortExpression="Nombre del Familiar" />
               <asp:BoundField DataField="Tipo de transacción" HeaderText="Tipo de transacción" SortExpression="Tipo de transacción" />
               <asp:BoundField DataField="Descripción de la transacción" HeaderText="Descripción de la transacción" SortExpression="Descripción de la transacción" />
               <asp:BoundField DataField="Fecha de la transacción" HeaderText="Fecha de la transacción" ReadOnly="True" SortExpression="Fecha de la transacción" />
               <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
           </Columns>
           <EditRowStyle BackColor="#2461BF" />
           <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
           <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
           <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
           <RowStyle BackColor="#EFF3FB" />
           <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
           <SortedAscendingCellStyle BackColor="#F5F7FB" />
           <SortedAscendingHeaderStyle BackColor="#6D95E1" />
           <SortedDescendingCellStyle BackColor="#E9EBEF" />
           <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoProgra3ConnectionString %>" SelectCommand="Filtro_Transacciones" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="Ddfiltro" Name="Tipo" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="TxtnombreU" Name="NombreUsuario" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
		<table class="table table-striped" id="budgetItems">
						<tbody>
				<!-- budget items will be dynamically inserted here -->
			</tbody>
			<tfoot>
				<tr>
                    <!-- Total $$$ will be displayed below -->
					<td colspan="6">Total: <span id="total"></span></td>
				</tr>
			</tfoot>
		</table>
	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/momentjs/2.12.0/moment.min.js"></script>
	<script type="text/javascript" src="JS/Inicio.js"></script>
    

</asp:Content>
