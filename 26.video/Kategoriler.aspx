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
        .auto-style7 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style8 {
            font-weight: bold;
            font-size: large;
            margin-left: 0px;
        }
        .auto-style9 {
            width: 35px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style5">
        <strong>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style9">
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style8" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                    </td>
                    <td class="auto-style6">KATEGORİ LİSTESİ</td>
                </tr>
            </table>
        </strong>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="388px" Height="177px">
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
        <asp:Panel ID="Panel3" runat="server" CssClass="auto-style5">
            <strong>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style9">
                            <asp:Button ID="Button3" runat="server" CssClass="auto-style7" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                        </td>
                        <td>
                            <asp:Button ID="Button4" runat="server" CssClass="auto-style8" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                        </td>
                        <td class="auto-style6">KATEGORİ EKLEME</td>
                    </tr>
                </table>
            </strong>
        </asp:Panel>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>KATEGORİ AD:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ İKON:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button5" runat="server" Text="Ekle" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
