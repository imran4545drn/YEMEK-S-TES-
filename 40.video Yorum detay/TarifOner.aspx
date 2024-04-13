<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="TarifOner.aspx.cs" Inherits="TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style7 {
        text-align: right;
        font-weight: bold;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">Tarif Ad:</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Malzemeler:</td>
        <td style="margin-left: 40px">
            <asp:TextBox ID="TextBox2" runat="server" Height="80px" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Yapılış:</td>
        <td style="margin-left: 40px">
            <asp:TextBox ID="TextBox3" runat="server" Height="150px" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Resim.</td>
        <td style="margin-left: 40px">
            <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Tarif Öneren:</td>
        <td style="margin-left: 40px">
            <asp:TextBox ID="TextBox5" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Mail Adresi:</td>
        <td style="margin-left: 40px">
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Email" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="margin-left: 40px">
            <asp:Button ID="Button1" runat="server" BackColor="Lime" Height="40px" style="font-weight: 700; font-style: italic; margin-left: 44px" Text="Tarif Öner" Width="167px" OnClick="Button1_Click" />
        </td>
    </tr>
</table>
</asp:Content>

