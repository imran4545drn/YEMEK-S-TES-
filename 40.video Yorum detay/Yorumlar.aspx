<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yorumlar.aspx.cs" Inherits="Yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
       
        .commentSection {
            color: #000;
            background-color: #999;
        }
        .buttonWidth {
            width: 35px;
        }
        .boldLargeText {
            font-weight: bold;
            font-size: large;
        }
        .alignRight {
            text-align: right;
        }
        .auto-style5 {
            text-align: right;
            width: 367px;
        }
        .auto-style6 {
            text-align: right;
            width: 384px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    <asp:Panel ID="Panel1" runat="server" CssClass="commentSection">
        <table>
            <tr>
                <td class="buttonWidth">
                    <asp:Button ID="btnAddComment" runat="server" CssClass="boldLargeText" Height="30px" Text="+" Width="30px"   />
                </td>
                <td>
                    <asp:Button ID="btnRemoveComment" runat="server" CssClass="boldLargeText" Height="30px" Text="-" Width="30px"  />
                </td>
                <td class="auto-style5">ONAYLANAN YORUMLAR LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>

   
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="dataList1" runat="server" Width="388px" Height="177px">
            <ItemTemplate>
                <div class="commentContainer">
                    <asp:Label ID="lblName0" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    <div class="alignRight">
                        <asp:Image ID="imgDelete0" runat="server" Height="50px" ImageUrl="~/ikonlar/delete.png" Width="50px" />
                        <asp:Image ID="imgRefresh0" runat="server" Height="50px" ImageUrl="~/ikonlar/yenile.png" Width="50px" />
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="commentSection">
    <table>
        <tr>
            <td class="buttonWidth">
                <asp:Button ID="Button1" runat="server" CssClass="boldLargeText" Height="30px" Text="+" Width="30px" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" CssClass="boldLargeText" Height="30px" Text="-" Width="30px" />
            </td>
            <td class="auto-style6">&nbsp;ONAYSIZ YORUMLAR LİSTESİ</td>
        </tr>
    </table>
</asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="dataList2" runat="server" Width="388px" Height="177px">
            <ItemTemplate>
                <div class="commentContainer">
                    <asp:Label ID="lblName" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    <div class="alignRight">
                        <asp:Image ID="imgDelete" runat="server" Height="50px" ImageUrl="~/ikonlar/delete.png" Width="50px" />
                        <asp:Image ID="imgRefresh" runat="server" Height="50px" ImageUrl="~/ikonlar/yenile.png" Width="50px" />
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
</asp:Content>
