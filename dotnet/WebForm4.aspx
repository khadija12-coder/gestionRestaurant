<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="dotnet.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
    <asp:Label ID="Label1" runat="server" Text="ID" Font-Bold="True"></asp:Label>


    <br />
    <asp:TextBox ID="TextBox1" runat="server" Width="323px" Height="26px"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Nom Plat" Font-Bold="True"></asp:Label>


    <br />
    <asp:TextBox ID="TextBox2" runat="server" Width="323px" Height="26px"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Catégorie" Font-Bold="True"></asp:Label>


    <br />
    <asp:TextBox ID="TextBox3" runat="server" Width="323px" Height="26px"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Cuisinier_ID" Font-Bold="True"></asp:Label>


    <br />
    <asp:TextBox ID="TextBox4" runat="server" Width="323px" Height="26px"></asp:TextBox>
    <br />


    <br />
        <br />
    <br />

         <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" DataKeyNames="IdP" Height="50px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="767px" align="center"  border="3" Font-Bold="True" Font-Italic="True" BackColor="LightGoldenrodYellow" BorderColor="Black" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" BorderStyle="Double"  >
             <AlternatingRowStyle BackColor="PaleGoldenrod" />
             <FooterStyle BackColor="Tan" />
             <HeaderStyle BackColor="Tan" Font-Bold="True" />
             <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
             <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
             <SortedAscendingCellStyle BackColor="#FAFAE7" />
             <SortedAscendingHeaderStyle BackColor="#DAC09E" />
             <SortedDescendingCellStyle BackColor="#E1DB9C" />
             <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Ajouter" BackColor="#FF5050" BorderColor="#666699" BorderStyle="Double" Height="41px" Width="120px" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" BackColor="#FF5050" BorderStyle="Double" Height="41px" OnClick="Button4_Click" Text="Supprimer" Width="120px" />
&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;
        <asp:Button ID="Button3" runat="server" BackColor="#FF5050" BorderStyle="Double" Height="41px" Text="Modifier" Width="120px" OnClick="Button3_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</div>
</asp:Content>
