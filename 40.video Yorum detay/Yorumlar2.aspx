<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yorumlar2.aspx.cs" Inherits="Yorumlar2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .panel-style {
            color: #000000;
            background-color: #999999;
        }
        .button-style {
            font-weight: bold;
            font-size: large;
            height: 30px;
            width: 30px;
        }
        .align-right {
            text-align: right;
        }
        .table-width {
            width: 35px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="panel-style">
        <table>
            <tr>
                <td class="table-width">
                    <asp:Button ID="Button1" runat="server" CssClass="button-style" Text="+" OnClick="Button1_Click1" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" CssClass="button-style" Text="-" OnClick="Button2_Click1" />
                </td>
                <td class="align-right">ONAYLI YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="align-right">
                            <asp:Image ID="Image2" runat="server" Height="50px" ImageUrl="~/ikonlar/delete.png" Width="50px" />
                        </td>
                        <td class="align-right">
                            <asp:Image ID="Image3" runat="server" Height="50px" ImageUrl="~/ikonlar/yenile.png" Width="50px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

    <asp:Panel ID="Panel3" runat="server" CssClass="panel-style">
        <table>
            <tr>
                <td class="table-width">
                    <asp:Button ID="Button3" runat="server" CssClass="button-style" Text="+" OnClick="Button3_Click" />
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" CssClass="button-style" Text="-" OnClick="Button4_Click" />
                </td>
                <td class="align-right">ONAYSIZ YORUMLAR</td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="align-right">
                            <asp:Image ID="Image4" runat="server" Height="50px" ImageUrl="~/ikonlar/delete.png" Width="50px" />
                        </td>
                        <td class="align-right">
                            <a href="YorumDetay.aspx?Yemekid=<%# Eval("Yorumid") %>">
                                <asp:Image ID="Image5" runat="server" Height="50px" ImageUrl="~/ikonlar/yenile.png" Width="50px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
