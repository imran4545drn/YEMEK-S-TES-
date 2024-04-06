<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Kategoriler.aspx.cs" Inherits="Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            color: #000000;
            background-color: #999999;
        }
    .auto-style6 {
        text-align: right;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style5">
        <strong>KATEGORİLER LİSTESİ</strong></asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="442px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <asp:Image ID="Image2" runat="server" Height="50px" ImageUrl="~/ikonlar/delete.png" Width="50px" />
                        </td>
                        <td class="auto-style6">
                            <asp:Image ID="Image3" runat="server" Height="50px" ImageUrl="~/ikonlar/yenile.png" Width="50px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
</asp:Content>

