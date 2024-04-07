<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yemekler.aspx.cs" Inherits="Yemekler" %>

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
    .auto-style10 {
        width: 177px;
    }
    .auto-style11 {
        width: 177px;
        text-align: right;
    }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style5">
        <strong>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style9">
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style8" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                    </td>
                    <td class="auto-style6">YEMEK LİSTESİ</td>
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
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <a href="Kategoriler.aspx?Kategoriid=<%#Eval("Kategoriid") %>&islem=sil">

                            <asp:Image ID="Image2" runat="server" Height="50px" ImageUrl="~/ikonlar/delete.png" Width="50px" />
                                </a>
                        </td>
                        <td class="auto-style6">
                           <a href="Kategoriadmindetay.aspx?Kategoriid=<%#Eval("Kategoriid") %>">
    <asp:Image ID="Image3" runat="server" Height="50px" ImageUrl="~/ikonlar/yenile.png" Width="50px" />
</a>
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
                            <asp:Button ID="Button3" runat="server" CssClass="auto-style7" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"  />
                        </td>
                        <td>
                            <asp:Button ID="Button4" runat="server" CssClass="auto-style8" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"  />
                        </td>
                        <td class="auto-style6">YEMEK EKLEME</td>
                    </tr>
                </table>
            </strong>
        </asp:Panel>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">KATEGORİ AD:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">KATEGORİ İKON:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Button ID="Button5" runat="server" Height="30px" Text="Ekle" Width="150px" />
                </td>
                
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>


