<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:DataList ID="DataList2" runat="server" style="margin-right: 130px">
    <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label3" runat="server" style="font-weight: 700; font-size: x-large; text-align: center" Text='<%# Eval("GununYemegiad") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Malzemeler:</strong>
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("Gununyemegimalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><strong>Tarif:</strong>&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Gununyemegitarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Image ID="Image1" runat="server" Height="146px" Width="287px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <table class="auto-style1">
                        <tr>
                            <td><strong>Puan:</strong>&nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text='<%# Eval("Gununyemegipuan") %>'></asp:Label>
                            </td>
                            <td style="text-align: right">&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td><strong>Tarih:&nbsp;&nbsp; </strong>
                    <asp:Label ID="Label7" runat="server" style="font-style: italic" Text='<%# Eval("Gununyemegitarih") %>'></asp:Label>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

