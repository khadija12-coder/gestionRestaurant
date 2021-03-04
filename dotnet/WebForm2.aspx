<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="dotnet.WebForm2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
    <asp:Label ID="Label1" runat="server" Text="ID" Font-Bold="True"></asp:Label>


    <br />
    <asp:TextBox ID="TextBox1" runat="server" Width="323px" Height="26px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Nom Restaurant" Font-Bold="True"></asp:Label>


    <br />
    <asp:TextBox ID="TextBox2" runat="server" Width="323px" Height="26px"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Adresse" Font-Bold="True"></asp:Label>


    <br />
    <asp:TextBox ID="TextBox3" runat="server" Width="323px" Height="26px"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Gmail" Font-Bold="True"></asp:Label>


    <br />
    <asp:TextBox ID="TextBox4" runat="server" Width="323px" Height="26px"></asp:TextBox>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Telephone" Font-Bold="True"></asp:Label>


    <br />
    <asp:TextBox ID="TextBox5" runat="server" Width="323px" Height="26px"></asp:TextBox>
        <br />
    <br />

         <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" DataKeyNames="code" Height="50px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="767px" align="center"  border="3" Font-Bold="True" Font-Italic="True" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None"  >
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" BackColor="#FF5050" BorderStyle="Double" Height="41px" Text="Supprimer" Width="120px" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" BackColor="#FF5050" BorderStyle="Double" Height="41px" Text="Modifier" Width="120px" OnClick="Button3_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Button ID="Button1" runat="server" Text="Ajouter" BackColor="#FF5050" BorderColor="#996633" Height="41px" OnClick="Button1_Click1" Width="120px" />
</div>

</asp:Content>
