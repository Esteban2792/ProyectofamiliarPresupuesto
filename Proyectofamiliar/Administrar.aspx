<%@ Page Title="" Language="C#" MasterPageFile="~/MenuPrincipal.Master" AutoEventWireup="true" CodeBehind="Administrar.aspx.cs" Inherits="Proyectofamiliar.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link rel="stylesheet" href="/CSS/Inicio.css" type="text/css" media="screen" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    	<h2>Visualizar tabla de Usuarios:</h2>
	<div>
    <p>
            <!-- filter items by category -->
			<asp:DropDownList ID="Ddfiltro" class="form-control" runat="server" AutoPostBack="True">
                <asp:ListItem>Activo</asp:ListItem>
                <asp:ListItem>Inactivo</asp:ListItem>
            </asp:DropDownList>			
		</p>

		<!-- budget items table -->
	   <asp:GridView ID="Tabla1" class="table table-striped" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" DataKeyNames="Codigo de usuario">
           <AlternatingRowStyle BackColor="White" />
           <Columns>
               <asp:BoundField DataField="Codigo de usuario" HeaderText="Codigo de usuario" SortExpression="Codigo de usuario" InsertVisible="False" ReadOnly="True" />
               <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
               <asp:BoundField DataField="Correo electrónico" HeaderText="Correo electrónico" SortExpression="Correo electrónico" />
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
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoProgra3ConnectionString3 %>" SelectCommand="Filtrar_Usuarios" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="Ddfiltro" Name="Estado" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
		<table class="table table-striped" id="budgetItems">
						<tbody>
				<!-- budget items will be dynamically inserted here -->
			</tbody>
			<tfoot>
				<tr>
                    <!-- Total $$$ will be displayed below -->
					<td colspan="6">&nbsp;</td>
				</tr>
			</tfoot>
		</table>
	</div>

    	<h2>Visualizar tabla de gastos e ingresos:</h2>
	<div>
    <p>
            <!-- filter items by category -->
			<asp:DropDownList ID="Dingasfil" class="form-control" runat="server" AutoPostBack="True">
                <asp:ListItem>Gasto</asp:ListItem>
                <asp:ListItem>Ingreso</asp:ListItem>
            </asp:DropDownList>			
		</p>

		<!-- budget items table -->
	   <asp:GridView ID="GGastoIng" class="table table-striped" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" DataKeyNames="Codigo de la Transacción">
           <AlternatingRowStyle BackColor="White" />
           <Columns>
               <asp:BoundField DataField="Codigo de la Transacción" HeaderText="Codigo de la Transacción" SortExpression="Codigo de la Transacción" InsertVisible="False" ReadOnly="True" />
               <asp:BoundField DataField="Nombre del Familiar" HeaderText="Nombre del Familiar" SortExpression="Nombre del Familiar" />
               <asp:BoundField DataField="Tipo de transacción" HeaderText="Tipo de transacción" SortExpression="Tipo de transacción" />
               <asp:BoundField DataField="Descripción de la transacción" HeaderText="Descripción de la transacción" SortExpression="Descripción de la transacción" />
               <asp:BoundField DataField="Fecha de la transacción" HeaderText="Fecha de la transacción" SortExpression="Fecha de la transacción" ReadOnly="True" />
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
		<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoProgra3ConnectionString %>" SelectCommand="Filtro_TransaccionesAdm" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="Dingasfil" Name="Tipo" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
		<table class="table table-striped" id="budgetItems">
						<tbody>
				<!-- budget items will be dynamically inserted here -->
			</tbody>
			<tfoot>
				<tr>
                    <!-- Total $$$ will be displayed below -->
					<td colspan="6">&nbsp;</td>
				</tr>
			</tfoot>
		</table>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/momentjs/2.12.0/moment.min.js"></script>
	<script type="text/javascript" src="JS/Inicio.js"></script>
    
</asp:Content>
